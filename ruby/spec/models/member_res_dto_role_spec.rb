=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::MemberResDtoRole
describe Composio::MemberResDtoRole do
  let(:instance) { Composio::MemberResDtoRole.new }

  describe 'test an instance of MemberResDtoRole' do
    it 'should create an instance of MemberResDtoRole' do
      expect(instance).to be_instance_of(Composio::MemberResDtoRole)
    end
  end
end
