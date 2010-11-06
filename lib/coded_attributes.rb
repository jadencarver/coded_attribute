# CodedAttributes

module CodedAttributes
  def coded_attribute(method, *attribute_or_values)
    if attribute_or_values.class == Array && attribute_or_values.count == 2 && attribute_or_values.last.class == Hash
      attribute = attribute_or_values.first.to_sym
      values = attribute_or_values.last
    elsif attribute_or_values.class == Array && attribute_or_values.count == 2 && attribute_or_values.last.class == Array
      attribute = attribute_or_values.first.to_sym
      values = attribute_or_values.last.inject({}) { |h, v| h.merge! h.keys.count => v }
    elsif attribute_or_values.class == Hash
      attribute = :"#{method}_code"
      values = attribute_or_values
    elsif attribute_or_values.class == Array
      attribute = :"#{method}_code"
      values = attribute_or_values.inject({}) { |h, v| h.merge! h.keys.count => v }
    else
      raise ArgumentError
    end

    class_eval do
      instance_variable_set("@#{method}_values", values)
      define_method :"#{method}" do
        instance_variable_get("@#{method}_values")[read_attribute(attribute)]
      end
      define_method :"#{method}=" do |value|
        write_attribute(attribute, instance_variable_get("@#{method}_values").index(value.to_sym))
      end
      define_method :"#{method}_values" do
        instance_variable_get("@#{method}_values")
      end
    end # class_eval
  end # def coded
end # module CodedAttributes
