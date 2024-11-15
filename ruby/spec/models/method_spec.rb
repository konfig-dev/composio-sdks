=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::Method
describe Composio::Method do
  let(:instance) { Composio::Method.new }

  describe 'test an instance of Method' do
    it 'should create an instance of Method' do
      expect(instance).to be_instance_of(Composio::Method)
    end
  end
end
