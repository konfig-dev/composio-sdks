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

  it 'api_keys.list' do
    configuration = Composio::Configuration.new
    configuration.api_key = 'YOUR API KEY'
    configuration.host = 'http://127.0.0.1:4010'
    composio = Composio::Client.new(configuration)
    result = composio.api_keys.list
    p result
    expect(result).to_not be_nil
  end

  it 'actions.execute' do
    configuration = Composio::Configuration.new
    configuration.api_key = 'YOUR API KEY'
    configuration.host = 'http://127.0.0.1:4010'
    composio = Composio::Client.new(configuration)
    result = composio.actions.execute(
      action_id: "'+j>6",
      connected_account_id: "string_example",
      app_name: "string_example",
      entity_id: "string_example",
      endpoint: "string_example",
      input: {},
      text: "string_example",
    )
    p result
    expect(result).to_not be_nil
  end
end
