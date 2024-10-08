=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Composio::PaymentApi
describe 'PaymentApi' do
  before do
    # run before each test
    @api_instance = Composio::PaymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentApi' do
    it 'should create an instance of PaymentApi' do
      expect(@api_instance).to be_instance_of(Composio::PaymentApi)
    end
  end

  # unit tests for create_checkout_session
  # Create checkout session
  # @param [Hash] opts the optional parameters
  # @option opts [CreateCheckoutSessionReqDto] :create_checkout_session_req_dto CreateCheckoutSessionReqDto
  # @return [Object]
  describe 'create_checkout_session test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_checkout_session_status
  # Get checkout session status
  # @param session_id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_checkout_session_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invoice
  # Get invoice
  # @param invoice_id 
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_invoices
  # Get invoices
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_invoices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for handle_stripe_webhook
  # Handle stripe webhook
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [Object]
  describe 'handle_stripe_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
