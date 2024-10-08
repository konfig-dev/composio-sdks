=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::Role
describe Composio::Role do
  let(:instance) { Composio::Role.new }

  describe 'test an instance of Role' do
    it 'should create an instance of Role' do
      expect(instance).to be_instance_of(Composio::Role)
    end
  end
end
