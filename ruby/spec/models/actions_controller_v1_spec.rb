=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ActionsControllerV1
describe Composio::ActionsControllerV1 do
  let(:instance) { Composio::ActionsControllerV1.new }

  describe 'test an instance of ActionsControllerV1' do
    it 'should create an instance of ActionsControllerV1' do
      expect(instance).to be_instance_of(Composio::ActionsControllerV1)
    end
  end
  describe 'test attribute "get_action"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
