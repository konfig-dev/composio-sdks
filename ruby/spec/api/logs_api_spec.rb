=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::LogsApi
describe 'LogsApi' do
  before do
    # run before each test
    @api_instance = Composio::LogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsApi' do
    it 'should create an instance of LogsApi' do
      expect(@api_instance).to be_instance_of(Composio::LogsApi)
    end
  end

  # unit tests for add_new_logs
  # Post logs
  # Add new logs
  # @param [Hash] opts the optional parameters
  # @option opts [IngestDataDTO] :ingest_data_dto IngestDataDTO
  # @return [IngestDataResponseDTO]
  describe 'add_new_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get logs
  # List logs
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type 
  # @option opts [String] :time 
  # @option opts [String] :status 
  # @option opts [String] :search 
  # @option opts [String] :integration_id 
  # @option opts [String] :entity_id 
  # @option opts [Float] :limit 
  # @option opts [String] :cursor 
  # @option opts [String] :logs_type 
  # @option opts [String] :session_id 
  # @return [LogsResDTO]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
