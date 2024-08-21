<div align="center">

[![Visit Composio](./header.png)](https://composio.dev)

# [Composio](https://composio.dev)<a id="composio"></a>

Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

[![npm](https://img.shields.io/badge/gem-v0.1.0-blue)](https://rubygems.org/gems/composio/versions/0.1.0)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](composio.dev)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Raw HTTP Response](#raw-http-response)
- [Reference](#reference)
  * [`composio.actions.execute`](#composioactionsexecute)
  * [`composio.actions.get`](#composioactionsget)
  * [`composio.actions.list`](#composioactionslist)
  * [`composio.apps.list`](#composioappslist)
  * [`composio.connected_accounts.create_connection`](#composioconnected_accountscreate_connection)
  * [`composio.connected_accounts.get_account_details`](#composioconnected_accountsget_account_details)
  * [`composio.connected_accounts.list`](#composioconnected_accountslist)
  * [`composio.connected_accounts.remove_connection`](#composioconnected_accountsremove_connection)
  * [`composio.integrations.create`](#composiointegrationscreate)
  * [`composio.integrations.get`](#composiointegrationsget)
  * [`composio.integrations.list`](#composiointegrationslist)
  * [`composio.integrations.update`](#composiointegrationsupdate)

<!-- tocstop -->

## Installation<a id="installation"></a>

Add to Gemfile:

```ruby
gem 'composio', '~> 0.1.0'
```

## Getting Started<a id="getting-started"></a>

```ruby
require 'composio'
configuration = Composio::Configuration.new
configuration.auth_token = 'YOUR API KEY'
composio = composio::Client.new(configuration)
result = composio.actions.execute(
  action_name: "CreateIssue",
  connected_account_id: "string_example",
  input: {},
  app_name: "string_example",
)
p result
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access the raw HTTP response, suffix any method with `_with_http_info`.

```ruby
result = composio.actions.execute_with_http_info(
  action_name: "CreateIssue",
  connected_account_id: "string_example",
  input: {},
  app_name: "string_example",
)
p result.data # [ActionsExecuteActionResponse] Deserialized data
p.result.status_code # [Integer] HTTP status code
p.result.headers # [Hash] HTTP headers
p.result.response # [Faraday::Response] Raw HTTP response
```

## Reference<a id="reference"></a>


### `composio.actions.execute`<a id="composioactionsexecute"></a>

Executes a specific action in the Composio platform.

This endpoint allows you to trigger the execution of an action by providing its name and the necessary input parameters. The request includes the connected account ID to identify the app connection to use for the action, and the input parameters required by the action. The response provides details about the execution status and the response data returned by the action.

Use this endpoint to execute actions available in the Composio platform for your end customer. 

Executed will indicate whether the action was successfully executed. 

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.execute(
  action_name: "CreateIssue",
  connected_account_id: "string_example",
  input: {},
  app_name: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action_name: `String`<a id="action_name-string"></a>
The name of the action to execute.

##### connectedAccountId: `String`<a id="connectedaccountid-string"></a>
The unique identifier of the connection to use for executing the action.

##### input: `Object`<a id="input-object"></a>
An object containing the input parameters for the action.

##### appName: `String`<a id="appname-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsExecuteActionResponse](./lib/composio/models/actions_execute_action_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/actions/{actionName}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.get`<a id="composioactionsget"></a>

Retrieves details of a specific action in the Composio platform.

This endpoint allows you to fetch comprehensive information about a particular action by providing its unique identifier.
The response includes the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.
Use this endpoint to obtain detailed information about an action, including its configuration and usage requirements. 
You can then pass this to function calling or use LLM to fill in the parameters. 

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.get(
  action_name: "CreateSubtask",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action_name: `String`<a id="action_name-string"></a>
The unique identifier of the action.

#### 🔄 Return<a id="🔄-return"></a>

[ActionsGetSpecificActionResponse](./lib/composio/models/actions_get_specific_action_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/actions/{actionName}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.list`<a id="composioactionslist"></a>

Retrieves a list of all actions in the Composio platform.

This endpoint allows you to fetch a list of all the available actions. It supports pagination to handle large numbers of actions. The response includes an array of action objects, each containing information such as the action's name, display name, description, input parameters, expected response, associated app information, and enabled status.

Use this endpoint to explore and discover the actions supported by the Composio platform and showcase them to end user. 

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.list(
  app_names: "string_example",
  use_case: "Star a Github Repo, create a new issue on linear",
  show_enabled_only: true,
  limit: "5,10,20",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### app_names: `String`<a id="app_names-string"></a>
Name of the app like \"github\", \"linear\"

##### use_case: `String`<a id="use_case-string"></a>
Natural language usecase

##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
Show actions enabled for the API Key

##### limit: `String`<a id="limit-string"></a>
Limit of apis

#### 🔄 Return<a id="🔄-return"></a>

[ActionsGetListResponse](./lib/composio/models/actions_get_list_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/actions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.list`<a id="composioappslist"></a>

Retrieves a list of all available apps in the Composio platform.

This endpoint allows clients to explore and discover the supported apps. It returns an array of app objects, each containing essential details such as the app's key, name, description, logo, categories, and unique identifier.

Use this endpoint to build a catalog of available apps and provide your users with an overview of the apps they can integrate with.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.list
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[AppsGetAllAppsResponse](./lib/composio/models/apps_get_all_apps_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/apps` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connected_accounts.create_connection`<a id="composioconnected_accountscreate_connection"></a>

Connect an account

This endpoint allows you to connect an external app account with Composio. It requires the integration ID in the request body and returns the connection status, connection ID, and a redirect URL (if applicable) for completing the connection flow.

Use this endpoint to initiate the process of connecting an external app for your end user.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connected_accounts.create_connection(
  integration_id: "string_example",
  redirect_uri: "https://google.com",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integrationId: `String`<a id="integrationid-string"></a>
##### redirectUri: `String`<a id="redirecturi-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountsCreateConnectionResponse](./lib/composio/models/connected_accounts_create_connection_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/connectedAccounts` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connected_accounts.get_account_details`<a id="composioconnected_accountsget_account_details"></a>

Retrieves details of a specific account connected to the Composio platform by providing its connected account ID. 
The response includes the integration ID, connection parameters (such as scope, base URL, client ID, token type, access token, etc.), connection ID, status, and creation/update timestamps.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connected_accounts.get_account_details(
  connected_account_id: "4d3e5e98-2fd0-4e7b-841a-a208c031b731",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
The unique identifier of the connection.

#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountsGetAccountDetailsResponse](./lib/composio/models/connected_accounts_get_account_details_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/connectedAccounts/{connectedAccountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connected_accounts.list`<a id="composioconnected_accountslist"></a>

Retrieves a list of all connected accounts in the Composio platform. 

It supports pagination and filtering based on various parameters such as app ID, integration ID, and connected  ID. The response includes an array of connection objects, each containing details like the connector ID, connection parameters, status, creation/update timestamps, and associated app information.

Use this endpoint to manage and monitor all active connections.  

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connected_accounts.list(
  page: 1,
  page_size: 10,
  integration_id: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `Integer`<a id="page-integer"></a>
Page number to fetch

##### page_size: `Integer`<a id="page_size-integer"></a>
Page size to assume

##### integration_id: `String`<a id="integration_id-string"></a>
Filter by using specific Integration

#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountsListAllResponse](./lib/composio/models/connected_accounts_list_all_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/connectedAccounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connected_accounts.remove_connection`<a id="composioconnected_accountsremove_connection"></a>

Remove a specific account from the Composio platform by providing its connection ID. Upon successful deletion, the response includes a status indicating the success of the operation.
Use this endpoint to clean up unwanted connections for your end user and manage the connection lifecycle.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connected_accounts.remove_connection(
  connected_account_id: "4d3e5e98-2fd0-4e7b-841a-a208c031b731",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
The unique identifier of the connection.

#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountsRemoveConnectionResponse](./lib/composio/models/connected_accounts_remove_connection_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/connectedAccounts/{connectedAccountId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.create`<a id="composiointegrationscreate"></a>

This endpoint allows you to add a new integration by providing the necessary details such as the integration name, authentication scheme, associated app ID, and authentication configuration. Upon successful creation, the response includes the newly created connector object.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.create(
  name: "string_example",
  auth_scheme: "OAUTH2",
  app_id: "string_example",
  auth_config: {
    },
  use_composio_auth: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### name: `String`<a id="name-string"></a>
The name of the connector.

##### authScheme: [`AuthScheme`](./lib/composio/models/auth_scheme.rb)<a id="authscheme-authschemelibcomposiomodelsauth_schemerb"></a>
The authentication scheme used by the connector (e.g., \"OAUTH2\", \"API_KEY\").

##### appId: `String`<a id="appid-string"></a>
The unique identifier of the app associated with the connector.

##### authConfig: [`IntegrationsCreateNewIntegrationRequestAuthConfig`](./lib/composio/models/integrations_create_new_integration_request_auth_config.rb)<a id="authconfig-integrationscreatenewintegrationrequestauthconfiglibcomposiomodelsintegrations_create_new_integration_request_auth_configrb"></a>
##### useComposioAuth: `Boolean`<a id="usecomposioauth-boolean"></a>
Use default Composio credentials to proceed. The developer app credentials will
be of Composio.

#### 🔄 Return<a id="🔄-return"></a>

[IntegrationsCreateNewIntegrationResponse](./lib/composio/models/integrations_create_new_integration_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/integrations` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.get`<a id="composiointegrationsget"></a>

Retrieves details of a specific integration in the Composio platform by providing its unique identifier. The response includes the connector's name, authentication scheme, authentication configuration, creation and update timestamps, enabled status, associated app information, expected input fields, and logo.

Use this endpoint to obtain detailed information about a integration and its configuration. It can be shown to end user for selection. 

You will also get parameters that are required to be captured from end user to connect an account using this connector. 
ex. API Key or subdomain URL. 

If the end-user selects this flow, collect the parameters and connect an account using it. 

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.get(
  integration_id: "065bcbcf-e25b-4808-b4ad-13c16ad14824",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integration_id: `String`<a id="integration_id-string"></a>
The unique identifier of the integration.

#### 🔄 Return<a id="🔄-return"></a>

[IntegrationsGetIntegrationDetailsResponse](./lib/composio/models/integrations_get_integration_details_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/integrations/{integrationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.list`<a id="composiointegrationslist"></a>

Retrieves a list of all integrations in the Composio platform. It supports pagination to handle large numbers of connectors. The response includes an array of connector objects, each containing information such as the connector's ID, name, authentication scheme, creation/update timestamps, enabled status, associated app information, and logo.

This are the integration you can showcase to end user, and let them select which integration they want to connect an account with. 

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.list(
  page: 1,
  page_size: 10,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `Integer`<a id="page-integer"></a>
Page number to fetch

##### page_size: `Integer`<a id="page_size-integer"></a>
Page Size to assume

#### 🔄 Return<a id="🔄-return"></a>

[IntegrationsListAllResponse](./lib/composio/models/integrations_list_all_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/integrations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.update`<a id="composiointegrationsupdate"></a>

Updates the settings of a specific integration in the Composio platform.

This endpoint allows you to modify the settings of a integration, such as enabling or disabling it, by providing its unique identifier. The request body should include the updated settings, and the response indicates the success of the update operation.

Use this endpoint to manage the configuration and behavior of integrations in the Composio platform.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.update(
  integration_id: "31a23bf7-8df4-4e76-9860-143a7e3834a2",
  enabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integration_id: `String`<a id="integration_id-string"></a>
The unique identifier of the integration.

##### enabled: `Boolean`<a id="enabled-boolean"></a>
All the parameters that you see in the GET connector

#### 🔄 Return<a id="🔄-return"></a>

[IntegrationsUpdateIntegrationSettingsResponse](./lib/composio/models/integrations_update_integration_settings_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/v1/integrations/{integrationId}` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
