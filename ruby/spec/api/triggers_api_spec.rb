=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::TriggersApi
describe 'TriggersApi' do
  before do
    # run before each test
    @api_instance = Composio::TriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TriggersApi' do
    it 'should create an instance of TriggersApi' do
      expect(@api_instance).to be_instance_of(Composio::TriggersApi)
    end
  end

  # unit tests for delete_trigger_instance
  # Delete trigger
  # Deletes a specified trigger instance.
  # @param trigger_instance_id 
  # @param [Hash] opts the optional parameters
  # @return [DeleteRowAPIDTO]
  describe 'delete_trigger_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_trigger_instance
  # Disable trigger
  # Disables a specified trigger instance.
  # @param trigger_instance_id 
  # @param [Hash] opts the optional parameters
  # @return [TriggerResponseDTO]
  describe 'disable_trigger_instance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable
  # Enable trigger
  # Enables a trigger for a connected account and specific trigger name.
  # @param connected_account_id 
  # @param trigger_name 
  # @param [Hash] opts the optional parameters
  # @option opts [EnableTriggerBodyDTO] :enable_trigger_body_dto EnableTriggerBodyDTO
  # @return [TriggerResponseDTO]
  describe 'enable test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_active_triggers
  # Get active triggers
  # Lists active triggers based on query parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :connected_account_ids 
  # @option opts [String] :integration_ids 
  # @option opts [String] :trigger_ids 
  # @option opts [String] :trigger_names 
  # @option opts [Float] :page 
  # @option opts [Float] :limit 
  # @option opts [Boolean] :show_disabled 
  # @return [ActiveTriggersResDTO]
  describe 'get_active_triggers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_by_id
  # Get trigger
  # Retrieves a specific trigger by its ID.
  # @param trigger_id 
  # @param [Hash] opts the optional parameters
  # @return [GetTriggerResponseDTO]
  describe 'get_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_callback_url
  # Get webhook url
  # Retrieves the universal callback URL set for the client.
  # @param [Hash] opts the optional parameters
  # @return [WebhookURLResponseDTO]
  describe 'get_callback_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_logs_based_on_connection_and_integration_details
  # Get logs
  # Fetches logs based on connection and integration details.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :connection_id 
  # @option opts [String] :integration_id 
  # @option opts [Float] :page 
  # @option opts [Float] :limit 
  # @return [TriggerLogsResDTO]
  describe 'get_logs_based_on_connection_and_integration_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_trigger_info
  # Get trigger info
  # Get Trigger Info
  # @param trigger_name 
  # @param [Hash] opts the optional parameters
  # @return [Array<SingleTriggerResDTO>]
  describe 'get_trigger_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List triggers
  # List triggers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :connected_account_ids 
  # @option opts [String] :trigger_ids 
  # @option opts [Boolean] :show_enabled_only 
  # @return [Array<TriggerResDTO>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_callback_url
  # Set callback url
  # Sets a universal callback URL for the client.
  # @param [Hash] opts the optional parameters
  # @option opts [SetCallbackUrlBodyDTO] :set_callback_url_body_dto SetCallbackUrlBodyDTO
  # @return [TriggerResponseDTO]
  describe 'set_callback_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for switch_instance_status
  # Switch trigger instance status
  # Switches the status of a trigger instance.
  # @param trigger_id 
  # @param [Hash] opts the optional parameters
  # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
  # @return [TriggerResponseDTO]
  describe 'switch_instance_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for switch_post_instance_status
  # Switch post trigger instance status
  # Switches the status of a trigger instance.
  # @param trigger_id 
  # @param [Hash] opts the optional parameters
  # @option opts [SwitchTriggerStatusBodyDTO] :switch_trigger_status_body_dto SwitchTriggerStatusBodyDTO
  # @return [TriggerResponseDTO]
  describe 'switch_post_instance_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
