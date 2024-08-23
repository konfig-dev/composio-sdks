=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::Type
describe Composio::Type do
  let(:instance) { Composio::Type.new }

  describe 'test an instance of Type' do
    it 'should create an instance of Type' do
      expect(instance).to be_instance_of(Composio::Type)
    end
  end
end
