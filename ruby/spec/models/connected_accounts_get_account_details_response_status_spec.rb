=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::ConnectedAccountsGetAccountDetailsResponseStatus
describe Composio::ConnectedAccountsGetAccountDetailsResponseStatus do
  let(:instance) { Composio::ConnectedAccountsGetAccountDetailsResponseStatus.new }

  describe 'test an instance of ConnectedAccountsGetAccountDetailsResponseStatus' do
    it 'should create an instance of ConnectedAccountsGetAccountDetailsResponseStatus' do
      expect(instance).to be_instance_of(Composio::ConnectedAccountsGetAccountDetailsResponseStatus)
    end
  end
end
