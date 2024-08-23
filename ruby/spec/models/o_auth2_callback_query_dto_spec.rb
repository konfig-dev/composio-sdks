=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::OAuth2CallbackQueryDto
describe Composio::OAuth2CallbackQueryDto do
  let(:instance) { Composio::OAuth2CallbackQueryDto.new }

  describe 'test an instance of OAuth2CallbackQueryDto' do
    it 'should create an instance of OAuth2CallbackQueryDto' do
      expect(instance).to be_instance_of(Composio::OAuth2CallbackQueryDto)
    end
  end
  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
