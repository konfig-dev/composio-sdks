=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Composio::JobStatus
describe Composio::JobStatus do
  let(:instance) { Composio::JobStatus.new }

  describe 'test an instance of JobStatus' do
    it 'should create an instance of JobStatus' do
      expect(instance).to be_instance_of(Composio::JobStatus)
    end
  end
end
