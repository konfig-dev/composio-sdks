=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'cgi'

module Composio
  class AppsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List All Apps
    #
    # Retrieves a list of all available apps in the Composio platform.
    # 
    # This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app's key, name, description, logo, categories, and unique identifier.
    # 
    # Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(extra: {})
      api_response = list_with_http_info_impl(extra)
      api_response.data
    end

    # List All Apps
    #
    # Retrieves a list of all available apps in the Composio platform.
    # 
    # This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app's key, name, description, logo, categories, and unique identifier.
    # 
    # Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(extra: {})
      list_with_http_info_impl(extra)
    end

    # List All Apps
    # Retrieves a list of all available apps in the Composio platform.  This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app's key, name, description, logo, categories, and unique identifier.  Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.
    # @param [Hash] opts the optional parameters
    # @return [AppsGetAllAppsResponse]
    private def list_impl(opts = {})
      data, _status_code, _headers = list_with_http_info(opts)
      data
    end

    # List All Apps
    # Retrieves a list of all available apps in the Composio platform.  This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app&#39;s key, name, description, logo, categories, and unique identifier.  Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is AppsGetAllAppsResponse, status code, headers and response
    private def list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AppsApi.list ...'
      end
      # resource path
      local_var_path = '/v1/apps'

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
      return_type = opts[:debug_return_type] || 'AppsGetAllAppsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['authToken']

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
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Apps = AppsApi::new
end
