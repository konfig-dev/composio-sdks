=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::IntegrationsUpdateIntegrationSettingsRequest
describe Composio::IntegrationsUpdateIntegrationSettingsRequest do
  let(:instance) { Composio::IntegrationsUpdateIntegrationSettingsRequest.new }

  describe 'test an instance of IntegrationsUpdateIntegrationSettingsRequest' do
    it 'should create an instance of IntegrationsUpdateIntegrationSettingsRequest' do
      expect(instance).to be_instance_of(Composio::IntegrationsUpdateIntegrationSettingsRequest)
    end
  end
  describe 'test attribute "enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
