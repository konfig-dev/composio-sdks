=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::AnalyticsApi
describe 'AnalyticsApi' do
  before do
    # run before each test
    @api_instance = Composio::AnalyticsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AnalyticsApi' do
    it 'should create an instance of AnalyticsApi' do
      expect(@api_instance).to be_instance_of(Composio::AnalyticsApi)
    end
  end

  # unit tests for get
  # Get analytics
  # @param [Hash] opts the optional parameters
  # @option opts [String] :last_time_period 
  # @return [AnalyticsDataResDTO]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_top_entities
  # Get top entities
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query 
  # @return [TopEntitiesResDTO]
  describe 'get_top_entities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
