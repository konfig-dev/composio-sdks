=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::AppsGetAllAppsResponse
describe Composio::AppsGetAllAppsResponse do
  let(:instance) { Composio::AppsGetAllAppsResponse.new }

  describe 'test an instance of AppsGetAllAppsResponse' do
    it 'should create an instance of AppsGetAllAppsResponse' do
      expect(instance).to be_instance_of(Composio::AppsGetAllAppsResponse)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
