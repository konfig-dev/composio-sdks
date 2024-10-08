=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::TConnectionCountDTO
describe Composio::TConnectionCountDTO do
  let(:instance) { Composio::TConnectionCountDTO.new }

  describe 'test an instance of TConnectionCountDTO' do
    it 'should create an instance of TConnectionCountDTO' do
      expect(instance).to be_instance_of(Composio::TConnectionCountDTO)
    end
  end
  describe 'test attribute "client_unique_user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
