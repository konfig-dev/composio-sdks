=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::WebhookReqDTO
describe Composio::WebhookReqDTO do
  let(:instance) { Composio::WebhookReqDTO.new }

  describe 'test an instance of WebhookReqDTO' do
    it 'should create an instance of WebhookReqDTO' do
      expect(instance).to be_instance_of(Composio::WebhookReqDTO)
    end
  end
  describe 'test attribute "event_webhook_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
