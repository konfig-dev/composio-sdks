=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::EventLogsApi
describe 'EventLogsApi' do
  before do
    # run before each test
    @api_instance = Composio::EventLogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventLogsApi' do
    it 'should create an instance of EventLogsApi' do
      expect(@api_instance).to be_instance_of(Composio::EventLogsApi)
    end
  end

  # unit tests for update_webhook
  # Update webhook
  # @param [Hash] opts the optional parameters
  # @option opts [WebhookReqDTO] :webhook_req_dto WebhookReqDTO
  # @return [Object]
  describe 'update_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
