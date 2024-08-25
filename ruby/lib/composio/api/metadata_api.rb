=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class MetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get toggle info
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_toggle_info(extra: {})
      api_response = get_toggle_info_with_http_info_impl(extra)
      api_response.data
    end

    # Get toggle info
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_toggle_info_with_http_info(extra: {})
      get_toggle_info_with_http_info_impl(extra)
    end

    # Get toggle info
    # @param [Hash] opts the optional parameters
    # @return [TriggerToggleInfoResponseDTO]
    private def get_toggle_info_impl(opts = {})
      data, _status_code, _headers = get_toggle_info_with_http_info(opts)
      data
    end

    # Get toggle info
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is TriggerToggleInfoResponseDTO, status code, headers and response
    private def get_toggle_info_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.get_toggle_info ...'
      end
      # resource path
      local_var_path = '/api/v1/metadata/toggle.info'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TriggerToggleInfoResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MetadataApi.get_toggle_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#get_toggle_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Toggle trigger state
    #
    # @param enabled [Boolean] Flag to enable or disable triggers
    # @param body [TriggersEnabledToggleReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_trigger_state(enabled:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:triggers_enabled_toggle_req_dto] = _body if !_body.empty?
      api_response = toggle_trigger_state_with_http_info_impl(extra)
      api_response.data
    end

    # Toggle trigger state
    #
    # @param enabled [Boolean] Flag to enable or disable triggers
    # @param body [TriggersEnabledToggleReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_trigger_state_with_http_info(enabled:, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:triggers_enabled_toggle_req_dto] = _body if !_body.empty?
      toggle_trigger_state_with_http_info_impl(extra)
    end

    # Toggle trigger state
    # @param [Hash] opts the optional parameters
    # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
    # @return [ToggleTriggerStateResponseDTO]
    private def toggle_trigger_state_impl(opts = {})
      data, _status_code, _headers = toggle_trigger_state_with_http_info(opts)
      data
    end

    # Toggle trigger state
    # @param [Hash] opts the optional parameters
    # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
    # @return [APIResponse] data is ToggleTriggerStateResponseDTO, status code, headers and response
    private def toggle_trigger_state_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetadataApi.toggle_trigger_state ...'
      end
      # resource path
      local_var_path = '/api/v1/metadata/toggle/trigger'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'triggers_enabled_toggle_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ToggleTriggerStateResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"MetadataApi.toggle_trigger_state",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetadataApi#toggle_trigger_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Metadata = MetadataApi::new
end
