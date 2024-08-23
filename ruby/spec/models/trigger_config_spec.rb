=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::TriggerConfig
describe Composio::TriggerConfig do
  let(:instance) { Composio::TriggerConfig.new }

  describe 'test an instance of TriggerConfig' do
    it 'should create an instance of TriggerConfig' do
      expect(instance).to be_instance_of(Composio::TriggerConfig)
    end
  end
  describe 'test attribute "repo"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "owner"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
