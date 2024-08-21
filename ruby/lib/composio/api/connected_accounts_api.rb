=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'cgi'

module Composio
  class ConnectedAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Connect an Account
    #
    # Connect an account
    # 
    # This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.
    # 
    # Use this endpoint to initiate the process of connecting an external app for your end user.
    #
    # @param integration_id [String] 
    # @param redirect_uri [String] 
    # @param body [ConnectedAccountsCreateConnectionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_connection(integration_id:, redirect_uri: SENTINEL, extra: {})
      _body = {}
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      extra[:connected_accounts_create_connection_request] = _body if !_body.empty?
      api_response = create_connection_with_http_info_impl(extra)
      api_response.data
    end

    # Connect an Account
    #
    # Connect an account
    # 
    # This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.
    # 
    # Use this endpoint to initiate the process of connecting an external app for your end user.
    #
    # @param integration_id [String] 
    # @param redirect_uri [String] 
    # @param body [ConnectedAccountsCreateConnectionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_connection_with_http_info(integration_id:, redirect_uri: SENTINEL, extra: {})
      _body = {}
      _body[:integrationId] = integration_id if integration_id != SENTINEL
      _body[:redirectUri] = redirect_uri if redirect_uri != SENTINEL
      extra[:connected_accounts_create_connection_request] = _body if !_body.empty?
      create_connection_with_http_info_impl(extra)
    end

    # Connect an Account
    # Connect an account  This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.  Use this endpoint to initiate the process of connecting an external app for your end user.
    # @param [Hash] opts the optional parameters
    # @option opts [ConnectedAccountsCreateConnectionRequest] :connected_accounts_create_connection_request 
    # @return [ConnectedAccountsCreateConnectionResponse]
    private def create_connection_impl(opts = {})
      data, _status_code, _headers = create_connection_with_http_info(opts)
      data
    end

    # Connect an Account
    # Connect an account  This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.  Use this endpoint to initiate the process of connecting an external app for your end user.
    # @param [Hash] opts the optional parameters
    # @option opts [ConnectedAccountsCreateConnectionRequest] :connected_accounts_create_connection_request 
    # @return [APIResponse] data is ConnectedAccountsCreateConnectionResponse, status code, headers and response
    private def create_connection_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAccountsApi.create_connection ...'
      end
      # resource path
      local_var_path = '/v1/connectedAccounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'connected_accounts_create_connection_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectedAccountsCreateConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ConnectedAccountsApi.create_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAccountsApi#create_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get a Connected Account
    #
    # Retrieves details of a specific account connected to the Composio platform by providing its connected account ID. 
    # The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.
    #
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_account_details(connected_account_id:, extra: {})
      api_response = get_account_details_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Get a Connected Account
    #
    # Retrieves details of a specific account connected to the Composio platform by providing its connected account ID. 
    # The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.
    #
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_account_details_with_http_info(connected_account_id:, extra: {})
      get_account_details_with_http_info_impl(connected_account_id, extra)
    end

    # Get a Connected Account
    # Retrieves details of a specific account connected to the Composio platform by providing its connected account ID.  The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAccountsGetAccountDetailsResponse]
    private def get_account_details_impl(connected_account_id, opts = {})
      data, _status_code, _headers = get_account_details_with_http_info(connected_account_id, opts)
      data
    end

    # Get a Connected Account
    # Retrieves details of a specific account connected to the Composio platform by providing its connected account ID.  The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ConnectedAccountsGetAccountDetailsResponse, status code, headers and response
    private def get_account_details_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAccountsApi.get_account_details ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectedAccountsApi.get_account_details"
      end
      # resource path
      local_var_path = '/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConnectedAccountsGetAccountDetailsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ConnectedAccountsApi.get_account_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAccountsApi#get_account_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List All Connected Accounts
    #
    # Retrieves a list of all connected accounts in the Composio platform. 
    # 
    # It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.
    # 
    # Use this endpoint to manage and monitor all active connections.  
    #
    # @param page [Integer] Page number to fetch
    # @param page_size [Integer] Page size to assume
    # @param integration_id [String] Filter by using specific Integration
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(page: SENTINEL, page_size: SENTINEL, integration_id: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # List All Connected Accounts
    #
    # Retrieves a list of all connected accounts in the Composio platform. 
    # 
    # It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.
    # 
    # Use this endpoint to manage and monitor all active connections.  
    #
    # @param page [Integer] Page number to fetch
    # @param page_size [Integer] Page size to assume
    # @param integration_id [String] Filter by using specific Integration
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(page: SENTINEL, page_size: SENTINEL, integration_id: SENTINEL, extra: {})
      extra[:page] = page if page != SENTINEL
      extra[:page_size] = page_size if page_size != SENTINEL
      extra[:integration_id] = integration_id if integration_id != SENTINEL
      list_with_http_info_impl(extra)
    end

    # List All Connected Accounts
    # Retrieves a list of all connected accounts in the Composio platform.   It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.  Use this endpoint to manage and monitor all active connections.  
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number to fetch
    # @option opts [Integer] :page_size Page size to assume
    # @option opts [String] :integration_id Filter by using specific Integration
    # @return [ConnectedAccountsListAllResponse]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List All Connected Accounts
    # Retrieves a list of all connected accounts in the Composio platform.   It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.  Use this endpoint to manage and monitor all active connections.  
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number to fetch
    # @option opts [Integer] :page_size Page size to assume
    # @option opts [String] :integration_id Filter by using specific Integration
    # @return [APIResponse] data is ConnectedAccountsListAllResponse, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAccountsApi.list ...'
      end
      # resource path
      local_var_path = '/v1/connectedAccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'integrationId'] = opts[:'integration_id'] if !opts[:'integration_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectedAccountsListAllResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ConnectedAccountsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAccountsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete a Connected Account
    #
    # Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation.
    # Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.
    #
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_connection(connected_account_id:, extra: {})
      api_response = remove_connection_with_http_info_impl(connected_account_id, extra)
      api_response.data
    end

    # Delete a Connected Account
    #
    # Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation.
    # Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.
    #
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_connection_with_http_info(connected_account_id:, extra: {})
      remove_connection_with_http_info_impl(connected_account_id, extra)
    end

    # Delete a Connected Account
    # Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation. Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] opts the optional parameters
    # @return [ConnectedAccountsRemoveConnectionResponse]
    private def remove_connection_impl(connected_account_id, opts = {})
      data, _status_code, _headers = remove_connection_with_http_info(connected_account_id, opts)
      data
    end

    # Delete a Connected Account
    # Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation. Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.
    # @param connected_account_id [String] The unique identifier of the connection.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ConnectedAccountsRemoveConnectionResponse, status code, headers and response
    private def remove_connection_with_http_info_impl(connected_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectedAccountsApi.remove_connection ...'
      end
      # verify the required parameter 'connected_account_id' is set
      if @api_client.config.client_side_validation && connected_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'connected_account_id' when calling ConnectedAccountsApi.remove_connection"
      end
      # resource path
      local_var_path = '/v1/connectedAccounts/{connectedAccountId}'.sub('{' + 'connectedAccountId' + '}', CGI.escape(connected_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConnectedAccountsRemoveConnectionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

      new_options = opts.merge(
        :operation => :"ConnectedAccountsApi.remove_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectedAccountsApi#remove_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  ConnectedAccounts = ConnectedAccountsApi::new
end
