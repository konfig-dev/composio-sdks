=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class PaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create checkout session
    #
    # @param plan [Plan] 
    # @param body [CreateCheckoutSessionReqDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_checkout_session(plan:, extra: {})
      _body = {}
      _body[:plan] = plan if plan != SENTINEL
      extra[:create_checkout_session_req_dto] = _body if !_body.empty?
      api_response = create_checkout_session_with_http_info_impl(extra)
      api_response.data
    end

    # Create checkout session
    #
    # @param plan [Plan] 
    # @param body [CreateCheckoutSessionReqDto] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_checkout_session_with_http_info(plan:, extra: {})
      _body = {}
      _body[:plan] = plan if plan != SENTINEL
      extra[:create_checkout_session_req_dto] = _body if !_body.empty?
      create_checkout_session_with_http_info_impl(extra)
    end

    # Create checkout session
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCheckoutSessionReqDto] :create_checkout_session_req_dto CreateCheckoutSessionReqDto
    # @return [Object]
    private def create_checkout_session_impl(opts = {})
      data, _status_code, _headers = create_checkout_session_with_http_info(opts)
      data
    end

    # Create checkout session
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCheckoutSessionReqDto] :create_checkout_session_req_dto CreateCheckoutSessionReqDto
    # @return [APIResponse] data is Object, status code, headers and response
    private def create_checkout_session_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.create_checkout_session ...'
      end
      # resource path
      local_var_path = '/api/v1/payment/create-checkout-session'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_checkout_session_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PaymentApi.create_checkout_session",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#create_checkout_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get checkout session status
    #
    # @param session_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_checkout_session_status(session_id:, extra: {})
      api_response = get_checkout_session_status_with_http_info_impl(session_id, extra)
      api_response.data
    end

    # Get checkout session status
    #
    # @param session_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_checkout_session_status_with_http_info(session_id:, extra: {})
      get_checkout_session_status_with_http_info_impl(session_id, extra)
    end

    # Get checkout session status
    # @param session_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def get_checkout_session_status_impl(session_id, opts = {})
      data, _status_code, _headers = get_checkout_session_status_with_http_info(session_id, opts)
      data
    end

    # Get checkout session status
    # @param session_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def get_checkout_session_status_with_http_info_impl(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.get_checkout_session_status ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling PaymentApi.get_checkout_session_status"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && session_id !~ pattern
        fail ArgumentError, "invalid value for 'session_id' when calling PaymentApi.get_checkout_session_status, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/payment/checkout-session/{sessionId}/status'.sub('{' + 'sessionId' + '}', CGI.escape(session_id.to_s))

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
        :operation => :"PaymentApi.get_checkout_session_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#get_checkout_session_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get invoice
    #
    # @param invoice_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_invoice(invoice_id:, extra: {})
      api_response = get_invoice_with_http_info_impl(invoice_id, extra)
      api_response.data
    end

    # Get invoice
    #
    # @param invoice_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_invoice_with_http_info(invoice_id:, extra: {})
      get_invoice_with_http_info_impl(invoice_id, extra)
    end

    # Get invoice
    # @param invoice_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def get_invoice_impl(invoice_id, opts = {})
      data, _status_code, _headers = get_invoice_with_http_info(invoice_id, opts)
      data
    end

    # Get invoice
    # @param invoice_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def get_invoice_with_http_info_impl(invoice_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.get_invoice ...'
      end
      # verify the required parameter 'invoice_id' is set
      if @api_client.config.client_side_validation && invoice_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_id' when calling PaymentApi.get_invoice"
      end
      pattern = Regexp.new(/[^\/#\?]+?/)
      if @api_client.config.client_side_validation && invoice_id !~ pattern
        fail ArgumentError, "invalid value for 'invoice_id' when calling PaymentApi.get_invoice, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/api/v1/payment/invoices/{invoiceId}'.sub('{' + 'invoiceId' + '}', CGI.escape(invoice_id.to_s))

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
        :operation => :"PaymentApi.get_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#get_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get invoices
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_invoices(extra: {})
      api_response = get_invoices_with_http_info_impl(extra)
      api_response.data
    end

    # Get invoices
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_invoices_with_http_info(extra: {})
      get_invoices_with_http_info_impl(extra)
    end

    # Get invoices
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def get_invoices_impl(opts = {})
      data, _status_code, _headers = get_invoices_with_http_info(opts)
      data
    end

    # Get invoices
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def get_invoices_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.get_invoices ...'
      end
      # resource path
      local_var_path = '/api/v1/payment/invoices'

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
        :operation => :"PaymentApi.get_invoices",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#get_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Handle stripe webhook
    #
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_stripe_webhook(body: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      api_response = handle_stripe_webhook_with_http_info_impl(extra)
      api_response.data
    end

    # Handle stripe webhook
    #
    # @param body [Object] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def handle_stripe_webhook_with_http_info(body: SENTINEL, extra: {})
      extra[:body] = body if body != SENTINEL
      handle_stripe_webhook_with_http_info_impl(extra)
    end

    # Handle stripe webhook
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [Object]
    private def handle_stripe_webhook_impl(opts = {})
      data, _status_code, _headers = handle_stripe_webhook_with_http_info(opts)
      data
    end

    # Handle stripe webhook
    # @param [Hash] opts the optional parameters
    # @option opts [Object] :body 
    # @return [APIResponse] data is Object, status code, headers and response
    private def handle_stripe_webhook_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.handle_stripe_webhook ...'
      end
      # resource path
      local_var_path = '/api/v1/payment/webhook'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"PaymentApi.handle_stripe_webhook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#handle_stripe_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Payment = PaymentApi::new
end
