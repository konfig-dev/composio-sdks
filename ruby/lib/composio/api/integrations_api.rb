=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'cgi'

module Composio
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new integration
    #
    # This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.
    #
    # @param name [String] The name of the connector.
    # @param auth_scheme [AuthScheme] The authentication scheme used by the connector (e.g., \"OAUTH2\", \"API_KEY\").
    # @param app_id [String] The unique identifier of the app associated with the connector.
    # @param auth_config [IntegrationsCreateNewIntegrationRequestAuthConfig] 
    # @param use_composio_auth [Boolean] Use default Composio credentials to proceed. The developer app credentials will be of Composio. 
    # @param body [IntegrationsCreateNewIntegrationRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create(name: SENTINEL, auth_scheme: SENTINEL, app_id: SENTINEL, auth_config: SENTINEL, use_composio_auth: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:authScheme] = auth_scheme if auth_scheme != SENTINEL
      _body[:appId] = app_id if app_id != SENTINEL
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:useComposioAuth] = use_composio_auth if use_composio_auth != SENTINEL
      extra[:integrations_create_new_integration_request] = _body if !_body.empty?
      api_response = create_with_http_info_impl(extra)
      api_response.data
    end

    # Create a new integration
    #
    # This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.
    #
    # @param name [String] The name of the connector.
    # @param auth_scheme [AuthScheme] The authentication scheme used by the connector (e.g., \"OAUTH2\", \"API_KEY\").
    # @param app_id [String] The unique identifier of the app associated with the connector.
    # @param auth_config [IntegrationsCreateNewIntegrationRequestAuthConfig] 
    # @param use_composio_auth [Boolean] Use default Composio credentials to proceed. The developer app credentials will be of Composio. 
    # @param body [IntegrationsCreateNewIntegrationRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_with_http_info(name: SENTINEL, auth_scheme: SENTINEL, app_id: SENTINEL, auth_config: SENTINEL, use_composio_auth: SENTINEL, extra: {})
      _body = {}
      _body[:name] = name if name != SENTINEL
      _body[:authScheme] = auth_scheme if auth_scheme != SENTINEL
      _body[:appId] = app_id if app_id != SENTINEL
      _body[:authConfig] = auth_config if auth_config != SENTINEL
      _body[:useComposioAuth] = use_composio_auth if use_composio_auth != SENTINEL
      extra[:integrations_create_new_integration_request] = _body if !_body.empty?
      create_with_http_info_impl(extra)
    end

    # Create a new integration
    # This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.
    # @param [Hash] opts the optional parameters
    # @option opts [IntegrationsCreateNewIntegrationRequest] :integrations_create_new_integration_request 
    # @return [IntegrationsCreateNewIntegrationResponse]
    private def create_impl(opts = {})
      data, _status_code, _headers = create_with_http_info(opts)
      data
    end

    # Create a new integration
    # This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.
    # @param [Hash] opts the optional parameters
    # @option opts [IntegrationsCreateNewIntegrationRequest] :integrations_create_new_integration_request 
    # @return [APIResponse] data is IntegrationsCreateNewIntegrationResponse, status code, headers and response
    private def create_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.create ...'
      end
      # resource path
      local_var_path = '/v1/integrations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'integrations_create_new_integration_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'IntegrationsCreateNewIntegrationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get an Integration
    #
    # Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector's name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.
    # 
    # Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection. 
    # 
    # You will also get parameters that are required to be captured from end user to connect an account using this connector. 
    # ex. API Key or subdomain URL. 
    # 
    # If the end-user selects this flow, collect the parameters and connect an account using it. 
    #
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get(integration_id:, extra: {})
      api_response = get_with_http_info_impl(integration_id, extra)
      api_response.data
    end

    # Get an Integration
    #
    # Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector's name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.
    # 
    # Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection. 
    # 
    # You will also get parameters that are required to be captured from end user to connect an account using this connector. 
    # ex. API Key or subdomain URL. 
    # 
    # If the end-user selects this flow, collect the parameters and connect an account using it. 
    #
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_with_http_info(integration_id:, extra: {})
      get_with_http_info_impl(integration_id, extra)
    end

    # Get an Integration
    # Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector's name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.  Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection.   You will also get parameters that are required to be captured from end user to connect an account using this connector.  ex. API Key or subdomain URL.   If the end-user selects this flow, collect the parameters and connect an account using it. 
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationsGetIntegrationDetailsResponse]
    private def get_impl(integration_id, opts = {})
      data, _status_code, _headers = get_with_http_info(integration_id, opts)
      data
    end

    # Get an Integration
    # Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector&#39;s name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.  Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection.   You will also get parameters that are required to be captured from end user to connect an account using this connector.  ex. API Key or subdomain URL.   If the end-user selects this flow, collect the parameters and connect an account using it. 
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is IntegrationsGetIntegrationDetailsResponse, status code, headers and response
    private def get_with_http_info_impl(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get ...'
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.get"
      end
      # resource path
      local_var_path = '/v1/integrations/{integrationId}'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

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
      return_type = opts[:debug_return_type] || 'IntegrationsGetIntegrationDetailsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List All Integrations
    #
    # Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector's ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.
    # 
    # This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 
    #
    # @param page [Integer] Page number to fetch
    # @param page_size [Integer] Page Size to assume
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(page: SENTINEL, page_size: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # List All Integrations
    #
    # Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector's ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.
    # 
    # This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 
    #
    # @param page [Integer] Page number to fetch
    # @param page_size [Integer] Page Size to assume
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(page: SENTINEL, page_size: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      list_with_http_info_impl(extra)
    end

    # List All Integrations
    # Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector's ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.  This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number to fetch
    # @option opts [Integer] :page_size Page Size to assume
    # @return [IntegrationsListAllResponse]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List All Integrations
    # Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector&#39;s ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.  This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number to fetch
    # @option opts [Integer] :page_size Page Size to assume
    # @return [APIResponse] data is IntegrationsListAllResponse, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list ...'
      end
      # resource path
      local_var_path = '/v1/integrations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IntegrationsListAllResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Update an Integration
    #
    # Updates the settings of a specific integration in the Composio platform.
    # 
    # This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.
    # 
    # Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.
    #
    # @param integration_id [String] The unique identifier of the integration.
    # @param enabled [Boolean] All the parameters that you see in the GET connector
    # @param body [IntegrationsUpdateIntegrationSettingsRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update(integration_id:, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:integrations_update_integration_settings_request] = _body if !_body.empty?
      api_response = update_with_http_info_impl(integration_id, extra)
      api_response.data
    end

    # Update an Integration
    #
    # Updates the settings of a specific integration in the Composio platform.
    # 
    # This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.
    # 
    # Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.
    #
    # @param integration_id [String] The unique identifier of the integration.
    # @param enabled [Boolean] All the parameters that you see in the GET connector
    # @param body [IntegrationsUpdateIntegrationSettingsRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_with_http_info(integration_id:, enabled: SENTINEL, extra: {})
      _body = {}
      _body[:enabled] = enabled if enabled != SENTINEL
      extra[:integrations_update_integration_settings_request] = _body if !_body.empty?
      update_with_http_info_impl(integration_id, extra)
    end

    # Update an Integration
    # Updates the settings of a specific integration in the Composio platform.  This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.  Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] opts the optional parameters
    # @option opts [IntegrationsUpdateIntegrationSettingsRequest] :integrations_update_integration_settings_request 
    # @return [IntegrationsUpdateIntegrationSettingsResponse]
    private def update_impl(integration_id, opts = {})
      data, _status_code, _headers = update_with_http_info(integration_id, opts)
      data
    end

    # Update an Integration
    # Updates the settings of a specific integration in the Composio platform.  This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.  Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.
    # @param integration_id [String] The unique identifier of the integration.
    # @param [Hash] opts the optional parameters
    # @option opts [IntegrationsUpdateIntegrationSettingsRequest] :integrations_update_integration_settings_request 
    # @return [APIResponse] data is IntegrationsUpdateIntegrationSettingsResponse, status code, headers and response
    private def update_with_http_info_impl(integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.update ...'
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationsApi.update"
      end
      # resource path
      local_var_path = '/v1/integrations/{integrationId}'.sub('{' + 'integrationId' + '}', CGI.escape(integration_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'integrations_update_integration_settings_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'IntegrationsUpdateIntegrationSettingsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Integrations = IntegrationsApi::new
end
