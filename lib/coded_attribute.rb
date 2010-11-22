# CodedAttributes

module CodedAttribute

  def coded_attributes
    @@coded_attributes ||= {}
  end

  def coded_attributes=(value)
    @@coded_attributes = value
  end

  def coded_attribute(*attributes_and_codes)
    if attributes_and_codes.last.is_a?(Hash)
      codes = attributes_and_codes.pop
    elsif attributes_and_codes.last.is_a?(Array)
      codes = attributes_and_codes.pop.inject({}) { |h, v| h.merge! h.keys.count => v }
    end

    attributes = attributes_and_codes.inject({}) do |attributes, attribute|
      attributes.merge! attribute.is_a?(Hash) ? attribute :  { attribute => "#{attribute}_code" }
    end

    attributes.each_pair do |method, attribute|
      self.coded_attributes.merge!( method.to_sym => codes )
      define_method :"#{method}" do
        self.class.coded_attributes[method][read_attribute(attribute)]
      end
      define_method :"#{method}=" do |value|
        write_attribute(attribute, self.class.coded_attributes[method].index(value.to_sym))
      end
    end
  end

end
