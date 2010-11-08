# CodedAttributes

module CodedAttribute

  def coded_attribute(*attributes_and_codes)

    if attributes_and_codes.last.is_a? Hash
      codes = attributes_and_codes.pop
    elsif attributes_and_codes.last.is_a? Array
      codes = attributes_and_codes.pop.inject({}) { |h, v| h.merge! h.keys.count => v }
    end

    attributes = attributes_and_codes.inject({}) do |hash, attribute|
      hash.merge! attribute.is_a? Hash ? attribute :  { attribute => "#{attribute}_code" }
    end

    attributes.each_pair do |method, attribute|
      class_variable_set :"@@#{method}_codes", codes
      cattr_reader :"#{method}_codes"

      define_method :"#{method}" do
        self.class.class_variable_get("@@#{method}_codes")[read_attribute(attribute)]
      end

      define_method :"#{method}=" do |value|
        write_attribute(attribute, self.class.class_variable_get("@@#{method}_codes").key(value.to_sym))
      end
    end # attributes.each_pair
  end # def coded_attribute

  def coded_attribute_set(method, *attributes_and_codes)
  end # def coded_attribute_set

end # module CodedAttributes
