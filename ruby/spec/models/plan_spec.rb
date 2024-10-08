=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::Plan
describe Composio::Plan do
  let(:instance) { Composio::Plan.new }

  describe 'test an instance of Plan' do
    it 'should create an instance of Plan' do
      expect(instance).to be_instance_of(Composio::Plan)
    end
  end
end
