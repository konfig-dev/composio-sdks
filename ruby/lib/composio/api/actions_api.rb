=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
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
    # Executes a specific action in the Composio platform.
    # 
    # This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.
    # 
    # Use this endpoint to execute actions available in the Composio platform for your end customer. 
    # 
    # Executed will indicate whether the action was successfully executed. 
    #
    # @param action_name [String] The name of the action to execute.
    # @param connected_account_id [String] The unique identifier of the connection to use for executing the action.
    # @param input [Object] An object containing the input parameters for the action.
    # @param app_name [String] 
    # @param body [ActionsExecuteActionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute(action_name:, connected_account_id: SENTINEL, input: SENTINEL, app_name: SENTINEL, extra: {})
      _body = {}
      _body[:connectedAccountId] = connected_account_id if connected_account_id != SENTINEL
      _body[:input] = input if input != SENTINEL
      _body[:appName] = app_name if app_name != SENTINEL
      extra[:actions_execute_action_request] = _body if !_body.empty?
      api_response = execute_with_http_info_impl(action_name, extra)
      api_response.data
    end

    # Execute action
    #
    # Executes a specific action in the Composio platform.
    # 
    # This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.
    # 
    # Use this endpoint to execute actions available in the Composio platform for your end customer. 
    # 
    # Executed will indicate whether the action was successfully executed. 
    #
    # @param action_name [String] The name of the action to execute.
    # @param connected_account_id [String] The unique identifier of the connection to use for executing the action.
    # @param input [Object] An object containing the input parameters for the action.
    # @param app_name [String] 
    # @param body [ActionsExecuteActionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def execute_with_http_info(action_name:, connected_account_id: SENTINEL, input: SENTINEL, app_name: SENTINEL, extra: {})
      _body = {}
      _body[:connectedAccountId] = connected_account_id if connected_account_id != SENTINEL
      _body[:input] = input if input != SENTINEL
      _body[:appName] = app_name if app_name != SENTINEL
      extra[:actions_execute_action_request] = _body if !_body.empty?
      execute_with_http_info_impl(action_name, extra)
    end

    # Execute action
    # Executes a specific action in the Composio platform.  This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.  Use this endpoint to execute actions available in the Composio platform for your end customer.   Executed will indicate whether the action was successfully executed. 
    # @param action_name [String] The name of the action to execute.
    # @param [Hash] opts the optional parameters
    # @option opts [ActionsExecuteActionRequest] :actions_execute_action_request 
    # @return [ActionsExecuteActionResponse]
    private def execute_impl(action_name, opts = {})
      data, _status_code, _headers = execute_with_http_info(action_name, opts)
      data
    end

    # Execute action
    # Executes a specific action in the Composio platform.  This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.  Use this endpoint to execute actions available in the Composio platform for your end customer.   Executed will indicate whether the action was successfully executed. 
    # @param action_name [String] The name of the action to execute.
    # @param [Hash] opts the optional parameters
    # @option opts [ActionsExecuteActionRequest] :actions_execute_action_request 
    # @return [APIResponse] data is ActionsExecuteActionResponse, status code, headers and response
    private def execute_with_http_info_impl(action_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.execute ...'
      end
      # verify the required parameter 'action_name' is set
      if @api_client.config.client_side_validation && action_name.nil?
        fail ArgumentError, "Missing the required parameter 'action_name' when calling ActionsApi.execute"
      end
      # resource path
      local_var_path = '/v1/actions/{actionName}/execute'.sub('{' + 'actionName' + '}', CGI.escape(action_name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'actions_execute_action_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ActionsExecuteActionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

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


    # Get a Specific Action
    #
    # Retrieves details of a specific action in the Composio platform.
    # 
    # This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier.
    # The response includes the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.
    # Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements. 
    # You can then pass this to function calling or use LLM to fill in the parameters. 
    #
    # @param action_name [String] The unique identifier of the action.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get(action_name:, extra: {})
      api_response = get_with_http_info_impl(action_name, extra)
      api_response.data
    end

    # Get a Specific Action
    #
    # Retrieves details of a specific action in the Composio platform.
    # 
    # This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier.
    # The response includes the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.
    # Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements. 
    # You can then pass this to function calling or use LLM to fill in the parameters. 
    #
    # @param action_name [String] The unique identifier of the action.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_with_http_info(action_name:, extra: {})
      get_with_http_info_impl(action_name, extra)
    end

    # Get a Specific Action
    # Retrieves details of a specific action in the Composio platform.  This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier. The response includes the action's name, display name, description, input parameters, expected response, associated app information, and enabled status. Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements.  You can then pass this to function calling or use LLM to fill in the parameters. 
    # @param action_name [String] The unique identifier of the action.
    # @param [Hash] opts the optional parameters
    # @return [ActionsGetSpecificActionResponse]
    private def get_impl(action_name, opts = {})
      data, _status_code, _headers = get_with_http_info(action_name, opts)
      data
    end

    # Get a Specific Action
    # Retrieves details of a specific action in the Composio platform.  This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier. The response includes the action&#39;s name, display name, description, input parameters, expected response, associated app information, and enabled status. Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements.  You can then pass this to function calling or use LLM to fill in the parameters. 
    # @param action_name [String] The unique identifier of the action.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ActionsGetSpecificActionResponse, status code, headers and response
    private def get_with_http_info_impl(action_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.get ...'
      end
      # verify the required parameter 'action_name' is set
      if @api_client.config.client_side_validation && action_name.nil?
        fail ArgumentError, "Missing the required parameter 'action_name' when calling ActionsApi.get"
      end
      # resource path
      local_var_path = '/v1/actions/{actionName}'.sub('{' + 'actionName' + '}', CGI.escape(action_name.to_s))

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
      return_type = opts[:debug_return_type] || 'ActionsGetSpecificActionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ActionsApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get List of Actions
    #
    # Retrieves a list of all actions in the Composio platform.
    # 
    # This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.
    # 
    # Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 
    #
    # @param app_names [String] Name of the app like \"github\", \"linear\"
    # @param use_case [String] Natural language usecase
    # @param show_enabled_only [Boolean] Show actions enabled for the API Key
    # @param limit [String] Limit of apis
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(app_names: SENTINEL, use_case: SENTINEL, show_enabled_only: SENTINEL, limit: '10', extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:use_case] = use_case if use_case != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # Get List of Actions
    #
    # Retrieves a list of all actions in the Composio platform.
    # 
    # This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.
    # 
    # Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 
    #
    # @param app_names [String] Name of the app like \"github\", \"linear\"
    # @param use_case [String] Natural language usecase
    # @param show_enabled_only [Boolean] Show actions enabled for the API Key
    # @param limit [String] Limit of apis
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(app_names: SENTINEL, use_case: SENTINEL, show_enabled_only: SENTINEL, limit: '10', extra: {})
      extra[:app_names] = app_names if app_names != SENTINEL
      extra[:use_case] = use_case if use_case != SENTINEL
      extra[:show_enabled_only] = show_enabled_only if show_enabled_only != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      list_with_http_info_impl(extra)
    end

    # Get List of Actions
    # Retrieves a list of all actions in the Composio platform.  This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.  Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names Name of the app like \"github\", \"linear\"
    # @option opts [String] :use_case Natural language usecase
    # @option opts [Boolean] :show_enabled_only Show actions enabled for the API Key
    # @option opts [String] :limit Limit of apis (default to '10')
    # @return [ActionsGetListResponse]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get List of Actions
    # Retrieves a list of all actions in the Composio platform.  This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action&#39;s name, display name, description, input parameters, expected response, associated app information, and enabled status.  Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :app_names Name of the app like \"github\", \"linear\"
    # @option opts [String] :use_case Natural language usecase
    # @option opts [Boolean] :show_enabled_only Show actions enabled for the API Key
    # @option opts [String] :limit Limit of apis (default to '10')
    # @return [APIResponse] data is ActionsGetListResponse, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActionsApi.list ...'
      end
      # resource path
      local_var_path = '/v1/actions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'appNames'] = opts[:'app_names'] if !opts[:'app_names'].nil?
      query_params[:'useCase'] = opts[:'use_case'] if !opts[:'use_case'].nil?
      query_params[:'showEnabledOnly'] = opts[:'show_enabled_only'] if !opts[:'show_enabled_only'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ActionsGetListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ActionsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActionsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Actions = ActionsApi::new
end
