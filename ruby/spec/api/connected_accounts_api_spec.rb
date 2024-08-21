=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::ConnectedAccountsApi
describe 'ConnectedAccountsApi' do
  before do
    # run before each test
    @api_instance = Composio::ConnectedAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectedAccountsApi' do
    it 'should create an instance of ConnectedAccountsApi' do
      expect(@api_instance).to be_instance_of(Composio::ConnectedAccountsApi)
    end
  end

  # unit tests for create_connection
  # Connect an Account
  # Connect an account  This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.  Use this endpoint to initiate the process of connecting an external app for your end user.
  # @param [Hash] opts the optional parameters
  # @option opts [ConnectedAccountsCreateConnectionRequest] :connected_accounts_create_connection_request 
  # @return [ConnectedAccountsCreateConnectionResponse]
  describe 'create_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_details
  # Get a Connected Account
  # Retrieves details of a specific account connected to the Composio platform by providing its connected account ID.  The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.
  # @param connected_account_id The unique identifier of the connection.
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAccountsGetAccountDetailsResponse]
  describe 'get_account_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List All Connected Accounts
  # Retrieves a list of all connected accounts in the Composio platform.   It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.  Use this endpoint to manage and monitor all active connections.  
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number to fetch
  # @option opts [Integer] :page_size Page size to assume
  # @option opts [String] :integration_id Filter by using specific Integration
  # @return [ConnectedAccountsListAllResponse]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_connection
  # Delete a Connected Account
  # Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation. Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.
  # @param connected_account_id The unique identifier of the connection.
  # @param [Hash] opts the optional parameters
  # @return [ConnectedAccountsRemoveConnectionResponse]
  describe 'remove_connection test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
