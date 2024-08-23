=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::AddRepoURLReqDTO
describe Composio::AddRepoURLReqDTO do
  let(:instance) { Composio::AddRepoURLReqDTO.new }

  describe 'test an instance of AddRepoURLReqDTO' do
    it 'should create an instance of AddRepoURLReqDTO' do
      expect(instance).to be_instance_of(Composio::AddRepoURLReqDTO)
    end
  end
  describe 'test attribute "repo_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
