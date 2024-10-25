=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::AdminApi
describe 'AdminApi' do
  before do
    # run before each test
    @api_instance = Composio::AdminApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdminApi' do
    it 'should create an instance of AdminApi' do
      expect(@api_instance).to be_instance_of(Composio::AdminApi)
    end
  end

  # unit tests for get_sentry_dns
  # Jssentry dns
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_sentry_dns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
