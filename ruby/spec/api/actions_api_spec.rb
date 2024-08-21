=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
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
  # Executes a specific action in the Composio platform.  This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.  Use this endpoint to execute actions available in the Composio platform for your end customer.   Executed will indicate whether the action was successfully executed. 
  # @param action_name The name of the action to execute.
  # @param [Hash] opts the optional parameters
  # @option opts [ActionsExecuteActionRequest] :actions_execute_action_request 
  # @return [ActionsExecuteActionResponse]
  describe 'execute test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get a Specific Action
  # Retrieves details of a specific action in the Composio platform.  This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier. The response includes the action&#39;s name, display name, description, input parameters, expected response, associated app information, and enabled status. Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements.  You can then pass this to function calling or use LLM to fill in the parameters. 
  # @param action_name The unique identifier of the action.
  # @param [Hash] opts the optional parameters
  # @return [ActionsGetSpecificActionResponse]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get List of Actions
  # Retrieves a list of all actions in the Composio platform.  This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action&#39;s name, display name, description, input parameters, expected response, associated app information, and enabled status.  Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :app_names Name of the app like \&quot;github\&quot;, \&quot;linear\&quot;
  # @option opts [String] :use_case Natural language usecase
  # @option opts [Boolean] :show_enabled_only Show actions enabled for the API Key
  # @option opts [String] :limit Limit of apis
  # @return [ActionsGetListResponse]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
