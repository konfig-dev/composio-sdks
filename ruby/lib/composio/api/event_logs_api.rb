=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class EventLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Update webhook
    #
    # @param event_webhook_url [String] Event Webhook URL
    # @param body [WebhookReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_webhook(event_webhook_url:, extra: {})
      _body = {}
      _body[:eventWebhookURL] = event_webhook_url if event_webhook_url != SENTINEL
      extra[:webhook_req_dto] = _body if !_body.empty?
      api_response = update_webhook_with_http_info_impl(extra)
      api_response.data
    end

    # Update webhook
    #
    # @param event_webhook_url [String] Event Webhook URL
    # @param body [WebhookReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_webhook_with_http_info(event_webhook_url:, extra: {})
      _body = {}
      _body[:eventWebhookURL] = event_webhook_url if event_webhook_url != SENTINEL
      extra[:webhook_req_dto] = _body if !_body.empty?
      update_webhook_with_http_info_impl(extra)
    end

    # Update webhook
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookReqDTO] :webhook_req_dto WebhookReqDTO
    # @return [Object]
    private def update_webhook_impl(opts = {})
      data, _status_code, _headers = update_webhook_with_http_info(opts)
      data
    end

    # Update webhook
    # @param [Hash] opts the optional parameters
    # @option opts [WebhookReqDTO] :webhook_req_dto WebhookReqDTO
    # @return [APIResponse] data is Object, status code, headers and response
    private def update_webhook_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventLogsApi.update_webhook ...'
      end
      # resource path
      local_var_path = '/api/v1/event_logs/set/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'webhook_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"EventLogsApi.update_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventLogsApi#update_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  EventLogs = EventLogsApi::new
end
