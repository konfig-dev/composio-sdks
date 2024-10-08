=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::State
describe Composio::State do
  let(:instance) { Composio::State.new }

  describe 'test an instance of State' do
    it 'should create an instance of State' do
      expect(instance).to be_instance_of(Composio::State)
    end
  end
end
