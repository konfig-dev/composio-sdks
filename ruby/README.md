<div align="center">

[![Visit Composio](./header.png)](https://composio.dev)

# [Composio](https://composio.dev)<a id="composio"></a>

Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

[![npm](https://img.shields.io/badge/gem-v0.1.16-blue)](https://rubygems.org/gems/composio/versions/0.1.16)
[![More Info](https://img.shields.io/badge/More%20Info-Click%20Here-orange)](https://composio.dev)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
- [Getting Started](#getting-started)
- [Raw HTTP Response](#raw-http-response)
- [Reference](#reference)
  * [`composio.api_keys.generate`](#composioapi_keysgenerate)
  * [`composio.api_keys.list`](#composioapi_keyslist)
  * [`composio.api_keys.remove`](#composioapi_keysremove)
  * [`composio.actions.execute`](#composioactionsexecute)
  * [`composio.actions.execute_action_proxy`](#composioactionsexecute_action_proxy)
  * [`composio.actions.get_action_by_id`](#composioactionsget_action_by_id)
  * [`composio.actions.get_action_inputs`](#composioactionsget_action_inputs)
  * [`composio.actions.get_all_actions_based_on_query`](#composioactionsget_all_actions_based_on_query)
  * [`composio.actions.list`](#composioactionslist)
  * [`composio.admin.clear_cache`](#composioadminclear_cache)
  * [`composio.admin.get_sentry_dns`](#composioadminget_sentry_dns)
  * [`composio.analytics.get`](#composioanalyticsget)
  * [`composio.analytics.get_top_entities`](#composioanalyticsget_top_entities)
  * [`composio.apps.delete_open_api_spec_tool`](#composioappsdelete_open_api_spec_tool)
  * [`composio.apps.get_details`](#composioappsget_details)
  * [`composio.apps.get_open_api_spec_status`](#composioappsget_open_api_spec_status)
  * [`composio.apps.list`](#composioappslist)
  * [`composio.apps.list_open_api_specs`](#composioappslist_open_api_specs)
  * [`composio.apps.send_email_to_client`](#composioappssend_email_to_client)
  * [`composio.auth.get_user_info`](#composioauthget_user_info)
  * [`composio.auth.identify_client_operation`](#composioauthidentify_client_operation)
  * [`composio.cli.exchange_code`](#composiocliexchange_code)
  * [`composio.cli.get_code`](#composiocliget_code)
  * [`composio.cli.verify_code`](#composiocliverify_code)
  * [`composio.connections.delete`](#composioconnectionsdelete)
  * [`composio.connections.disable`](#composioconnectionsdisable)
  * [`composio.connections.enable`](#composioconnectionsenable)
  * [`composio.connections.get`](#composioconnectionsget)
  * [`composio.connections.get_info`](#composioconnectionsget_info)
  * [`composio.connections.initiate`](#composioconnectionsinitiate)
  * [`composio.connections.list`](#composioconnectionslist)
  * [`composio.connections.update_connection_data`](#composioconnectionsupdate_connection_data)
  * [`composio.event_logs.update_webhook`](#composioevent_logsupdate_webhook)
  * [`composio.integrations.create_integration`](#composiointegrationscreate_integration)
  * [`composio.integrations.delete_connector`](#composiointegrationsdelete_connector)
  * [`composio.integrations.get_connector_info`](#composiointegrationsget_connector_info)
  * [`composio.integrations.list_global_connectors`](#composiointegrationslist_global_connectors)
  * [`composio.integrations.update_integration`](#composiointegrationsupdate_integration)
  * [`composio.logs.add_new_logs`](#composiologsadd_new_logs)
  * [`composio.logs.list`](#composiologslist)
  * [`composio.triggers.delete_trigger_instance`](#composiotriggersdelete_trigger_instance)
  * [`composio.triggers.disable_trigger_instance`](#composiotriggersdisable_trigger_instance)
  * [`composio.triggers.enable`](#composiotriggersenable)
  * [`composio.triggers.get_active_triggers`](#composiotriggersget_active_triggers)
  * [`composio.triggers.get_callback_url`](#composiotriggersget_callback_url)
  * [`composio.triggers.get_logs_based_on_connection_and_integration_details`](#composiotriggersget_logs_based_on_connection_and_integration_details)
  * [`composio.triggers.get_trigger_info`](#composiotriggersget_trigger_info)
  * [`composio.triggers.list`](#composiotriggerslist)
  * [`composio.triggers.set_callback_url`](#composiotriggersset_callback_url)
  * [`composio.triggers.switch_instance_status`](#composiotriggersswitch_instance_status)

<!-- tocstop -->

## Installation<a id="installation"></a>

Add to Gemfile:

```ruby
gem 'composio', '~> 0.1.16'
```

## Getting Started<a id="getting-started"></a>

```ruby
require 'composio'
configuration = Composio::Configuration.new
configuration.api_key = 'YOUR API KEY'
composio = composio::Client.new(configuration)
result = composio.api_keys.generate(
  name: "string_example",
)
p result
```

## Raw HTTP Response<a id="raw-http-response"></a>

To access the raw HTTP response, suffix any method with `_with_http_info`.

```ruby
result = composio.api_keys.generate_with_http_info(
  name: "string_example",
)
p result.data # [APIKeyResDTO] Deserialized data
p.result.status_code # [Integer] HTTP status code
p.result.headers # [Hash] HTTP headers
p.result.response # [Faraday::Response] Raw HTTP response
```

## Reference<a id="reference"></a>


### `composio.api_keys.generate`<a id="composioapi_keysgenerate"></a>

Generate api key

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.api_keys.generate(
  name: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### name: `String`<a id="name-string"></a>
The name of the API key to be generated

#### 🔄 Return<a id="🔄-return"></a>

[APIKeyResDTO](./lib/composio/models/api_key_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.api_keys.list`<a id="composioapi_keyslist"></a>

List api keys

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.api_keys.list
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[APIKeyResDTO](./lib/composio/models/api_key_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.api_keys.remove`<a id="composioapi_keysremove"></a>

Delete api key

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.api_keys.remove(
  id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteAPIKeyResponseDTO](./lib/composio/models/delete_api_key_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/api_keys/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.execute`<a id="composioactionsexecute"></a>

Execute an action. Support both connected account and no auth auth.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.execute(
  action_id: "'+j>6",
  connected_account_id: "string_example",
  app_name: "string_example",
  entity_id: "string_example",
  endpoint: "string_example",
  input: {},
  session_info: {
    },
  auth_config: {
        "parameters" => [
            {
                "name" => "name_example",
                "_in" => "_in_example",
                "value" => "value_example",
            }
        ],
    },
  text: "string_example",
  custom_description: "string_example",
  system_prompt: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action_id: `String`<a id="action_id-string"></a>
##### connectedAccountId: `String`<a id="connectedaccountid-string"></a>
##### appName: `String`<a id="appname-string"></a>
##### entityId: `String`<a id="entityid-string"></a>
##### endpoint: `String`<a id="endpoint-string"></a>
##### input: `Object`<a id="input-object"></a>
##### sessionInfo: [`SessionInfoDTO`](./lib/composio/models/session_info_dto.rb)<a id="sessioninfo-sessioninfodtolibcomposiomodelssession_info_dtorb"></a>
##### authConfig: [`CustomAuthDTO`](./lib/composio/models/custom_auth_dto.rb)<a id="authconfig-customauthdtolibcomposiomodelscustom_auth_dtorb"></a>
##### text: `String`<a id="text-string"></a>
##### customDescription: `String`<a id="customdescription-string"></a>
##### systemPrompt: `String`<a id="systemprompt-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionExecutionResDto](./lib/composio/models/action_execution_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/{actionId}/execute` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.execute_action_proxy`<a id="composioactionsexecute_action_proxy"></a>

Execute an action with direct auth.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.execute_action_proxy(
  endpoint: "endpoint_example",
  connected_account_id: "connectedAccountId_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### endpoint: `String`<a id="endpoint-string"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionExecutionResDto](./lib/composio/models/action_execution_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/proxy` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.get_action_by_id`<a id="composioactionsget_action_by_id"></a>

Get action details

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.get_action_by_id(
  action_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### action_id: `String`<a id="action_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionDetails](./lib/composio/models/action_details.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/{actionId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.get_action_inputs`<a id="composioactionsget_action_inputs"></a>

Get the inputs for an action with NLA

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.get_action_inputs(
  text: "string_example",
  action_id: "'+j>6",
  custom_description: "string_example",
  system_prompt: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### text: `String`<a id="text-string"></a>
##### action_id: `String`<a id="action_id-string"></a>
##### customDescription: `String`<a id="customdescription-string"></a>
##### systemPrompt: `String`<a id="systemprompt-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/{actionId}/execute/get.inputs` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.get_all_actions_based_on_query`<a id="composioactionsget_all_actions_based_on_query"></a>

Retrieve a list of all actions based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.get_all_actions_based_on_query(
  app_names: "string_example",
  use_case: "string_example",
  show_enabled_only: true,
  limit: 3.14,
  apps: "string_example",
  actions: "string_example",
  tags: "string_example",
  usecase_limit: 3.14,
  filter_important_actions: true,
  show_all: true,
  page: 3.14,
  offset: 3.14,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### app_names: `String`<a id="app_names-string"></a>
##### use_case: `String`<a id="use_case-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
##### limit: `Float`<a id="limit-float"></a>
##### apps: `String`<a id="apps-string"></a>
##### actions: `String`<a id="actions-string"></a>
##### tags: `String`<a id="tags-string"></a>
##### usecase_limit: `Float`<a id="usecase_limit-float"></a>
##### filter_important_actions: `Boolean`<a id="filter_important_actions-boolean"></a>
##### show_all: `Boolean`<a id="show_all-boolean"></a>
##### page: `Float`<a id="page-float"></a>
##### offset: `Float`<a id="offset-float"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsListResponseDTO](./lib/composio/models/actions_list_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions/list/all` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.actions.list`<a id="composioactionslist"></a>

Retrieve a list of all actions based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.actions.list(
  app_names: "string_example",
  use_case: "string_example",
  show_enabled_only: true,
  limit: 3.14,
  apps: "string_example",
  actions: "string_example",
  tags: "string_example",
  usecase_limit: 3.14,
  filter_important_actions: true,
  show_all: true,
  page: 3.14,
  offset: 3.14,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### app_names: `String`<a id="app_names-string"></a>
##### use_case: `String`<a id="use_case-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
##### limit: `Float`<a id="limit-float"></a>
##### apps: `String`<a id="apps-string"></a>
##### actions: `String`<a id="actions-string"></a>
##### tags: `String`<a id="tags-string"></a>
##### usecase_limit: `Float`<a id="usecase_limit-float"></a>
##### filter_important_actions: `Boolean`<a id="filter_important_actions-boolean"></a>
##### show_all: `Boolean`<a id="show_all-boolean"></a>
##### page: `Float`<a id="page-float"></a>
##### offset: `Float`<a id="offset-float"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActionsListResponseDTO](./lib/composio/models/actions_list_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/actions` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.admin.clear_cache`<a id="composioadminclear_cache"></a>

Clear cache

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.admin.clear_cache(
  x_admin_token: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### x_admin_token: `String`<a id="x_admin_token-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/clear-cache` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.admin.get_sentry_dns`<a id="composioadminget_sentry_dns"></a>

Jssentry dns

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.admin.get_sentry_dns
p result
```

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/js-sentry-dns` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.analytics.get`<a id="composioanalyticsget"></a>

Get analytics

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.analytics.get(
  last_time_period: "DAY",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### last_time_period: `String`<a id="last_time_period-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[AnalyticsDataResDTO](./lib/composio/models/analytics_data_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/analytics` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.analytics.get_top_entities`<a id="composioanalyticsget_top_entities"></a>

Get top entities

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.analytics.get_top_entities(
  query: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `String`<a id="query-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TopEntitiesResDTO](./lib/composio/models/top_entities_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/analytics/entities` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.delete_open_api_spec_tool`<a id="composioappsdelete_open_api_spec_tool"></a>

Delete an openapi spec tool

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.delete_open_api_spec_tool(
  id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/openapi/spec/delete/{id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.get_details`<a id="composioappsget_details"></a>

Get app details

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.get_details(
  app_name: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### app_name: `String`<a id="app_name-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[SingleAppInfoResDTO](./lib/composio/models/single_app_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/{appName}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.get_open_api_spec_status`<a id="composioappsget_open_api_spec_status"></a>

Get the status of an openapi spec tool

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.get_open_api_spec_status(
  id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/openapi/spec/status/{id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.list`<a id="composioappslist"></a>

Retrieve a list of all applications based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.list(
  category: "string_example",
  additional_fields: "string_example",
  include_local: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### category: `String`<a id="category-string"></a>
##### additional_fields: `String`<a id="additional_fields-string"></a>
##### include_local: `String`<a id="include_local-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[AppListResDTO](./lib/composio/models/app_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.list_open_api_specs`<a id="composioappslist_open_api_specs"></a>

List all openapi spec tools

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.list_open_api_specs
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[AppListResDTO](./lib/composio/models/app_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/openapi/spec/list` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.apps.send_email_to_client`<a id="composioappssend_email_to_client"></a>

Send email to client

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.apps.send_email_to_client(
  admin_token: "string_example",
  body: None,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### admin_token: `String`<a id="admin_token-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/apps/openapi/send_email_to_client` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.auth.get_user_info`<a id="composioauthget_user_info"></a>

Get client info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.auth.get_user_info
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[ClientInfoResDTO](./lib/composio/models/client_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/client_info` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.auth.identify_client_operation`<a id="composioauthidentify_client_operation"></a>

Identify client

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.auth.identify_client_operation(
  hash: "string_example",
  framework: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### hash: `String`<a id="hash-string"></a>
The hash of the client

##### framework: `String`<a id="framework-string"></a>
The framework used by the client

#### 🔄 Return<a id="🔄-return"></a>

[IdentifyClientResDTO](./lib/composio/models/identify_client_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/client/auth/identify` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.cli.exchange_code`<a id="composiocliexchange_code"></a>

Handle cli code exchange

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.cli.exchange_code
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[GenerateCLISessionResDTO](./lib/composio/models/generate_cli_session_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/generate-cli-session` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.cli.get_code`<a id="composiocliget_code"></a>

Get cli code

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.cli.get_code(
  key: "key_example",
  code: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### key: `String`<a id="key-string"></a>
##### code: `String`<a id="code-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetCLISessionResDTO](./lib/composio/models/get_cli_session_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/get-cli-code` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.cli.verify_code`<a id="composiocliverify_code"></a>

Handle cli code verification

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.cli.verify_code(
  key: "key_example",
  code: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### key: `String`<a id="key-string"></a>
##### code: `String`<a id="code-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[VerifyCLICodeResDTO](./lib/composio/models/verify_cli_code_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/cli/verify-cli-code` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.delete`<a id="composioconnectionsdelete"></a>

Delete a connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.delete(
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteRowAPIDTO](./lib/composio/models/delete_row_apidto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.disable`<a id="composioconnectionsdisable"></a>

Disable a connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.disable(
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ToggleConnectedAccountResponseDTO](./lib/composio/models/toggle_connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/disable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.enable`<a id="composioconnectionsenable"></a>

Enable a connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.enable(
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ToggleConnectedAccountResponseDTO](./lib/composio/models/toggle_connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/enable` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.get`<a id="composioconnectionsget"></a>

Get connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.get(
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ConnectedAccountResponseDTO](./lib/composio/models/connected_account_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.get_info`<a id="composioconnectionsget_info"></a>

Get connection info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.get_info(
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectionInfoResponseDTO](./lib/composio/models/get_connection_info_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/info` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.initiate`<a id="composioconnectionsinitiate"></a>

Initiate connection

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.initiate(
  data: {},
  integration_id: "a",
  redirect_uri: "string_example",
  user_uuid: "string_example",
  entity_id: "string_example",
  labels: [
        "string_example"
    ],
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data: `Object`<a id="data-object"></a>
##### integrationId: `String`<a id="integrationid-string"></a>
##### redirectUri: `String`<a id="redirecturi-string"></a>
##### userUuid: `String`<a id="useruuid-string"></a>
##### entityId: `String`<a id="entityid-string"></a>
##### labels: Array<`String`><a id="labels-array"></a>
#### 🔄 Return<a id="🔄-return"></a>

[InitiateConnectionResponse](./lib/composio/models/initiate_connection_response.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.list`<a id="composioconnectionslist"></a>

Get connections

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.list(
  page: 3.14,
  page_size: 3.14,
  app_names: "string_example",
  integration_id: "string_example",
  connection_id: "string_example",
  user_uuid: "string_example",
  show_active_only: true,
  status: "string_example",
  show_disabled: true,
  labels: [
        "string_example"
    ],
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### page: `Float`<a id="page-float"></a>
##### page_size: `Float`<a id="page_size-float"></a>
##### app_names: `String`<a id="app_names-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### connection_id: `String`<a id="connection_id-string"></a>
##### user_uuid: `String`<a id="user_uuid-string"></a>
##### show_active_only: `Boolean`<a id="show_active_only-boolean"></a>
##### status: `String`<a id="status-string"></a>
##### show_disabled: `Boolean`<a id="show_disabled-boolean"></a>
##### labels: Array<`String`><a id="labels-array"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectionsResponseDto](./lib/composio/models/get_connections_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.connections.update_connection_data`<a id="composioconnectionsupdate_connection_data"></a>

Update connection data

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.connections.update_connection_data(
  labels: [
        "string_example"
    ],
  connected_account_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### labels: Array<`String`><a id="labels-array"></a>
##### connected_account_id: `String`<a id="connected_account_id-string"></a>
#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/connectedAccounts/{connectedAccountId}/data` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.event_logs.update_webhook`<a id="composioevent_logsupdate_webhook"></a>

Update webhook

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.event_logs.update_webhook(
  event_webhook_url: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### eventWebhookURL: `String`<a id="eventwebhookurl-string"></a>
Event Webhook URL

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/event_logs/set/webhook` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.create_integration`<a id="composiointegrationscreate_integration"></a>

Create a new connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.create_integration(
  name: "string_example",
  auth_scheme: "string_example",
  auth_config: {
    },
  use_composio_auth: true,
  app_id: "string_example",
  app_name: "string_example",
  force_new_integration: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### name: `String`<a id="name-string"></a>
Name of the connector

##### authScheme: `String`<a id="authscheme-string"></a>
Authentication scheme

##### authConfig: [`AuthConfigDTO`](./lib/composio/models/auth_config_dto.rb)<a id="authconfig-authconfigdtolibcomposiomodelsauth_config_dtorb"></a>
##### useComposioAuth: [`CreateConnectorPayloadDTOUseComposioAuth`](./lib/composio/models/create_connector_payload_dto_use_composio_auth.rb)<a id="usecomposioauth-createconnectorpayloaddtousecomposioauthlibcomposiomodelscreate_connector_payload_dto_use_composio_authrb"></a>
##### appId: `String`<a id="appid-string"></a>
Composio App UUID to be used for authentication. Either specify this or appName

##### appName: `String`<a id="appname-string"></a>
Name of the app to be used for authentication. Either specify this or appId

##### forceNewIntegration: `Boolean`<a id="forcenewintegration-boolean"></a>
Flag to force new integration

#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorInfoResDTO](./lib/composio/models/get_connector_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.delete_connector`<a id="composiointegrationsdelete_connector"></a>

Delete a connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.delete_connector(
  integration_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integration_id: `String`<a id="integration_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteRowAPIDTO](./lib/composio/models/delete_row_apidto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.get_connector_info`<a id="composiointegrationsget_connector_info"></a>

Get connector info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.get_connector_info(
  integration_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integration_id: `String`<a id="integration_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorInfoResDTO](./lib/composio/models/get_connector_info_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.list_global_connectors`<a id="composiointegrationslist_global_connectors"></a>

List all connectors

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.list_global_connectors
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[GetConnectorListResDTO](./lib/composio/models/get_connector_list_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.integrations.update_integration`<a id="composiointegrationsupdate_integration"></a>

Modify a connector

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.integrations.update_integration(
  integration_id: "'+j>6",
  auth_config: {},
  enabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### integration_id: `String`<a id="integration_id-string"></a>
##### authConfig: `Object`<a id="authconfig-object"></a>
Authentication configuration for the connector

##### enabled: `Boolean`<a id="enabled-boolean"></a>
Flag to indicate if the connector is enabled

#### 🔄 Return<a id="🔄-return"></a>

[PatchConnectorResDTO](./lib/composio/models/patch_connector_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/integrations/{integrationId}` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.logs.add_new_logs`<a id="composiologsadd_new_logs"></a>

Add new logs

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.logs.add_new_logs(
  provider_name: "string_example",
  action_name: "string_example",
  request: {},
  response: {},
  is_error: true,
  connection_id: "string_example",
  session_id: "string_example",
  logs_type: "string_example",
  entity_id: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### providerName: `String`<a id="providername-string"></a>
Provider name of the log

##### actionName: `String`<a id="actionname-string"></a>
Action name of the log

##### request: `Object`<a id="request-object"></a>
##### response: `Object`<a id="response-object"></a>
##### isError: `Boolean`<a id="iserror-boolean"></a>
##### connectionId: `String`<a id="connectionid-string"></a>
Connection ID of the log

##### sessionId: `String`<a id="sessionid-string"></a>
Session ID of the log

##### logsType: `String`<a id="logstype-string"></a>
Type of the log

##### entityId: `String`<a id="entityid-string"></a>
Entity ID of the log

#### 🔄 Return<a id="🔄-return"></a>

[IngestDataResponseDTO](./lib/composio/models/ingest_data_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/logs` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.logs.list`<a id="composiologslist"></a>

List logs

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.logs.list(
  type: "error",
  time: "5m",
  status: "all",
  search: "string_example",
  integration_id: "string_example",
  entity_id: "string_example",
  limit: 10,
  cursor: "string_example",
  logs_type: "string_example",
  session_id: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### type: `String`<a id="type-string"></a>
##### time: `String`<a id="time-string"></a>
##### status: `String`<a id="status-string"></a>
##### search: `String`<a id="search-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### entity_id: `String`<a id="entity_id-string"></a>
##### limit: `Float`<a id="limit-float"></a>
##### cursor: `String`<a id="cursor-string"></a>
##### logs_type: `String`<a id="logs_type-string"></a>
##### session_id: `String`<a id="session_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[LogsResDTO](./lib/composio/models/logs_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/logs` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.delete_trigger_instance`<a id="composiotriggersdelete_trigger_instance"></a>

Deletes a specified trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.delete_trigger_instance(
  trigger_instance_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### trigger_instance_id: `String`<a id="trigger_instance_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[DeleteRowAPIDTO](./lib/composio/models/delete_row_apidto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/instance/{triggerInstanceId}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.disable_trigger_instance`<a id="composiotriggersdisable_trigger_instance"></a>

Disables a specified trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.disable_trigger_instance(
  trigger_instance_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### trigger_instance_id: `String`<a id="trigger_instance_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/disable/{triggerInstanceId}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.enable`<a id="composiotriggersenable"></a>

Enables a trigger for a connected account and specific trigger name.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.enable(
  trigger_config: {},
  connected_account_id: "'+j>6",
  trigger_name: "'+j>6",
  verify_host: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### triggerConfig: `Object`<a id="triggerconfig-object"></a>
The trigger configuration

##### connected_account_id: `String`<a id="connected_account_id-string"></a>
##### trigger_name: `String`<a id="trigger_name-string"></a>
##### verifyHost: `String`<a id="verifyhost-string"></a>
The verify host

#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/enable/{connectedAccountId}/{triggerName}` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.get_active_triggers`<a id="composiotriggersget_active_triggers"></a>

Lists active triggers based on query parameters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.get_active_triggers(
  connected_account_ids: "string_example",
  integration_ids: "string_example",
  trigger_ids: "string_example",
  trigger_names: "string_example",
  page: 3.14,
  limit: 3.14,
  show_disabled: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connected_account_ids: `String`<a id="connected_account_ids-string"></a>
##### integration_ids: `String`<a id="integration_ids-string"></a>
##### trigger_ids: `String`<a id="trigger_ids-string"></a>
##### trigger_names: `String`<a id="trigger_names-string"></a>
##### page: `Float`<a id="page-float"></a>
##### limit: `Float`<a id="limit-float"></a>
##### show_disabled: `Boolean`<a id="show_disabled-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[ActiveTriggersResDTO](./lib/composio/models/active_triggers_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/active_triggers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.get_callback_url`<a id="composiotriggersget_callback_url"></a>

Retrieves the universal callback URL set for the client.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.get_callback_url
p result
```

#### 🔄 Return<a id="🔄-return"></a>

[WebhookURLResponseDTO](./lib/composio/models/webhook_url_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/callback_url` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.get_logs_based_on_connection_and_integration_details`<a id="composiotriggersget_logs_based_on_connection_and_integration_details"></a>

Fetches logs based on connection and integration details.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.get_logs_based_on_connection_and_integration_details(
  connection_id: "string_example",
  integration_id: "string_example",
  page: 3.14,
  limit: 3.14,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### connection_id: `String`<a id="connection_id-string"></a>
##### integration_id: `String`<a id="integration_id-string"></a>
##### page: `Float`<a id="page-float"></a>
##### limit: `Float`<a id="limit-float"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerLogsResDTO](./lib/composio/models/trigger_logs_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/logs` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.get_trigger_info`<a id="composiotriggersget_trigger_info"></a>

Get Trigger Info

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.get_trigger_info(
  trigger_name: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### trigger_name: `String`<a id="trigger_name-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[SingleTriggerResDTO](./lib/composio/models/single_trigger_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v2/triggers/{triggerName}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.list`<a id="composiotriggerslist"></a>

List triggers

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.list(
  app_names: "string_example",
  connected_account_ids: "string_example",
  trigger_ids: "string_example",
  integration_ids: "string_example",
  show_enabled_only: true,
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### app_names: `String`<a id="app_names-string"></a>
##### connected_account_ids: `String`<a id="connected_account_ids-string"></a>
##### trigger_ids: `String`<a id="trigger_ids-string"></a>
##### integration_ids: `String`<a id="integration_ids-string"></a>
##### show_enabled_only: `Boolean`<a id="show_enabled_only-boolean"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResDTO](./lib/composio/models/trigger_res_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.set_callback_url`<a id="composiotriggersset_callback_url"></a>

Sets a universal callback URL for the client.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.set_callback_url(
  callback_url: "string_example",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### callbackURL: `String`<a id="callbackurl-string"></a>
The callback URL

#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/set_callback_url` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `composio.triggers.switch_instance_status`<a id="composiotriggersswitch_instance_status"></a>

Switches the status of a trigger instance.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```ruby
result = composio.triggers.switch_instance_status(
  enabled: true,
  trigger_id: "'+j>6",
)
p result
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### enabled: `Boolean`<a id="enabled-boolean"></a>
The new enabled status of the trigger

##### trigger_id: `String`<a id="trigger_id-string"></a>
#### 🔄 Return<a id="🔄-return"></a>

[TriggerResponseDTO](./lib/composio/models/trigger_response_dto.rb)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/api/v1/triggers/instance/{triggerId}/status` `PATCH`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
