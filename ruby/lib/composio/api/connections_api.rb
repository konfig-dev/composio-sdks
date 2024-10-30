=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class ConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete connection
    #
    # Delete a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete(connected_account_id:, extra: {})
      api_response = delete_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Delete connection
    #
    # Delete a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_with_http_info(connected_account_id:, extra: {})
      delete_with_http_info_impl(connected_account_id, extra)
    end

    # Delete connection
    # Delete a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteRowAPIDTO]
    private def delete_impl(connected_account_id, opts = {})
      data, _status_code, _headers = delete_with_http_info(connected_account_id, opts)
      data
    end

    # Delete connection
    # Delete a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is DeleteRowAPIDTO, status code, headers and response
    private def delete_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.delete ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.delete"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.delete, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteRowAPIDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Disable connection
    #
    # Disable a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable(connected_account_id:, extra: {})
      api_response = disable_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Disable connection
    #
    # Disable a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_with_http_info(connected_account_id:, extra: {})
      disable_with_http_info_impl(connected_account_id, extra)
    end

    # Disable connection
    # Disable a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ToggleConnectedAccountResponseDTO]
    private def disable_impl(connected_account_id, opts = {})
      data, _status_code, _headers = disable_with_http_info(connected_account_id, opts)
      data
    end

    # Disable connection
    # Disable a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ToggleConnectedAccountResponseDTO, status code, headers and response
    private def disable_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.disable ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.disable"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.disable, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}/disable'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ToggleConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.disable",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#disable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Enable connection
    #
    # Enable a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable(connected_account_id:, extra: {})
      api_response = enable_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Enable connection
    #
    # Enable a connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def enable_with_http_info(connected_account_id:, extra: {})
      enable_with_http_info_impl(connected_account_id, extra)
    end

    # Enable connection
    # Enable a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ToggleConnectedAccountResponseDTO]
    private def enable_impl(connected_account_id, opts = {})
      data, _status_code, _headers = enable_with_http_info(connected_account_id, opts)
      data
    end

    # Enable connection
    # Enable a connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ToggleConnectedAccountResponseDTO, status code, headers and response
    private def enable_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.enable ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.enable"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.enable, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}/enable'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ToggleConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.enable",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#enable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get(connected_account_id:, extra: {})
      api_response = get_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Get connection
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_with_http_info(connected_account_id:, extra: {})
      get_with_http_info_impl(connected_account_id, extra)
    end

    # Get connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAccountResponseDTO]
    private def get_impl(connected_account_id, opts = {})
      data, _status_code, _headers = get_with_http_info(connected_account_id, opts)
      data
    end

    # Get connection
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ConnectedAccountResponseDTO, status code, headers and response
    private def get_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.get"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.get, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConnectedAccountResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connection info
    #
    # Get connection info
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_info(connected_account_id:, extra: {})
      api_response = get_info_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Get connection info
    #
    # Get connection info
    #
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_info_with_http_info(connected_account_id:, extra: {})
      get_info_with_http_info_impl(connected_account_id, extra)
    end

    # Get connection info
    # Get connection info
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetConnectionInfoResponseDTO]
    private def get_info_impl(connected_account_id, opts = {})
      data, _status_code, _headers = get_info_with_http_info(connected_account_id, opts)
      data
    end

    # Get connection info
    # Get connection info
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GetConnectionInfoResponseDTO, status code, headers and response
    private def get_info_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.get_info ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectionsApi.get_info"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && connected_account_id !~ pattern
        fail ArgumentError, "invalid value for 'connected_account_id' when calling ConnectionsApi.get_info, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/connectedAccounts/{connectedAccountId}/info'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetConnectionInfoResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.get_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#get_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Initiate connection
    #
    # @param integration_id [String] 
    # @param data [String] 
    # @param redirect_uri [String] 
    # @param user_uuid [String] 
    # @param entity_id [String] 
    # @param body [InitiateConnectionPayloadDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def initiate(integration_id:, data: SENTINEL, redirect_uri: SENTINEL, user_uuid: SENTINEL, entity_id: SENTINEL, extra: {})
      _body = {}
      _body[:data] = data if data != SENTINEL
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      _body[:userUuid] = user_uuid if user_uuid != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      extra[:initiate_connection_payload_dto] = _body if !_body.empty?
      api_response = initiate_with_http_info_impl(extra)
      api_response.data
    end

    # Initiate connection
    #
    # @param integration_id [String] 
    # @param data [String] 
    # @param redirect_uri [String] 
    # @param user_uuid [String] 
    # @param entity_id [String] 
    # @param body [InitiateConnectionPayloadDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def initiate_with_http_info(integration_id:, data: SENTINEL, redirect_uri: SENTINEL, user_uuid: SENTINEL, entity_id: SENTINEL, extra: {})
      _body = {}
      _body[:data] = data if data != SENTINEL
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      _body[:userUuid] = user_uuid if user_uuid != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      extra[:initiate_connection_payload_dto] = _body if !_body.empty?
      initiate_with_http_info_impl(extra)
    end

    # Initiate connection
    # @param [Hash] opts the optional parameters
    # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
    # @return [InitiateConnectionResponse]
    private def initiate_impl(opts = {})
      data, _status_code, _headers = initiate_with_http_info(opts)
      data
    end

    # Initiate connection
    # @param [Hash] opts the optional parameters
    # @option opts [InitiateConnectionPayloadDto] :initiate_connection_payload_dto InitiateConnectionPayloadDto
    # @return [APIResponse] data is InitiateConnectionResponse, status code, headers and response
    private def initiate_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.initiate ...'
      end
      # resource path
      local_var_path = '/api/v1/connectedAccounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'initiate_connection_payload_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'InitiateConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.initiate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#initiate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get connections
    #
    # @param page [Float] 
    # @param page_size [Float] 
    # @param app_names [String] 
    # @param integration_id [String] 
    # @param connection_id [String] 
    # @param user_uuid [String] 
    # @param show_active_only [Boolean] 
    # @param status [String] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(page: SENTINEL, page_size: SENTINEL, app_names: SENTINEL, integration_id: SENTINEL, connection_id: SENTINEL, user_uuid: SENTINEL, show_active_only: SENTINEL, status: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:user_uuid] = user_uuid if user_uuid != SENTINEL
      extra[:show_active_only] = show_active_only if show_active_only != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # Get connections
    #
    # @param page [Float] 
    # @param page_size [Float] 
    # @param app_names [String] 
    # @param integration_id [String] 
    # @param connection_id [String] 
    # @param user_uuid [String] 
    # @param show_active_only [Boolean] 
    # @param status [String] 
    # @param show_disabled [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(page: SENTINEL, page_size: SENTINEL, app_names: SENTINEL, integration_id: SENTINEL, connection_id: SENTINEL, user_uuid: SENTINEL, show_active_only: SENTINEL, status: SENTINEL, show_disabled: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:connection_id] = connection_id if connection_id != SENTINEL
      extra[:user_uuid] = user_uuid if user_uuid != SENTINEL
      extra[:show_active_only] = show_active_only if show_active_only != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:show_disabled] = show_disabled if show_disabled != SENTINEL
      list_with_http_info_impl(extra)
    end

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
    # @return [GetConnectionsResponseDto]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

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
    # @return [APIResponse] data is GetConnectionsResponseDto, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.list ...'
      end
      # resource path
      local_var_path = '/api/v1/connectedAccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'appNames'] = opts[:'app_names'] if !opts[:'app_names'].nil?
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'connectionId'] = opts[:'connection_id'] if !opts[:'connection_id'].nil?
      query_params[:'user_uuid'] = opts[:'user_uuid'] if !opts[:'user_uuid'].nil?
      query_params[:'showActiveOnly'] = opts[:'show_active_only'] if !opts[:'show_active_only'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'showDisabled'] = opts[:'show_disabled'] if !opts[:'show_disabled'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetConnectionsResponseDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Connections = ConnectionsApi::new
end
