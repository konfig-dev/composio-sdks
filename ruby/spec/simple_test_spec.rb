require 'spec_helper'
require 'json'
require 'securerandom'
require 'debug'

describe 'GettingStarted' do
  before do
  end

  after do
  end

  it 'api_keys.generate' do
    configuration = Composio::Configuration.new
    configuration.api_key = 'YOUR API KEY'
    configuration.host = 'http://127.0.0.1:4010'
    composio = Composio::Client.new(configuration)
    result = composio.api_keys.generate(
      name: "example"
    )
    p result
    expect(result).to_not be_nil
  end
end
