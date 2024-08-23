=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::APIKeysApi
describe 'APIKeysApi' do
  before do
    # run before each test
    @api_instance = Composio::APIKeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of APIKeysApi' do
    it 'should create an instance of APIKeysApi' do
      expect(@api_instance).to be_instance_of(Composio::APIKeysApi)
    end
  end

  # unit tests for generate
  # Generate api key
  # @param generate_api_key_req_dto GenerateAPIKeyReqDTO
  # @param [Hash] opts the optional parameters
  # @return [APIKeyResDTO]
  describe 'generate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List api keys
  # @param [Hash] opts the optional parameters
  # @return [Array<APIKeyResDTO>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove
  # Delete api key
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
