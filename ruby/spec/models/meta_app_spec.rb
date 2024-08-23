=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::MetaApp
describe Composio::MetaApp do
  let(:instance) { Composio::MetaApp.new }

  describe 'test an instance of MetaApp' do
    it 'should create an instance of MetaApp' do
      expect(instance).to be_instance_of(Composio::MetaApp)
    end
  end
  describe 'test attribute "get_current_user_endpoint"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
