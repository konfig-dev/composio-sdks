=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ConnectionParamsHeaders
describe Composio::ConnectionParamsHeaders do
  let(:instance) { Composio::ConnectionParamsHeaders.new }

  describe 'test an instance of ConnectionParamsHeaders' do
    it 'should create an instance of ConnectionParamsHeaders' do
      expect(instance).to be_instance_of(Composio::ConnectionParamsHeaders)
    end
  end
  describe 'test attribute "authorization"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "x_request_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
