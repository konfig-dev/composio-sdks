=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::AuthApi
describe 'AuthApi' do
  before do
    # run before each test
    @api_instance = Composio::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@api_instance).to be_instance_of(Composio::AuthApi)
    end
  end

  # unit tests for identify_client_operation
  # Identify client
  # @param [Hash] opts the optional parameters
  # @option opts [IdentifyClientReqDTO] :identify_client_req_dto IdentifyClientReqDTO
  # @return [IdentifyClientResDTO]
  describe 'identify_client_operation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
