=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::SessionInfoDTO
describe Composio::SessionInfoDTO do
  let(:instance) { Composio::SessionInfoDTO.new }

  describe 'test an instance of SessionInfoDTO' do
    it 'should create an instance of SessionInfoDTO' do
      expect(instance).to be_instance_of(Composio::SessionInfoDTO)
    end
  end
  describe 'test attribute "session_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
