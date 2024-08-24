=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class LoginApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Handle o auth 2 callback
    #
    # @param app_name [String] 
    # @param redirect_uri [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_auth2_callback(app_name:, redirect_uri: SENTINEL, extra: {})
      extra[:redirect_uri] = redirect_uri if redirect_uri != SENTINEL
      handle_auth2_callback_with_http_info_impl(app_name, extra)
      nil
    end

    # Handle o auth 2 callback
    #
    # @param app_name [String] 
    # @param redirect_uri [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_auth2_callback_with_http_info(app_name:, redirect_uri: SENTINEL, extra: {})
      extra[:redirect_uri] = redirect_uri if redirect_uri != SENTINEL
      handle_auth2_callback_with_http_info_impl(app_name, extra)
    end

    # Handle o auth 2 callback
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :redirect_uri 
    # @return [nil]
    private def handle_auth2_callback_impl(app_name, opts = {})
      handle_auth2_callback_with_http_info(app_name, opts)
      nil
    end

    # Handle o auth 2 callback
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :redirect_uri 
    # @return [APIResponse] data is nil, status code, headers and response
    private def handle_auth2_callback_with_http_info_impl(app_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoginApi.handle_auth2_callback ...'
      end
      # verify the required parameter 'app_name' is set
      if @api_client.config.client_side_validation && app_name.nil?
        fail ArgumentError, "Missing the required parameter 'app_name' when calling LoginApi.handle_auth2_callback"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && app_name !~ pattern
        fail ArgumentError, "invalid value for 'app_name' when calling LoginApi.handle_auth2_callback, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/login/{appName}/auth'.sub('{' + 'appName' + '}', CGI.escape(app_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'redirectUri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LoginApi.handle_auth2_callback",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoginApi#handle_auth2_callback\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Verify o auth 2 login
    #
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_o_auth2_login(app_name:, extra: {})
      verify_o_auth2_login_with_http_info_impl(app_name, extra)
      nil
    end

    # Verify o auth 2 login
    #
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def verify_o_auth2_login_with_http_info(app_name:, extra: {})
      verify_o_auth2_login_with_http_info_impl(app_name, extra)
    end

    # Verify o auth 2 login
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def verify_o_auth2_login_impl(app_name, opts = {})
      verify_o_auth2_login_with_http_info(app_name, opts)
      nil
    end

    # Verify o auth 2 login
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is nil, status code, headers and response
    private def verify_o_auth2_login_with_http_info_impl(app_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LoginApi.verify_o_auth2_login ...'
      end
      # verify the required parameter 'app_name' is set
      if @api_client.config.client_side_validation && app_name.nil?
        fail ArgumentError, "Missing the required parameter 'app_name' when calling LoginApi.verify_o_auth2_login"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && app_name !~ pattern
        fail ArgumentError, "invalid value for 'app_name' when calling LoginApi.verify_o_auth2_login, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/login/{appName}/callback'.sub('{' + 'appName' + '}', CGI.escape(app_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"LoginApi.verify_o_auth2_login",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LoginApi#verify_o_auth2_login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Login = LoginApi::new
end
