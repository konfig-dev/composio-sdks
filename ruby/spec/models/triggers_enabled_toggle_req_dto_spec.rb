=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::TriggersEnabledToggleReqDTO
describe Composio::TriggersEnabledToggleReqDTO do
  let(:instance) { Composio::TriggersEnabledToggleReqDTO.new }

  describe 'test an instance of TriggersEnabledToggleReqDTO' do
    it 'should create an instance of TriggersEnabledToggleReqDTO' do
      expect(instance).to be_instance_of(Composio::TriggersEnabledToggleReqDTO)
    end
  end
  describe 'test attribute "enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
