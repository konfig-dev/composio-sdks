=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::UpdateMemberReqDTO
describe Composio::UpdateMemberReqDTO do
  let(:instance) { Composio::UpdateMemberReqDTO.new }

  describe 'test an instance of UpdateMemberReqDTO' do
    it 'should create an instance of UpdateMemberReqDTO' do
      expect(instance).to be_instance_of(Composio::UpdateMemberReqDTO)
    end
  end
  describe 'test attribute "member_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
