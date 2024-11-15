=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ModelIn
describe Composio::ModelIn do
  let(:instance) { Composio::ModelIn.new }

  describe 'test an instance of ModelIn' do
    it 'should create an instance of ModelIn' do
      expect(instance).to be_instance_of(Composio::ModelIn)
    end
  end
end
