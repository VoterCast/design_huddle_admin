# DesignHuddleAdmin::ProjectsApi

All URIs are relative to *https://votercast.designhuddle.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**projects_get**](ProjectsApi.md#projects_get) | **GET** /projects | List projects |
| [**projects_post**](ProjectsApi.md#projects_post) | **POST** /projects | Create a project |
| [**projects_project_id_delete**](ProjectsApi.md#projects_project_id_delete) | **DELETE** /projects/{project_id} | Archive a project |
| [**projects_project_id_get**](ProjectsApi.md#projects_project_id_get) | **GET** /projects/{project_id} | Retrieve a project |
| [**projects_project_id_patch**](ProjectsApi.md#projects_project_id_patch) | **PATCH** /projects/{project_id} | Update a project |


## projects_get

> <ProjectsGETSuccess> projects_get(opts)

List projects

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: AppAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::ProjectsApi.new
opts = {
  brand_id: 56, # Integer | Specify the Brand ID to filter the result by.
  brand_code: 'brand_code_example', # String | Specify the Brand Code to filter the result by.
  media_type: 'digital', # String | Specify the media type to filter the result by.
  media_types: ['digital'], # Array<String> | Specify the media types to filter the result by.
  project_status: 'active', # String | Specify the project status to filter the result by.
  project_statuses: ['active'], # Array<String> | Specify the project statuses to filter the result by.
  project_ownership: 'all_projects', # String | Specify the project ownership to filter the result by.
  source_template_id: 56, # Integer | Specify the Source Template ID to filter the result by.
  source_template_ids: [37], # Array<Integer> | Specify the Source Template IDs to filter the result by.
  source_template_code: 'source_template_code_example', # String | Specify the Source Template Code to filter the result by.
  source_template_codes: ['inner_example'], # Array<String> | Specify the Source Template Codes to filter the result by.
  width: 56, # Integer | Specify the width to filter the result by.
  height: 56, # Integer | Specify the height to filter the result by.
  unit_type: 'px', # String | Specify the unit type to filter the result by.
  search: 'search_example', # String | A search term used to narrow the focus of the result.
  sort: 'sort_example', # String | Specify which attribute to order the result by.
  order: 'ASC', # String | Specify whether the result should be retrieved in ascending or descending order.
  limit: 56, # Integer | Specify the number of items per page to return.
  page: 56, # Integer | Specify which page of the result to return.
  fields: ['project_id'] # Array<String> | Specify the fields to the retrieve.
}

begin
  # List projects
  result = api_instance.projects_get(opts)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_get: #{e}"
end
```

#### Using the projects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsGETSuccess>, Integer, Hash)> projects_get_with_http_info(opts)

```ruby
begin
  # List projects
  data, status_code, headers = api_instance.projects_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand_id** | **Integer** | Specify the Brand ID to filter the result by. | [optional] |
| **brand_code** | **String** | Specify the Brand Code to filter the result by. | [optional] |
| **media_type** | **String** | Specify the media type to filter the result by. | [optional] |
| **media_types** | [**Array&lt;String&gt;**](String.md) | Specify the media types to filter the result by. | [optional] |
| **project_status** | **String** | Specify the project status to filter the result by. | [optional][default to &#39;active&#39;] |
| **project_statuses** | [**Array&lt;String&gt;**](String.md) | Specify the project statuses to filter the result by. | [optional] |
| **project_ownership** | **String** | Specify the project ownership to filter the result by. | [optional][default to &#39;all_projects&#39;] |
| **source_template_id** | **Integer** | Specify the Source Template ID to filter the result by. | [optional] |
| **source_template_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Specify the Source Template IDs to filter the result by. | [optional] |
| **source_template_code** | **String** | Specify the Source Template Code to filter the result by. | [optional] |
| **source_template_codes** | [**Array&lt;String&gt;**](String.md) | Specify the Source Template Codes to filter the result by. | [optional] |
| **width** | **Integer** | Specify the width to filter the result by. | [optional] |
| **height** | **Integer** | Specify the height to filter the result by. | [optional] |
| **unit_type** | **String** | Specify the unit type to filter the result by. | [optional] |
| **search** | **String** | A search term used to narrow the focus of the result. | [optional] |
| **sort** | **String** | Specify which attribute to order the result by. | [optional][default to &#39;last_edited&#39;] |
| **order** | **String** | Specify whether the result should be retrieved in ascending or descending order. | [optional][default to &#39;DESC&#39;] |
| **limit** | **Integer** | Specify the number of items per page to return. | [optional][default to 50] |
| **page** | **Integer** | Specify which page of the result to return. | [optional][default to 1] |
| **fields** | [**Array&lt;String&gt;**](String.md) | Specify the fields to the retrieve. | [optional] |

### Return type

[**ProjectsGETSuccess**](ProjectsGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_post

> <ProjectsPOSTSuccess> projects_post(projects_post_request)

Create a project

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::ProjectsApi.new
projects_post_request = DesignHuddleAdmin::ProjectsPOSTRequestOneOf.new({template_id: 37}) # ProjectsPOSTRequest | 

begin
  # Create a project
  result = api_instance.projects_post(projects_post_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_post: #{e}"
end
```

#### Using the projects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsPOSTSuccess>, Integer, Hash)> projects_post_with_http_info(projects_post_request)

```ruby
begin
  # Create a project
  data, status_code, headers = api_instance.projects_post_with_http_info(projects_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsPOSTSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **projects_post_request** | [**ProjectsPOSTRequest**](ProjectsPOSTRequest.md) |  |  |

### Return type

[**ProjectsPOSTSuccess**](ProjectsPOSTSuccess.md)

### Authorization

[UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## projects_project_id_delete

> <BaseSuccess> projects_project_id_delete(project_id)

Archive a project

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::ProjectsApi.new
project_id = 'project_id_example' # String | 

begin
  # Archive a project
  result = api_instance.projects_project_id_delete(project_id)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_delete: #{e}"
end
```

#### Using the projects_project_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccess>, Integer, Hash)> projects_project_id_delete_with_http_info(project_id)

```ruby
begin
  # Archive a project
  data, status_code, headers = api_instance.projects_project_id_delete_with_http_info(project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |

### Return type

[**BaseSuccess**](BaseSuccess.md)

### Authorization

[UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_project_id_get

> <ProjectsProjectIDGETSuccess> projects_project_id_get(project_id, opts)

Retrieve a project

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: AppAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::ProjectsApi.new
project_id = 'project_id_example' # String | 
opts = {
  generate_latest_thumbnail: true # Boolean | If a thumbnail has not already been generated incorporating the latest design changes, this will synchronously create a new thumbnail prior to returning the requested project data, including the new thumbnail_url.
}

begin
  # Retrieve a project
  result = api_instance.projects_project_id_get(project_id, opts)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_get: #{e}"
end
```

#### Using the projects_project_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsProjectIDGETSuccess>, Integer, Hash)> projects_project_id_get_with_http_info(project_id, opts)

```ruby
begin
  # Retrieve a project
  data, status_code, headers = api_instance.projects_project_id_get_with_http_info(project_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsProjectIDGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **generate_latest_thumbnail** | **Boolean** | If a thumbnail has not already been generated incorporating the latest design changes, this will synchronously create a new thumbnail prior to returning the requested project data, including the new thumbnail_url. | [optional][default to false] |

### Return type

[**ProjectsProjectIDGETSuccess**](ProjectsProjectIDGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_project_id_patch

> <BaseSuccess> projects_project_id_patch(project_id, projects_project_idpatch_request)

Update a project

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: AppAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::ProjectsApi.new
project_id = 'project_id_example' # String | 
projects_project_idpatch_request = DesignHuddleAdmin::ProjectsProjectIDPATCHRequest.new # ProjectsProjectIDPATCHRequest | 

begin
  # Update a project
  result = api_instance.projects_project_id_patch(project_id, projects_project_idpatch_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_patch: #{e}"
end
```

#### Using the projects_project_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseSuccess>, Integer, Hash)> projects_project_id_patch_with_http_info(project_id, projects_project_idpatch_request)

```ruby
begin
  # Update a project
  data, status_code, headers = api_instance.projects_project_id_patch_with_http_info(project_id, projects_project_idpatch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ProjectsApi->projects_project_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **projects_project_idpatch_request** | [**ProjectsProjectIDPATCHRequest**](ProjectsProjectIDPATCHRequest.md) |  |  |

### Return type

[**BaseSuccess**](BaseSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

