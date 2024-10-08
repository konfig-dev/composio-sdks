=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class LogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Post logs
    #
    # Add new logs
    #
    # @param provider_name [String] Provider name of the log
    # @param action_name [String] Action name of the log
    # @param request [Object] 
    # @param response [Object] 
    # @param is_error [Boolean] 
    # @param connection_id [String] Connection ID of the log
    # @param entity_id [String] Entity ID of the log
    # @param body [IngestDataDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_new_logs(provider_name:, action_name:, request:, response:, is_error:, connection_id: SENTINEL, entity_id: SENTINEL, extra: {})
      _body = {}
      _body[:connectionId] = connection_id if connection_id != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      _body[:providerName] = provider_name if provider_name != SENTINEL
      _body[:actionName] = action_name if action_name != SENTINEL
      _body[:request] = request if request != SENTINEL
      _body[:response] = response if response != SENTINEL
      _body[:isError] = is_error if is_error != SENTINEL
      extra[:ingest_data_dto] = _body if !_body.empty?
      api_response = add_new_logs_with_http_info_impl(extra)
      api_response.data
    end

    # Post logs
    #
    # Add new logs
    #
    # @param provider_name [String] Provider name of the log
    # @param action_name [String] Action name of the log
    # @param request [Object] 
    # @param response [Object] 
    # @param is_error [Boolean] 
    # @param connection_id [String] Connection ID of the log
    # @param entity_id [String] Entity ID of the log
    # @param body [IngestDataDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_new_logs_with_http_info(provider_name:, action_name:, request:, response:, is_error:, connection_id: SENTINEL, entity_id: SENTINEL, extra: {})
      _body = {}
      _body[:connectionId] = connection_id if connection_id != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      _body[:providerName] = provider_name if provider_name != SENTINEL
      _body[:actionName] = action_name if action_name != SENTINEL
      _body[:request] = request if request != SENTINEL
      _body[:response] = response if response != SENTINEL
      _body[:isError] = is_error if is_error != SENTINEL
      extra[:ingest_data_dto] = _body if !_body.empty?
      add_new_logs_with_http_info_impl(extra)
    end

    # Post logs
    # Add new logs
    # @param [Hash] opts the optional parameters
    # @option opts [IngestDataDTO] :ingest_data_dto IngestDataDTO
    # @return [IngestDataResponseDTO]
    private def add_new_logs_impl(opts = {})
      data, _status_code, _headers = add_new_logs_with_http_info(opts)
      data
    end

    # Post logs
    # Add new logs
    # @param [Hash] opts the optional parameters
    # @option opts [IngestDataDTO] :ingest_data_dto IngestDataDTO
    # @return [APIResponse] data is IngestDataResponseDTO, status code, headers and response
    private def add_new_logs_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.add_new_logs ...'
      end
      # resource path
      local_var_path = '/api/v1/logs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'ingest_data_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'IngestDataResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LogsApi.add_new_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#add_new_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get logs
    #
    # List logs
    #
    # @param type [String] 
    # @param time [String] 
    # @param status [String] 
    # @param search [String] 
    # @param integration_id [String] 
    # @param entity_id [String] 
    # @param limit [Float] 
    # @param cursor [String] 
    # @param logs_type [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(type: SENTINEL, time: SENTINEL, status: SENTINEL, search: SENTINEL, integration_id: SENTINEL, entity_id: SENTINEL, limit: 10, cursor: SENTINEL, logs_type: SENTINEL, extra: {})
      extra[:type] = type if type != SENTINEL
      extra[:time] = time if time != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:search] = search if search != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:entity_id] = entity_id if entity_id != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      extra[:logs_type] = logs_type if logs_type != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # Get logs
    #
    # List logs
    #
    # @param type [String] 
    # @param time [String] 
    # @param status [String] 
    # @param search [String] 
    # @param integration_id [String] 
    # @param entity_id [String] 
    # @param limit [Float] 
    # @param cursor [String] 
    # @param logs_type [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(type: SENTINEL, time: SENTINEL, status: SENTINEL, search: SENTINEL, integration_id: SENTINEL, entity_id: SENTINEL, limit: 10, cursor: SENTINEL, logs_type: SENTINEL, extra: {})
      extra[:type] = type if type != SENTINEL
      extra[:time] = time if time != SENTINEL
      extra[:status] = status if status != SENTINEL
      extra[:search] = search if search != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      extra[:entity_id] = entity_id if entity_id != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      extra[:logs_type] = logs_type if logs_type != SENTINEL
      list_with_http_info_impl(extra)
    end

    # Get logs
    # List logs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [String] :time 
    # @option opts [String] :status 
    # @option opts [String] :search 
    # @option opts [String] :integration_id 
    # @option opts [String] :entity_id 
    # @option opts [Float] :limit  (default to 10)
    # @option opts [String] :cursor 
    # @option opts [String] :logs_type 
    # @return [LogsResDTO]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get logs
    # List logs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type 
    # @option opts [String] :time 
    # @option opts [String] :status 
    # @option opts [String] :search 
    # @option opts [String] :integration_id 
    # @option opts [String] :entity_id 
    # @option opts [Float] :limit  (default to 10)
    # @option opts [String] :cursor 
    # @option opts [String] :logs_type 
    # @return [APIResponse] data is LogsResDTO, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.list ...'
      end
      allowable_values = ["error", "info", "debug"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["5m", "30m", "6h", "1d", "1w", "1month", "1y"]
      if @api_client.config.client_side_validation && opts[:'time'] && !allowable_values.include?(opts[:'time'])
        fail ArgumentError, "invalid value for \"time\", must be one of #{allowable_values}"
      end
      allowable_values = ["all", "success", "error"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/logs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'time'] = opts[:'time'] if !opts[:'time'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?
      query_params[:'entityId'] = opts[:'entity_id'] if !opts[:'entity_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'logsType'] = opts[:'logs_type'] if !opts[:'logs_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LogsResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LogsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Logs = LogsApi::new
end
