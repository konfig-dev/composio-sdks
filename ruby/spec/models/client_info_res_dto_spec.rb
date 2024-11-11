=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ClientInfoResDTO
describe Composio::ClientInfoResDTO do
  let(:instance) { Composio::ClientInfoResDTO.new }

  describe 'test an instance of ClientInfoResDTO' do
    it 'should create an instance of ClientInfoResDTO' do
      expect(instance).to be_instance_of(Composio::ClientInfoResDTO)
    end
  end
  describe 'test attribute "client"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "api_key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
