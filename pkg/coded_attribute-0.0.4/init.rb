require 'coded_attribute'

class ActiveRecord::Base
  cattr_reader :coded_attributes
  @@coded_attributes = {}
  extend CodedAttribute
end
