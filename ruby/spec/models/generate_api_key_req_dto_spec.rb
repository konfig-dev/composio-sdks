=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::GenerateAPIKeyReqDTO
describe Composio::GenerateAPIKeyReqDTO do
  let(:instance) { Composio::GenerateAPIKeyReqDTO.new }

  describe 'test an instance of GenerateAPIKeyReqDTO' do
    it 'should create an instance of GenerateAPIKeyReqDTO' do
      expect(instance).to be_instance_of(Composio::GenerateAPIKeyReqDTO)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
