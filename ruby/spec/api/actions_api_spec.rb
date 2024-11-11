=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::ActionsApi
describe 'ActionsApi' do
  before do
    # run before each test
    @api_instance = Composio::ActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActionsApi' do
    it 'should create an instance of ActionsApi' do
      expect(@api_instance).to be_instance_of(Composio::ActionsApi)
    end
  end

  # unit tests for execute
  # Execute action
  # Execute an action. Support both connected account and no auth auth.
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @option opts [ActionExecutionReqDTO] :action_execution_req_dto ActionExecutionReqDTO
  # @return [ActionExecutionResDto]
  describe 'execute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_action_proxy
  # Execute action proxy
  # Execute an action with direct auth.
  # @param endpoint 
  # @param connected_account_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionExecutionResDto]
  describe 'execute_action_proxy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_action_by_id
  # Get action
  # Get action details
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @return [ActionDetails]
  describe 'get_action_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_action_inputs
  # Get action inputs
  # Get the inputs for an action with NLA
  # @param action_id 
  # @param [Hash] opts the optional parameters
  # @option opts [ActionGetNLAInputsReqDTO] :action_get_nla_inputs_req_dto ActionGetNLAInputsReqDTO
  # @return [Object]
  describe 'get_action_inputs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_actions_based_on_query
  # List actions minimal
  # Retrieve a list of all actions based on query parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :use_case 
  # @option opts [Boolean] :show_enabled_only 
  # @option opts [Float] :limit 
  # @option opts [String] :apps 
  # @option opts [String] :actions 
  # @option opts [String] :tags 
  # @option opts [Float] :usecase_limit 
  # @option opts [Boolean] :filter_important_actions 
  # @option opts [Boolean] :show_all 
  # @option opts [Float] :page 
  # @option opts [Float] :offset 
  # @return [ActionsListResponseDTO]
  describe 'get_all_actions_based_on_query test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # List actions
  # Retrieve a list of all actions based on query parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names 
  # @option opts [String] :use_case 
  # @option opts [Boolean] :show_enabled_only 
  # @option opts [Float] :limit 
  # @option opts [String] :apps 
  # @option opts [String] :actions 
  # @option opts [String] :tags 
  # @option opts [Float] :usecase_limit 
  # @option opts [Boolean] :filter_important_actions 
  # @option opts [Boolean] :show_all 
  # @option opts [Float] :page 
  # @option opts [Float] :offset 
  # @return [ActionsListResponseDTO]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
