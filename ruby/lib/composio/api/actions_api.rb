=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class ActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Execute action
    #
    # Execute an action. Support both connected account and no auth auth.
    #
    # @param action_id [String] 
    # @param connected_account_id [String] 
    # @param app_name [String] 
    # @param entity_id [String] 
    # @param endpoint [String] 
    # @param input [Object] 
    # @param text [String] 
    # @param body [ActionExecutionReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute(action_id:, connected_account_id: SENTINEL, app_name: SENTINEL, entity_id: SENTINEL, endpoint: SENTINEL, input: SENTINEL, text: SENTINEL, extra: {})
      _body = {}
      _body[:connectedAccountId] = connected_account_id if connected_account_id != SENTINEL
      _body[:appName] = app_name if app_name != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      _body[:endpoint] = endpoint if endpoint != SENTINEL
      _body[:input] = input if input != SENTINEL
      _body[:text] = text if text != SENTINEL
      extra[:action_execution_req_dto] = _body if !_body.empty?
      api_response = execute_with_http_info_impl(action_id, extra)
      api_response.data
    end

    # Execute action
    #
    # Execute an action. Support both connected account and no auth auth.
    #
    # @param action_id [String] 
    # @param connected_account_id [String] 
    # @param app_name [String] 
    # @param entity_id [String] 
    # @param endpoint [String] 
    # @param input [Object] 
    # @param text [String] 
    # @param body [ActionExecutionReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute_with_http_info(action_id:, connected_account_id: SENTINEL, app_name: SENTINEL, entity_id: SENTINEL, endpoint: SENTINEL, input: SENTINEL, text: SENTINEL, extra: {})
      _body = {}
      _body[:connectedAccountId] = connected_account_id if connected_account_id != SENTINEL
      _body[:appName] = app_name if app_name != SENTINEL
      _body[:entityId] = entity_id if entity_id != SENTINEL
      _body[:endpoint] = endpoint if endpoint != SENTINEL
      _body[:input] = input if input != SENTINEL
      _body[:text] = text if text != SENTINEL
      extra[:action_execution_req_dto] = _body if !_body.empty?
      execute_with_http_info_impl(action_id, extra)
    end

    # Execute action
    # Execute an action. Support both connected account and no auth auth.
    # @param action_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ActionExecutionReqDTO] :action_execution_req_dto ActionExecutionReqDTO
    # @return [ActionExecutionResDto]
    private def execute_impl(action_id, opts = {})
      data, _status_code, _headers = execute_with_http_info(action_id, opts)
      data
    end

    # Execute action
    # Execute an action. Support both connected account and no auth auth.
    # @param action_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ActionExecutionReqDTO] :action_execution_req_dto ActionExecutionReqDTO
    # @return [APIResponse] data is ActionExecutionResDto, status code, headers and response
    private def execute_with_http_info_impl(action_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.execute ...'
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling ActionsApi.execute"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && action_id !~ pattern
        fail ArgumentError, "invalid value for 'action_id' when calling ActionsApi.execute, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v2/actions/{actionId}/execute'.sub('{' + 'actionId' + '}', CGI.escape(action_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'action_execution_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'ActionExecutionResDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ActionsApi.execute",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#execute\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Execute action proxy
    #
    # Execute an action with direct auth.
    #
    # @param endpoint [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute_action_proxy(endpoint:, connected_account_id:, extra: {})
      api_response = execute_action_proxy_with_http_info_impl(endpoint, connected_account_id, extra)
      api_response.data
    end

    # Execute action proxy
    #
    # Execute an action with direct auth.
    #
    # @param endpoint [String] 
    # @param connected_account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute_action_proxy_with_http_info(endpoint:, connected_account_id:, extra: {})
      execute_action_proxy_with_http_info_impl(endpoint, connected_account_id, extra)
    end

    # Execute action proxy
    # Execute an action with direct auth.
    # @param endpoint [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ActionExecutionResDto]
    private def execute_action_proxy_impl(endpoint, connected_account_id, opts = {})
      data, _status_code, _headers = execute_action_proxy_with_http_info(endpoint, connected_account_id, opts)
      data
    end

    # Execute action proxy
    # Execute an action with direct auth.
    # @param endpoint [String] 
    # @param connected_account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ActionExecutionResDto, status code, headers and response
    private def execute_action_proxy_with_http_info_impl(endpoint, connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.execute_action_proxy ...'
      end
      # verify the required parameter 'endpoint' is set
      if @api_client.config.client_side_validation && endpoint.nil?
        fail ArgumentError, "Missing the required parameter 'endpoint' when calling ActionsApi.execute_action_proxy"
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ActionsApi.execute_action_proxy"
      end
      # resource path
      local_var_path = '/api/v2/actions/proxy'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'endpoint'] = endpoint
      query_params[:'connectedAccountId'] = connected_account_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ActionExecutionResDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ActionsApi.execute_action_proxy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#execute_action_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get action
    #
    # Get action details
    #
    # @param action_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_action_by_id(action_id:, extra: {})
      api_response = get_action_by_id_with_http_info_impl(action_id, extra)
      api_response.data
    end

    # Get action
    #
    # Get action details
    #
    # @param action_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_action_by_id_with_http_info(action_id:, extra: {})
      get_action_by_id_with_http_info_impl(action_id, extra)
    end

    # Get action
    # Get action details
    # @param action_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ActionDetails]
    private def get_action_by_id_impl(action_id, opts = {})
      data, _status_code, _headers = get_action_by_id_with_http_info(action_id, opts)
      data
    end

    # Get action
    # Get action details
    # @param action_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ActionDetails, status code, headers and response
    private def get_action_by_id_with_http_info_impl(action_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.get_action_by_id ...'
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling ActionsApi.get_action_by_id"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && action_id !~ pattern
        fail ArgumentError, "invalid value for 'action_id' when calling ActionsApi.get_action_by_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v2/actions/{actionId}'.sub('{' + 'actionId' + '}', CGI.escape(action_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ActionDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ActionsApi.get_action_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#get_action_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List actions minimal
    #
    # Retrieve a list of all actions based on query parameters.
    #
    # @param app_names [String] 
    # @param use_case [String] 
    # @param show_enabled_only [Boolean] 
    # @param limit [Float] 
    # @param apps [String] 
    # @param actions [String] 
    # @param tags [String] 
    # @param usecase_limit [Float] 
    # @param filter_important_actions [Boolean] 
    # @param show_all [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_actions_based_on_query(app_names: SENTINEL, use_case: SENTINEL, show_enabled_only: SENTINEL, limit: SENTINEL, apps: SENTINEL, actions: SENTINEL, tags: SENTINEL, usecase_limit: SENTINEL, filter_important_actions: SENTINEL, show_all: SENTINEL, extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:use_case] = use_case if use_case != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:apps] = apps if apps != SENTINEL
      extra[:actions] = actions if actions != SENTINEL
      extra[:tags] = tags if tags != SENTINEL
      extra[:usecase_limit] = usecase_limit if usecase_limit != SENTINEL
      extra[:filter_important_actions] = filter_important_actions if filter_important_actions != SENTINEL
      extra[:show_all] = show_all if show_all != SENTINEL
      api_response = get_all_actions_based_on_query_with_http_info_impl(extra)
      api_response.data
    end

    # List actions minimal
    #
    # Retrieve a list of all actions based on query parameters.
    #
    # @param app_names [String] 
    # @param use_case [String] 
    # @param show_enabled_only [Boolean] 
    # @param limit [Float] 
    # @param apps [String] 
    # @param actions [String] 
    # @param tags [String] 
    # @param usecase_limit [Float] 
    # @param filter_important_actions [Boolean] 
    # @param show_all [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_actions_based_on_query_with_http_info(app_names: SENTINEL, use_case: SENTINEL, show_enabled_only: SENTINEL, limit: SENTINEL, apps: SENTINEL, actions: SENTINEL, tags: SENTINEL, usecase_limit: SENTINEL, filter_important_actions: SENTINEL, show_all: SENTINEL, extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:use_case] = use_case if use_case != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:apps] = apps if apps != SENTINEL
      extra[:actions] = actions if actions != SENTINEL
      extra[:tags] = tags if tags != SENTINEL
      extra[:usecase_limit] = usecase_limit if usecase_limit != SENTINEL
      extra[:filter_important_actions] = filter_important_actions if filter_important_actions != SENTINEL
      extra[:show_all] = show_all if show_all != SENTINEL
      get_all_actions_based_on_query_with_http_info_impl(extra)
    end

    # List actions minimal
    # Retrieve a list of all actions based on query parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names 
    # @option opts [String] :use_case 
    # @option opts [Boolean] :show_enabled_only 
    # @option opts [Float] :limit 
    # @option opts [String] :apps 
    # @option opts [String] :actions 
    # @option opts [String] :tags 
    # @option opts [Float] :usecase_limit 
    # @option opts [Boolean] :filter_important_actions 
    # @option opts [Boolean] :show_all 
    # @return [ActionsListResponseDTO]
    private def get_all_actions_based_on_query_impl(opts = {})
      data, _status_code, _headers = get_all_actions_based_on_query_with_http_info(opts)
      data
    end

    # List actions minimal
    # Retrieve a list of all actions based on query parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names 
    # @option opts [String] :use_case 
    # @option opts [Boolean] :show_enabled_only 
    # @option opts [Float] :limit 
    # @option opts [String] :apps 
    # @option opts [String] :actions 
    # @option opts [String] :tags 
    # @option opts [Float] :usecase_limit 
    # @option opts [Boolean] :filter_important_actions 
    # @option opts [Boolean] :show_all 
    # @return [APIResponse] data is ActionsListResponseDTO, status code, headers and response
    private def get_all_actions_based_on_query_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.get_all_actions_based_on_query ...'
      end
      # resource path
      local_var_path = '/api/v2/actions/list/all'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'appNames'] = opts[:'app_names'] if !opts[:'app_names'].nil?
      query_params[:'useCase'] = opts[:'use_case'] if !opts[:'use_case'].nil?
      query_params[:'showEnabledOnly'] = opts[:'show_enabled_only'] if !opts[:'show_enabled_only'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'apps'] = opts[:'apps'] if !opts[:'apps'].nil?
      query_params[:'actions'] = opts[:'actions'] if !opts[:'actions'].nil?
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'usecaseLimit'] = opts[:'usecase_limit'] if !opts[:'usecase_limit'].nil?
      query_params[:'filterImportantActions'] = opts[:'filter_important_actions'] if !opts[:'filter_important_actions'].nil?
      query_params[:'showAll'] = opts[:'show_all'] if !opts[:'show_all'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ActionsListResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"ActionsApi.get_all_actions_based_on_query",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#get_all_actions_based_on_query\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Actions = ActionsApi::new
end
