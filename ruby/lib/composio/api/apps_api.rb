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
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Apps = AppsApi::new
end
