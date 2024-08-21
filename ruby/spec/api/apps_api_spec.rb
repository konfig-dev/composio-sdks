=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::AppsApi
describe 'AppsApi' do
  before do
    # run before each test
    @api_instance = Composio::AppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppsApi' do
    it 'should create an instance of AppsApi' do
      expect(@api_instance).to be_instance_of(Composio::AppsApi)
    end
  end

  # unit tests for list
  # List All Apps
  # Retrieves a list of all available apps in the Composio platform.  This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app&#39;s key, name, description, logo, categories, and unique identifier.  Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.
  # @param [Hash] opts the optional parameters
  # @return [AppsGetAllAppsResponse]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
