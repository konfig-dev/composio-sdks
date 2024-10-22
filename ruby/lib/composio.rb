=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'forwardable'

# Common files
require 'composio/api_client'
require 'composio/api_error'
require 'composio/version'
require 'composio/configuration'

# Models
require 'composio/models/api_key_res_dto'
require 'composio/models/action_analytics_dto'
require 'composio/models/action_by_app_dto'
require 'composio/models/action_by_status_dto'
require 'composio/models/action_details'
require 'composio/models/action_details_minimal'
require 'composio/models/action_execution_req_dto'
require 'composio/models/action_execution_res_dto'
require 'composio/models/action_get_nla_inputs_req_dto'
require 'composio/models/action_log_data'
require 'composio/models/action_metadata'
require 'composio/models/action_metadata_type'
require 'composio/models/actions_controller_v1'
require 'composio/models/actions_list_response_dto'
require 'composio/models/actions_minimal_list_response_dto'
require 'composio/models/actions_query_dto'
require 'composio/models/active_trigger_instance'
require 'composio/models/active_triggers_res_dto'
require 'composio/models/add_repo_url_req_dto'
require 'composio/models/add_repo_url_res_dto'
require 'composio/models/add_tools_req_dto'
require 'composio/models/add_tools_request_dto'
require 'composio/models/additional_info'
require 'composio/models/analytics_data_req_dto'
require 'composio/models/analytics_data_res_dto'
require 'composio/models/analytics_entity_data_dto'
require 'composio/models/app_info_response_dto'
require 'composio/models/app_list_res_dto'
require 'composio/models/app_name_count_dto'
require 'composio/models/app_query_dto'
require 'composio/models/auth_config_dto'
require 'composio/models/cli_query_dto'
require 'composio/models/client_unique_user_id_count_dto'
require 'composio/models/connected_account_response_dto'
require 'composio/models/connection_params'
require 'composio/models/connection_params_for_account'
require 'composio/models/connection_params_headers'
require 'composio/models/connection_with_app_data'
require 'composio/models/connector_list_item_dto'
require 'composio/models/connector_list_item_dto_created_at'
require 'composio/models/connector_list_item_dto_updated_at'
require 'composio/models/create_checkout_session_req_dto'
require 'composio/models/create_connector_payload_dto'
require 'composio/models/create_connector_payload_dto_use_composio_auth'
require 'composio/models/custom_auth_dto'
require 'composio/models/data'
require 'composio/models/delete_api_key_req_dto'
require 'composio/models/delete_api_key_response_dto'
require 'composio/models/delete_row_apidto'
require 'composio/models/delete_tools_req_dto'
require 'composio/models/delete_tools_res_dto'
require 'composio/models/direct_execute_req_dto'
require 'composio/models/enable_trigger_body_dto'
require 'composio/models/enable_trigger_params_dto'
require 'composio/models/entity_query_req_dto'
require 'composio/models/execute_action_res_dto'
require 'composio/models/fetch_query_dto'
require 'composio/models/generate_api_key_req_dto'
require 'composio/models/generate_cli_session_req_dto'
require 'composio/models/generate_cli_session_res_dto'
require 'composio/models/get_active_triggers_query_dto'
require 'composio/models/get_cli_session_res_dto'
require 'composio/models/get_connection_info_response_dto'
require 'composio/models/get_connections_query_dto'
require 'composio/models/get_connections_response_dto'
require 'composio/models/get_connections_result'
require 'composio/models/get_connector_info_res_dto'
require 'composio/models/get_connector_list_res_dto'
require 'composio/models/get_logs_dto'
require 'composio/models/get_logs_dto_status'
require 'composio/models/get_logs_query_dto'
require 'composio/models/get_trigger_params_dto'
require 'composio/models/get_trigger_response_dto'
require 'composio/models/handle_trigger_body_dto'
require 'composio/models/handle_trigger_params_dto'
require 'composio/models/identify_client_req_dto'
require 'composio/models/identify_client_res_dto'
require 'composio/models/ingest_data_dto'
require 'composio/models/ingest_data_response_dto'
require 'composio/models/initiate_connection_payload_dto'
require 'composio/models/initiate_connection_response'
require 'composio/models/integrations_with_counts_dto'
require 'composio/models/invite_member_req_dto'
require 'composio/models/last_time_period'
require 'composio/models/list_triggers_query_dto'
require 'composio/models/logout_res_dto'
require 'composio/models/logs_res_dto'
require 'composio/models/magic_link_req_dto'
require 'composio/models/magic_link_res_dto'
require 'composio/models/member_info_res_dto'
require 'composio/models/member_info_res_dto_created_at'
require 'composio/models/member_res_dto'
require 'composio/models/member_res_dto_role'
require 'composio/models/meta'
require 'composio/models/meta_app'
require 'composio/models/metadata_query_dto'
require 'composio/models/metadata_req_dto'
require 'composio/models/o_auth2_callback_query_dto'
require 'composio/models/open_api_spec_list_res_dto'
require 'composio/models/page_info'
require 'composio/models/page_info_dto'
require 'composio/models/parameter'
require 'composio/models/patch_connector_req_dto'
require 'composio/models/patch_connector_res_dto'
require 'composio/models/plan'
require 'composio/models/proxy_execution_req_dto'
require 'composio/models/redirect_uri_dto'
require 'composio/models/role'
require 'composio/models/set_callback_url_body_dto'
require 'composio/models/single_app_info_res_dto'
require 'composio/models/single_trigger_res_dto'
require 'composio/models/state'
require 'composio/models/status'
require 'composio/models/switch_trigger_status_body_dto'
require 'composio/models/switch_trigger_status_params_dto'
require 'composio/models/t_connection_count_dto'
require 'composio/models/time'
require 'composio/models/time_period_req_dto'
require 'composio/models/toggle_connected_account_response_dto'
require 'composio/models/toggle_trigger_state_response_dto'
require 'composio/models/tools_execute_req_dto'
require 'composio/models/top_entities_res_dto'
require 'composio/models/track_client_req_dto'
require 'composio/models/track_client_res_dto'
require 'composio/models/trigger_config'
require 'composio/models/trigger_instance_params_dto'
require 'composio/models/trigger_log_data'
require 'composio/models/trigger_log_item_dto'
require 'composio/models/trigger_logs_res_dto'
require 'composio/models/trigger_metadata'
require 'composio/models/trigger_metadata_dto'
require 'composio/models/trigger_metadata_type'
require 'composio/models/trigger_res_dto'
require 'composio/models/trigger_response_dto'
require 'composio/models/trigger_toggle_info_response_dto'
require 'composio/models/triggers_enabled_toggle_req_dto'
require 'composio/models/triggers_enabled_toggle_res_dto'
require 'composio/models/type'
require 'composio/models/update_member_req_dto'
require 'composio/models/update_member_req_dto_role'
require 'composio/models/user_git_user_info'
require 'composio/models/verify_cli_code_res_dto'
require 'composio/models/verify_magic_link_data_dto'
require 'composio/models/verify_magic_link_req_dto'
require 'composio/models/verify_magic_link_res_dto'
require 'composio/models/webhook_req_dto'
require 'composio/models/webhook_secret_res_dto'
require 'composio/models/webhook_url_response_dto'

# APIs
require 'composio/api/api_keys_api'
require 'composio/api/actions_api'
require 'composio/api/analytics_api'
require 'composio/api/apps_api'
require 'composio/api/auth_api'
require 'composio/api/connections_api'
require 'composio/api/event_logs_api'
require 'composio/api/integrations_api'
require 'composio/api/logs_api'
require 'composio/api/payment_api'
require 'composio/api/triggers_api'

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
    def api_key
      @config.api_key
    end

    def api_key=(value)
      @config.api_key = value
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
    attr_reader :api_keys
    attr_reader :actions
    attr_reader :analytics
    attr_reader :apps
    attr_reader :auth
    attr_reader :connections
    attr_reader :event_logs
    attr_reader :integrations
    attr_reader :logs
    attr_reader :payment
    attr_reader :triggers

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @api_keys = Composio::APIKeysApi.new(@api_client)
      @actions = Composio::ActionsApi.new(@api_client)
      @analytics = Composio::AnalyticsApi.new(@api_client)
      @apps = Composio::AppsApi.new(@api_client)
      @auth = Composio::AuthApi.new(@api_client)
      @connections = Composio::ConnectionsApi.new(@api_client)
      @event_logs = Composio::EventLogsApi.new(@api_client)
      @integrations = Composio::IntegrationsApi.new(@api_client)
      @logs = Composio::LogsApi.new(@api_client)
      @payment = Composio::PaymentApi.new(@api_client)
      @triggers = Composio::TriggersApi.new(@api_client)
    end
  end
end
