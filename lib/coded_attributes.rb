# CodedAttributes

module CodedAttributes
  VERSION = 0.1

  def coded_attribute(method, *attribute_or_codes)
    if [String,Symbol].include?(attribute_or_codes.first.class)
      attribute = attribute_or_codes.shift
    else
      attribute = :"#{method}_code"
    end

    if attribute_or_codes.first.class == Hash
      codes = attribute_or_codes.shift
      raise ArgumentError, "Too many arguments" unless attribute_or_codes.blank?
    elsif attribute_or_codes.first.class == Array
      codes = attribute_or_codes.shift.inject({}) { |h, v| h.merge! h.keys.count => v }
      raise ArgumentError, "Too many arguments" unless attribute_or_codes.blank?
    else
      codes = attribute_or_codes.inject({}) { |h, v| h.merge! h.keys.count => v }
    end

    class_variable_set :"@@#{method}_codes", codes
    cattr_reader :"#{method}_codes"

    define_method :"#{method}" do
      self.class.class_variable_get("@@#{method}_codes")[read_attribute(attribute)]
    end

    define_method :"#{method}=" do |value|
      write_attribute(attribute, self.class.class_variable_get("@@#{method}_codes").key(value.to_sym))
    end
  end # def coded
end # module CodedAttributes
