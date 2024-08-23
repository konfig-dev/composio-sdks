=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::TeamApi
describe 'TeamApi' do
  before do
    # run before each test
    @api_instance = Composio::TeamApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamApi' do
    it 'should create an instance of TeamApi' do
      expect(@api_instance).to be_instance_of(Composio::TeamApi)
    end
  end

  # unit tests for get_member_list
  # List members
  # @param [Hash] opts the optional parameters
  # @return [Array<MemberResDTO>]
  describe 'get_member_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_member_by_id
  # Remove member
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_member_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_invitation
  # Invite member
  # @param [Hash] opts the optional parameters
  # @option opts [InviteMemberReqDTO] :invite_member_req_dto InviteMemberReqDTO
  # @return [MemberResDTO]
  describe 'send_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
