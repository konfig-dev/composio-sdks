=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::EnableTriggerParamsDTO
describe Composio::EnableTriggerParamsDTO do
  let(:instance) { Composio::EnableTriggerParamsDTO.new }

  describe 'test an instance of EnableTriggerParamsDTO' do
    it 'should create an instance of EnableTriggerParamsDTO' do
      expect(instance).to be_instance_of(Composio::EnableTriggerParamsDTO)
    end
  end
  describe 'test attribute "connected_account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trigger_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
