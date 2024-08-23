=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::CreateConnectorPayloadDTOUseComposioAuth
describe Composio::CreateConnectorPayloadDTOUseComposioAuth do
  let(:instance) { Composio::CreateConnectorPayloadDTOUseComposioAuth.new }

  describe 'test an instance of CreateConnectorPayloadDTOUseComposioAuth' do
    it 'should create an instance of CreateConnectorPayloadDTOUseComposioAuth' do
      expect(instance).to be_instance_of(Composio::CreateConnectorPayloadDTOUseComposioAuth)
    end
  end
end
