=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::FetchQueryDTO
describe Composio::FetchQueryDTO do
  let(:instance) { Composio::FetchQueryDTO.new }

  describe 'test an instance of FetchQueryDTO' do
    it 'should create an instance of FetchQueryDTO' do
      expect(instance).to be_instance_of(Composio::FetchQueryDTO)
    end
  end
  describe 'test attribute "start_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
