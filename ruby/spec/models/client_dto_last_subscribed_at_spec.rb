=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ClientDTOLastSubscribedAt
describe Composio::ClientDTOLastSubscribedAt do
  describe '.openapi_one_of' do
    it 'lists the items referenced in the oneOf array' do
      expect(described_class.openapi_one_of).to_not be_empty
    end
  end

  describe '.build' do
    it 'returns the correct model' do
    end
  end
end
