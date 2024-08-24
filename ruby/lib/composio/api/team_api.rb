=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Composio
  class TeamApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List members
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_member_list(extra: {})
      api_response = get_member_list_with_http_info_impl(extra)
      api_response.data
    end

    # List members
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_member_list_with_http_info(extra: {})
      get_member_list_with_http_info_impl(extra)
    end

    # List members
    # @param [Hash] opts the optional parameters
    # @return [Array<MemberResDTO>]
    private def get_member_list_impl(opts = {})
      data, _status_code, _headers = get_member_list_with_http_info(opts)
      data
    end

    # List members
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<MemberResDTO>, status code, headers and response
    private def get_member_list_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.get_member_list ...'
      end
      # resource path
      local_var_path = '/api/v1/team/members'

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
      return_type = opts[:debug_return_type] || 'Array<MemberResDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TeamApi.get_member_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#get_member_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Invite member
    #
    # @param email [String] The email of the member
    # @param name [String] The name of the member
    # @param verify_host [String] The host to verify the member
    # @param body [InviteMemberReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_invitation(email:, name:, verify_host:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:invite_member_req_dto] = _body if !_body.empty?
      api_response = send_invitation_with_http_info_impl(extra)
      api_response.data
    end

    # Invite member
    #
    # @param email [String] The email of the member
    # @param name [String] The name of the member
    # @param verify_host [String] The host to verify the member
    # @param body [InviteMemberReqDTO] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def send_invitation_with_http_info(email:, name:, verify_host:, extra: {})
      _body = {}
      _body[:email] = email if email != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:verifyHost] = verify_host if verify_host != SENTINEL
      extra[:invite_member_req_dto] = _body if !_body.empty?
      send_invitation_with_http_info_impl(extra)
    end

    # Invite member
    # @param [Hash] opts the optional parameters
    # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
    # @return [MemberResDTO]
    private def send_invitation_impl(opts = {})
      data, _status_code, _headers = send_invitation_with_http_info(opts)
      data
    end

    # Invite member
    # @param [Hash] opts the optional parameters
    # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
    # @return [APIResponse] data is MemberResDTO, status code, headers and response
    private def send_invitation_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.send_invitation ...'
      end
      # resource path
      local_var_path = '/api/v1/team/invite'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'invite_member_req_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'MemberResDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"TeamApi.send_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#send_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Team = TeamApi::new
end
