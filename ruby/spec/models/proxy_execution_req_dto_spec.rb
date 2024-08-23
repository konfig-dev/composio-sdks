=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ProxyExecutionReqDTO
describe Composio::ProxyExecutionReqDTO do
  let(:instance) { Composio::ProxyExecutionReqDTO.new }

  describe 'test an instance of ProxyExecutionReqDTO' do
    it 'should create an instance of ProxyExecutionReqDTO' do
      expect(instance).to be_instance_of(Composio::ProxyExecutionReqDTO)
    end
  end
  describe 'test attribute "endpoint"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "connected_account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
