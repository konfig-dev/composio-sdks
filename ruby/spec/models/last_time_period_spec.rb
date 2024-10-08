=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::LastTimePeriod
describe Composio::LastTimePeriod do
  let(:instance) { Composio::LastTimePeriod.new }

  describe 'test an instance of LastTimePeriod' do
    it 'should create an instance of LastTimePeriod' do
      expect(instance).to be_instance_of(Composio::LastTimePeriod)
    end
  end
end
