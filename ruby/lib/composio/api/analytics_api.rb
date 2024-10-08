=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class AnalyticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get analytics
    #
    # @param last_time_period [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get(last_time_period: SENTINEL, extra: {})
      extra[:last_time_period] = last_time_period if last_time_period != SENTINEL
      api_response = get_with_http_info_impl(extra)
      api_response.data
    end

    # Get analytics
    #
    # @param last_time_period [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_with_http_info(last_time_period: SENTINEL, extra: {})
      extra[:last_time_period] = last_time_period if last_time_period != SENTINEL
      get_with_http_info_impl(extra)
    end

    # Get analytics
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_time_period 
    # @return [AnalyticsDataResDTO]
    private def get_impl(opts = {})
      data, _status_code, _headers = get_with_http_info(opts)
      data
    end

    # Get analytics
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_time_period 
    # @return [APIResponse] data is AnalyticsDataResDTO, status code, headers and response
    private def get_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.get ...'
      end
      allowable_values = ["DAY", "WEEK", "MONTH", "SIX_MONTH", "YEAR", "FIVE_YEAR"]
      if @api_client.config.client_side_validation && opts[:'last_time_period'] && !allowable_values.include?(opts[:'last_time_period'])
        fail ArgumentError, "invalid value for \"last_time_period\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/analytics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'lastTimePeriod'] = opts[:'last_time_period'] if !opts[:'last_time_period'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AnalyticsDataResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get top entities
    #
    # @param query [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_top_entities(query: SENTINEL, extra: {})
      extra[:query] = query if query != SENTINEL
      api_response = get_top_entities_with_http_info_impl(extra)
      api_response.data
    end

    # Get top entities
    #
    # @param query [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_top_entities_with_http_info(query: SENTINEL, extra: {})
      extra[:query] = query if query != SENTINEL
      get_top_entities_with_http_info_impl(extra)
    end

    # Get top entities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query 
    # @return [TopEntitiesResDTO]
    private def get_top_entities_impl(opts = {})
      data, _status_code, _headers = get_top_entities_with_http_info(opts)
      data
    end

    # Get top entities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :query 
    # @return [APIResponse] data is TopEntitiesResDTO, status code, headers and response
    private def get_top_entities_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AnalyticsApi.get_top_entities ...'
      end
      # resource path
      local_var_path = '/api/v1/analytics/entities'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TopEntitiesResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"AnalyticsApi.get_top_entities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnalyticsApi#get_top_entities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Analytics = AnalyticsApi::new
end
