=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::EntityQueryReqDTO
describe Composio::EntityQueryReqDTO do
  let(:instance) { Composio::EntityQueryReqDTO.new }

  describe 'test an instance of EntityQueryReqDTO' do
    it 'should create an instance of EntityQueryReqDTO' do
      expect(instance).to be_instance_of(Composio::EntityQueryReqDTO)
    end
  end
  describe 'test attribute "query"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
