=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::IntegrationsApi
describe 'IntegrationsApi' do
  before do
    # run before each test
    @api_instance = Composio::IntegrationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationsApi' do
    it 'should create an instance of IntegrationsApi' do
      expect(@api_instance).to be_instance_of(Composio::IntegrationsApi)
    end
  end

  # unit tests for create
  # Create a new integration
  # This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.
  # @param [Hash] opts the optional parameters
  # @option opts [IntegrationsCreateNewIntegrationRequest] :integrations_create_new_integration_request 
  # @return [IntegrationsCreateNewIntegrationResponse]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get an Integration
  # Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector&#39;s name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.  Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection.   You will also get parameters that are required to be captured from end user to connect an account using this connector.  ex. API Key or subdomain URL.   If the end-user selects this flow, collect the parameters and connect an account using it. 
  # @param integration_id The unique identifier of the integration.
  # @param [Hash] opts the optional parameters
  # @return [IntegrationsGetIntegrationDetailsResponse]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List All Integrations
  # Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector&#39;s ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.  This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number to fetch
  # @option opts [Integer] :page_size Page Size to assume
  # @return [IntegrationsListAllResponse]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # Update an Integration
  # Updates the settings of a specific integration in the Composio platform.  This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.  Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.
  # @param integration_id The unique identifier of the integration.
  # @param [Hash] opts the optional parameters
  # @option opts [IntegrationsUpdateIntegrationSettingsRequest] :integrations_update_integration_settings_request 
  # @return [IntegrationsUpdateIntegrationSettingsResponse]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
