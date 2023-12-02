require 'json'

class TestDataGenerator
  attr_accessor :data

  def initialize
    @data = {}
  end

  def user(&block)
    @data[:user] = {}
    instance_eval(&block)
    @data
  end

  def name(value)
    @data[:user][:name] = value
  end

  def age(value)
    @data[:user][:age] = value
  end

  def address(&block)
    @data[:user][:address] = {}
    instance_eval(&block)
  end

  def street(value)
    @data[:user][:address][:street] = value
  end

  def city(value)
    @data[:user][:address][:city] = value
  end

  def generate(&block)
    instance_eval(&block)
    @data.to_json
  end
end

generator = TestDataGenerator.new

json_data = generator.generate do
  user do
    name 'John Doe'
    age 30
    address do
      street '123 Main Street'
      city 'Anytown'
    end
  end
end

puts json_data
