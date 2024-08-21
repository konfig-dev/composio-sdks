=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'forwardable'

# Common files
require 'composio/api_client'
require 'composio/api_error'
require 'composio/version'
require 'composio/configuration'

# Models
require 'composio/models/actions_execute_action_request'
require 'composio/models/actions_execute_action_response'
require 'composio/models/actions_execute_action_response_execution_details'
require 'composio/models/actions_get_list_response'
require 'composio/models/actions_get_list_response_items_inner'
require 'composio/models/actions_get_list_response_items_inner_parameters'
require 'composio/models/actions_get_list_response_items_inner_response'
require 'composio/models/actions_get_specific_action_response'
require 'composio/models/actions_get_specific_action_response_parameters'
require 'composio/models/actions_get_specific_action_response_response'
require 'composio/models/apps_get_all_apps_response'
require 'composio/models/apps_get_all_apps_response_items_inner'
require 'composio/models/auth_scheme'
require 'composio/models/connected_accounts_create_connection_request'
require 'composio/models/connected_accounts_create_connection_response'
require 'composio/models/connected_accounts_get_account_details_response'
require 'composio/models/connected_accounts_get_account_details_response_connection_params'
require 'composio/models/connected_accounts_get_account_details_response_status'
require 'composio/models/connected_accounts_list_all_response'
require 'composio/models/connected_accounts_list_all_response_items_inner'
require 'composio/models/connected_accounts_list_all_response_items_inner_connection_params'
require 'composio/models/connected_accounts_list_all_response_items_inner_connection_params_owner'
require 'composio/models/connected_accounts_list_all_response_items_inner_connection_params_owner_one_of'
require 'composio/models/connected_accounts_list_all_response_items_inner_connection_params_owner_one_of_user'
require 'composio/models/connected_accounts_list_all_response_items_inner_connection_params_owner_one_of_user_person'
require 'composio/models/connected_accounts_remove_connection_response'
require 'composio/models/connection_status'
require 'composio/models/integrations_create_new_integration_request'
require 'composio/models/integrations_create_new_integration_request_auth_config'
require 'composio/models/integrations_create_new_integration_response'
require 'composio/models/integrations_get_integration_details_response'
require 'composio/models/integrations_get_integration_details_response_auth_config'
require 'composio/models/integrations_list_all_response'
require 'composio/models/integrations_list_all_response_items_inner'
require 'composio/models/integrations_update_integration_settings_request'
require 'composio/models/integrations_update_integration_settings_response'
require 'composio/models/status'

# APIs
require 'composio/api/actions_api'
require 'composio/api/apps_api'
require 'composio/api/connected_accounts_api'
require 'composio/api/integrations_api'

module Composio
  @config = Configuration.default
  SENTINEL = Object.new
  class << self

    private def is_sentinel(value)
      value == SENTINEL
    end

    def host
      @config.host
    end

    def host=(value)
      @config.host = value
    end
    # api key from OpenAPI spec
    def auth_token
      @config.auth_token
    end

    def auth_token=(value)
      @config.auth_token = value
    end

    # Customize default settings for the SDK using block.
    #   Composio.configure do |config|
    #     config.host = "http://example.com"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class Client
    attr_reader :actions
    attr_reader :apps
    attr_reader :connected_accounts
    attr_reader :integrations

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @actions = Composio::ActionsApi.new(@api_client)
      @apps = Composio::AppsApi.new(@api_client)
      @connected_accounts = Composio::ConnectedAccountsApi.new(@api_client)
      @integrations = Composio::IntegrationsApi.new(@api_client)
    end
  end
end
