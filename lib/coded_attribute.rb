# CodedAttributes

module CodedAttribute
  def coded_attribute_set(method, *attributes_and_codes)
  end

  def coded_attribute(method, *attributes_and_codes)

    if attributes_and_codes.last.class == Hash
      codes = attributes_and_codes.pop
    elsif attributes_and_codes.last.class == Array
      if columns_hash[method].sql_type =~ /^(ENUM|SET)\(.*\)$/
        codes = attributes_and_codes.pop.inject({}) { |h, v| h.merge! v.to_s => v.to_sym }
      else
        codes = attributes_and_codes.pop.inject({}) { |h, v| h.merge! h.keys.count => v }
      end
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
