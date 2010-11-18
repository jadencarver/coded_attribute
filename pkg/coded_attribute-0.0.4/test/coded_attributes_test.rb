require 'test_helper'

class CodedAttributesTest < ActiveSupport::TestCase

  test "Coded Method Assignment" do
    c = CodedModel.new
    c.color = :red
    assert c.color == :red
  end

end
