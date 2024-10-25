=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class AdminApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Jssentry dns
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_sentry_dns(extra: {})
      api_response = get_sentry_dns_with_http_info_impl(extra)
      api_response.data
    end

    # Jssentry dns
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_sentry_dns_with_http_info(extra: {})
      get_sentry_dns_with_http_info_impl(extra)
    end

    # Jssentry dns
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def get_sentry_dns_impl(opts = {})
      data, _status_code, _headers = get_sentry_dns_with_http_info(opts)
      data
    end

    # Jssentry dns
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def get_sentry_dns_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdminApi.get_sentry_dns ...'
      end
      # resource path
      local_var_path = '/api/v1/cli/js-sentry-dns'

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
        :operation => :"AdminApi.get_sentry_dns",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdminApi#get_sentry_dns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Admin = AdminApi::new
end
