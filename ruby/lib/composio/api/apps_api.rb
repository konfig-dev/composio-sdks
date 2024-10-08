=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete open api spec tool
    #
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_open_api_spec_tool(id:, extra: {})
      api_response = delete_open_api_spec_tool_with_http_info_impl(id, extra)
      api_response.data
    end

    # Delete open api spec tool
    #
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_open_api_spec_tool_with_http_info(id:, extra: {})
      delete_open_api_spec_tool_with_http_info_impl(id, extra)
    end

    # Delete open api spec tool
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def delete_open_api_spec_tool_impl(id, opts = {})
      data, _status_code, _headers = delete_open_api_spec_tool_with_http_info(id, opts)
      data
    end

    # Delete open api spec tool
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def delete_open_api_spec_tool_with_http_info_impl(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.delete_open_api_spec_tool ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AppsApi.delete_open_api_spec_tool"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling AppsApi.delete_open_api_spec_tool, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/apps/openapi/spec/delete/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.delete_open_api_spec_tool",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#delete_open_api_spec_tool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get app
    #
    # Get app details
    #
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_details(app_name:, extra: {})
      api_response = get_details_with_http_info_impl(app_name, extra)
      api_response.data
    end

    # Get app
    #
    # Get app details
    #
    # @param app_name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_details_with_http_info(app_name:, extra: {})
      get_details_with_http_info_impl(app_name, extra)
    end

    # Get app
    # Get app details
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [SingleAppInfoResDTO]
    private def get_details_impl(app_name, opts = {})
      data, _status_code, _headers = get_details_with_http_info(app_name, opts)
      data
    end

    # Get app
    # Get app details
    # @param app_name [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is SingleAppInfoResDTO, status code, headers and response
    private def get_details_with_http_info_impl(app_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_details ...'
      end
      # verify the required parameter 'app_name' is set
      if @api_client.config.client_side_validation && app_name.nil?
        fail ArgumentError, "Missing the required parameter 'app_name' when calling AppsApi.get_details"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && app_name !~ pattern
        fail ArgumentError, "invalid value for 'app_name' when calling AppsApi.get_details, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/apps/{appName}'.sub('{' + 'appName' + '}', CGI.escape(app_name.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleAppInfoResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.get_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#get_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get open api spec status
    #
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_open_api_spec_status(id:, extra: {})
      api_response = get_open_api_spec_status_with_http_info_impl(id, extra)
      api_response.data
    end

    # Get open api spec status
    #
    # @param id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_open_api_spec_status_with_http_info(id:, extra: {})
      get_open_api_spec_status_with_http_info_impl(id, extra)
    end

    # Get open api spec status
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def get_open_api_spec_status_impl(id, opts = {})
      data, _status_code, _headers = get_open_api_spec_status_with_http_info(id, opts)
      data
    end

    # Get open api spec status
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def get_open_api_spec_status_with_http_info_impl(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.get_open_api_spec_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AppsApi.get_open_api_spec_status"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling AppsApi.get_open_api_spec_status, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/apps/openapi/spec/status/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.get_open_api_spec_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#get_open_api_spec_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get apps
    #
    # Retrieve a list of all applications based on query parameters.
    #
    # @param category [String] 
    # @param include_local [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(category: SENTINEL, include_local: SENTINEL, extra: {})
      extra[:category] = category if category != SENTINEL
      extra[:include_local] = include_local if include_local != SENTINEL
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # Get apps
    #
    # Retrieve a list of all applications based on query parameters.
    #
    # @param category [String] 
    # @param include_local [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(category: SENTINEL, include_local: SENTINEL, extra: {})
      extra[:category] = category if category != SENTINEL
      extra[:include_local] = include_local if include_local != SENTINEL
      list_with_http_info_impl(extra)
    end

    # Get apps
    # Retrieve a list of all applications based on query parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @option opts [String] :include_local 
    # @return [AppListResDTO]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # Get apps
    # Retrieve a list of all applications based on query parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @option opts [String] :include_local 
    # @return [APIResponse] data is AppListResDTO, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.list ...'
      end
      # resource path
      local_var_path = '/api/v1/apps'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?
      query_params[:'includeLocal'] = opts[:'include_local'] if !opts[:'include_local'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AppListResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get opena api specs
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_open_api_specs(extra: {})
      api_response = list_open_api_specs_with_http_info_impl(extra)
      api_response.data
    end

    # Get opena api specs
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_open_api_specs_with_http_info(extra: {})
      list_open_api_specs_with_http_info_impl(extra)
    end

    # Get opena api specs
    # @param [Hash] opts the optional parameters
    # @return [Array<AppListResDTO>]
    private def list_open_api_specs_impl(opts = {})
      data, _status_code, _headers = list_open_api_specs_with_http_info(opts)
      data
    end

    # Get opena api specs
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<AppListResDTO>, status code, headers and response
    private def list_open_api_specs_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.list_open_api_specs ...'
      end
      # resource path
      local_var_path = '/api/v1/apps/openapi/spec/list'

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
      return_type = opts[:debug_return_type] || 'Array<AppListResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.list_open_api_specs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#list_open_api_specs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Send email to client
    #
    # @param admin_token [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_email_to_client(admin_token: SENTINEL, body: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      extra[:admin_token] = admin_token if admin_token != SENTINEL
      api_response = send_email_to_client_with_http_info_impl(extra)
      api_response.data
    end

    # Send email to client
    #
    # @param admin_token [String] 
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_email_to_client_with_http_info(admin_token: SENTINEL, body: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      extra[:admin_token] = admin_token if admin_token != SENTINEL
      send_email_to_client_with_http_info_impl(extra)
    end

    # Send email to client
    # @param [Hash] opts the optional parameters
    # @option opts [String] :admin_token 
    # @option opts [Object] :body 
    # @return [Object]
    private def send_email_to_client_impl(opts = {})
      data, _status_code, _headers = send_email_to_client_with_http_info(opts)
      data
    end

    # Send email to client
    # @param [Hash] opts the optional parameters
    # @option opts [String] :admin_token 
    # @option opts [Object] :body 
    # @return [APIResponse] data is Object, status code, headers and response
    private def send_email_to_client_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.send_email_to_client ...'
      end
      # resource path
      local_var_path = '/api/v1/apps/openapi/send_email_to_client'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'adminToken'] = opts[:'admin_token'] if !opts[:'admin_token'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AppsApi.send_email_to_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AppsApi#send_email_to_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Apps = AppsApi::new
end
