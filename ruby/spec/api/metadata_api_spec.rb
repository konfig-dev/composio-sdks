=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::MetadataApi
describe 'MetadataApi' do
  before do
    # run before each test
    @api_instance = Composio::MetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetadataApi' do
    it 'should create an instance of MetadataApi' do
      expect(@api_instance).to be_instance_of(Composio::MetadataApi)
    end
  end

  # unit tests for get_toggle_info
  # Get toggle info
  # @param [Hash] opts the optional parameters
  # @return [TriggerToggleInfoResponseDTO]
  describe 'get_toggle_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for toggle_trigger_state
  # Toggle trigger state
  # @param [Hash] opts the optional parameters
  # @option opts [TriggersEnabledToggleReqDTO] :triggers_enabled_toggle_req_dto TriggersEnabledToggleReqDTO
  # @return [ToggleTriggerStateResponseDTO]
  describe 'toggle_trigger_state test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
