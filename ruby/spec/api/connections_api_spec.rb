=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::ConnectionsApi
describe 'ConnectionsApi' do
  before do
    # run before each test
    @api_instance = Composio::ConnectionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectionsApi' do
    it 'should create an instance of ConnectionsApi' do
      expect(@api_instance).to be_instance_of(Composio::ConnectionsApi)
    end
  end

  # unit tests for delete
  # Delete connection
  # Delete a connection
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [DeleteRowAPIDTO]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable
  # Disable connection
  # Disable a connection
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ToggleConnectedAccountResponseDTO]
  describe 'disable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable
  # Enable connection
  # Enable a connection
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ToggleConnectedAccountResponseDTO]
  describe 'enable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get connection
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAccountResponseDTO]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_info
  # Get connection info
  # Get connection info
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [GetConnectionInfoResponseDTO]
  describe 'get_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for initiate
  # Initiate connection
  # @param [Hash] opts the optional parameters
  # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
  # @return [InitiateConnectionResponse]
  describe 'initiate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get connections
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :page 
  # @option opts [Float] :page_size 
  # @option opts [String] :app_names 
  # @option opts [String] :integration_id 
  # @option opts [String] :connection_id 
  # @option opts [String] :user_uuid 
  # @option opts [Boolean] :show_active_only 
  # @option opts [String] :status 
  # @option opts [Boolean] :show_disabled 
  # @option opts [Array<String>] :labels 
  # @return [GetConnectionsResponseDto]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_connection_data
  # Update connection data
  # Update connection data
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateConnectionLabelsPayloadDto] :update_connection_labels_payload_dto UpdateConnectionLabelsPayloadDto
  # @return [Object]
  describe 'update_connection_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
