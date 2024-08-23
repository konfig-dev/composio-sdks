=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::GetConnectionsResult
describe Composio::GetConnectionsResult do
  let(:instance) { Composio::GetConnectionsResult.new }

  describe 'test an instance of GetConnectionsResult' do
    it 'should create an instance of GetConnectionsResult' do
      expect(instance).to be_instance_of(Composio::GetConnectionsResult)
    end
  end
  describe 'test attribute "connections"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "page_info"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
