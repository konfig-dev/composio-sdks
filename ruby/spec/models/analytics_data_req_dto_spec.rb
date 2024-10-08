=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::AnalyticsDataReqDTO
describe Composio::AnalyticsDataReqDTO do
  let(:instance) { Composio::AnalyticsDataReqDTO.new }

  describe 'test an instance of AnalyticsDataReqDTO' do
    it 'should create an instance of AnalyticsDataReqDTO' do
      expect(instance).to be_instance_of(Composio::AnalyticsDataReqDTO)
    end
  end
  describe 'test attribute "last_time_period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DAY", "WEEK", "MONTH", "SIX_MONTH", "YEAR", "FIVE_YEAR"])
      # validator.allowable_values.each do |value|
      #   expect { instance.last_time_period = value }.not_to raise_error
      # end
    end
  end

end
