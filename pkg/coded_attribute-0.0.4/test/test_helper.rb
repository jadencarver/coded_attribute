require 'rubygems'
require 'active_record'
require 'test/unit'

require File.dirname(__FILE__) + '/../init.rb'

ActiveRecord::Base.establish_connection( :adapter => "sqlite3", :database => ":memory:" )

ActiveRecord::Schema.define(:version => 1) do
  create_table :coded_model do |t|
    t.integer :color
  end
end

class CodedModel < ActiveRecord::Base
  coded_attribute :color, [ :red, :orange, :yellow, :green, :blue, :indigo, :violet ]
end

