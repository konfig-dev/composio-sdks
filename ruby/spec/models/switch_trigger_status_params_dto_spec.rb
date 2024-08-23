=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::SwitchTriggerStatusParamsDTO
describe Composio::SwitchTriggerStatusParamsDTO do
  let(:instance) { Composio::SwitchTriggerStatusParamsDTO.new }

  describe 'test an instance of SwitchTriggerStatusParamsDTO' do
    it 'should create an instance of SwitchTriggerStatusParamsDTO' do
      expect(instance).to be_instance_of(Composio::SwitchTriggerStatusParamsDTO)
    end
  end
  describe 'test attribute "trigger_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
