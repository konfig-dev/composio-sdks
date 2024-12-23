=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::AppsApi
describe 'AppsApi' do
  before do
    # run before each test
    @api_instance = Composio::AppsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppsApi' do
    it 'should create an instance of AppsApi' do
      expect(@api_instance).to be_instance_of(Composio::AppsApi)
    end
  end

  # unit tests for delete_open_api_spec_tool
  # Delete open api spec tool
  # Delete an openapi spec tool
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_open_api_spec_tool test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_details
  # Get app
  # Get app details
  # @param app_name 
  # @param [Hash] opts the optional parameters
  # @return [SingleAppInfoResDTO]
  describe 'get_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_open_api_spec_status
  # Get open api spec status
  # Get the status of an openapi spec tool
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_open_api_spec_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # Get apps
  # Retrieve a list of all applications based on query parameters.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :category 
  # @option opts [String] :additional_fields 
  # @option opts [String] :include_local 
  # @return [AppListResDTO]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_open_api_specs
  # Get opena api specs
  # List all openapi spec tools
  # @param [Hash] opts the optional parameters
  # @return [Array<AppListResDTO>]
  describe 'list_open_api_specs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for send_email_to_client
  # Send email to client
  # @param [Hash] opts the optional parameters
  # @option opts [String] :admin_token 
  # @option opts [Object] :body 
  # @return [Object]
  describe 'send_email_to_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
