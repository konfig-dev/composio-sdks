=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ConnectedAccountsCreateConnectionRequest
describe Composio::ConnectedAccountsCreateConnectionRequest do
  let(:instance) { Composio::ConnectedAccountsCreateConnectionRequest.new }

  describe 'test an instance of ConnectedAccountsCreateConnectionRequest' do
    it 'should create an instance of ConnectedAccountsCreateConnectionRequest' do
      expect(instance).to be_instance_of(Composio::ConnectedAccountsCreateConnectionRequest)
    end
  end
  describe 'test attribute "integration_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "redirect_uri"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
