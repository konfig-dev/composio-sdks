=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::CLIApi
describe 'CLIApi' do
  before do
    # run before each test
    @api_instance = Composio::CLIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CLIApi' do
    it 'should create an instance of CLIApi' do
      expect(@api_instance).to be_instance_of(Composio::CLIApi)
    end
  end

  # unit tests for exchange_code
  # Handle cli code exchange
  # @param [Hash] opts the optional parameters
  # @return [GenerateCLISessionResDTO]
  describe 'exchange_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_code
  # Get cli code
  # @param key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code 
  # @return [GetCLISessionResDTO]
  describe 'get_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_code
  # Handle cli code verification
  # @param key 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :code 
  # @return [VerifyCLICodeResDTO]
  describe 'verify_code test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
