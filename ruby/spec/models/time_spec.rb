=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::Time
describe Composio::Time do
  let(:instance) { Composio::Time.new }

  describe 'test an instance of Time' do
    it 'should create an instance of Time' do
      expect(instance).to be_instance_of(Composio::Time)
    end
  end
end
