=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::GetLogsDtoType
describe Composio::GetLogsDtoType do
  let(:instance) { Composio::GetLogsDtoType.new }

  describe 'test an instance of GetLogsDtoType' do
    it 'should create an instance of GetLogsDtoType' do
      expect(instance).to be_instance_of(Composio::GetLogsDtoType)
    end
  end
end
