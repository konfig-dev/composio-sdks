=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::UpdateMemberReqDtoRole
describe Composio::UpdateMemberReqDtoRole do
  let(:instance) { Composio::UpdateMemberReqDtoRole.new }

  describe 'test an instance of UpdateMemberReqDtoRole' do
    it 'should create an instance of UpdateMemberReqDtoRole' do
      expect(instance).to be_instance_of(Composio::UpdateMemberReqDtoRole)
    end
  end
end
