# DesignHuddleAdmin::TemplatesApi

All URIs are relative to *https://votercast.designhuddle.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**template_customization_objects_post**](TemplatesApi.md#template_customization_objects_post) | **POST** /template/customization-objects | Create a template customization object |
| [**template_jobs_job_id_get**](TemplatesApi.md#template_jobs_job_id_get) | **GET** /template/jobs/{job_id} | Retrieve template publish progress |
| [**templates_get**](TemplatesApi.md#templates_get) | **GET** /templates | List templates |
| [**templates_post**](TemplatesApi.md#templates_post) | **POST** /templates | Publish a template |
| [**templates_template_id_template_code_delete**](TemplatesApi.md#templates_template_id_template_code_delete) | **DELETE** /templates/{template_id/template_code} | Archive a template |
| [**templates_template_id_template_code_get**](TemplatesApi.md#templates_template_id_template_code_get) | **GET** /templates/{template_id/template_code} | Retrieve a template |
| [**templates_template_id_template_code_patch**](TemplatesApi.md#templates_template_id_template_code_patch) | **PATCH** /templates/{template_id/template_code} | Update a template |
| [**templates_template_id_template_code_put**](TemplatesApi.md#templates_template_id_template_code_put) | **PUT** /templates/{template_id/template_code} | Upsert a template |


## template_customization_objects_post

> <TemplateCustomizationObjectsPOSTSuccess> template_customization_objects_post(template_customization_objects_post_request)

Create a template customization object

### Examples

```ruby
require 'time'
require 'design_huddle_admin'
# setup authorization
DesignHuddleAdmin.configure do |config|
  # Configure Bearer authorization: UserAccessToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DesignHuddleAdmin::TemplatesApi.new
template_customization_objects_post_request = DesignHuddleAdmin::TemplateCustomizationObjectsPOSTRequest.new({object: 3.56}) # TemplateCustomizationObjectsPOSTRequest | 

begin
  # Create a template customization object
  result = api_instance.template_customization_objects_post(template_customization_objects_post_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->template_customization_objects_post: #{e}"
end
```

#### Using the template_customization_objects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateCustomizationObjectsPOSTSuccess>, Integer, Hash)> template_customization_objects_post_with_http_info(template_customization_objects_post_request)

```ruby
begin
  # Create a template customization object
  data, status_code, headers = api_instance.template_customization_objects_post_with_http_info(template_customization_objects_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateCustomizationObjectsPOSTSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->template_customization_objects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_customization_objects_post_request** | [**TemplateCustomizationObjectsPOSTRequest**](TemplateCustomizationObjectsPOSTRequest.md) |  |  |

### Return type

[**TemplateCustomizationObjectsPOSTSuccess**](TemplateCustomizationObjectsPOSTSuccess.md)

### Authorization

[UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## template_jobs_job_id_get

> <TemplateJobsJobIDGETSuccess> template_jobs_job_id_get(job_id)

Retrieve template publish progress

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
job_id = 'job_id_example' # String | 

begin
  # Retrieve template publish progress
  result = api_instance.template_jobs_job_id_get(job_id)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->template_jobs_job_id_get: #{e}"
end
```

#### Using the template_jobs_job_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateJobsJobIDGETSuccess>, Integer, Hash)> template_jobs_job_id_get_with_http_info(job_id)

```ruby
begin
  # Retrieve template publish progress
  data, status_code, headers = api_instance.template_jobs_job_id_get_with_http_info(job_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateJobsJobIDGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->template_jobs_job_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |

### Return type

[**TemplateJobsJobIDGETSuccess**](TemplateJobsJobIDGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_get

> <TemplatesGETSuccess> templates_get(opts)

List templates

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
opts = {
  brand_id: 56, # Integer | Specify the Brand ID to filter the result by.
  brand_code: 'brand_code_example', # String | Specify the Brand Code to filter the result by.
  media_type: 'digital', # String | Specify the media type to filter the result by.
  media_types: ['digital'], # Array<String> | Specify the media types to filter the result by.
  template_status: 'active', # String | Specify the template status to filter the result by.
  template_statuses: ['active'], # Array<String> | Specify the template statuses to filter the result by.
  primary_template_category_item_id: 56, # Integer | Specify the Primary Template Category Item ID to filter the result by.
  primary_template_category_item_ids: [37], # Array<Integer> | Specify the Primary Template Category Item IDs to filter the result by.
  source_project_id: 'source_project_id_example', # String | Specify the Source Project ID to filter the result by.
  source_project_ids: ['inner_example'], # Array<String> | Specify the Source Project IDs to filter the result by.
  width: 56, # Integer | Specify the width to filter the result by.
  height: 56, # Integer | Specify the height to filter the result by.
  unit_type: 'px', # String | Specify the unit type to filter the result by.
  search: 'search_example', # String | A search term used to narrow the focus of the result.
  sort: 'sort_example', # String | Specify which attribute to order the result by.
  order: 'ASC', # String | Specify whether the result should be retrieved in ascending or descending order.
  limit: 56, # Integer | Specify the number of items per page to return.
  page: 56, # Integer | Specify which page of the result to return.
  fields: ['template_id'] # Array<String> | Specify the fields to the retrieve.
}

begin
  # List templates
  result = api_instance.templates_get(opts)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_get: #{e}"
end
```

#### Using the templates_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesGETSuccess>, Integer, Hash)> templates_get_with_http_info(opts)

```ruby
begin
  # List templates
  data, status_code, headers = api_instance.templates_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **brand_id** | **Integer** | Specify the Brand ID to filter the result by. | [optional] |
| **brand_code** | **String** | Specify the Brand Code to filter the result by. | [optional] |
| **media_type** | **String** | Specify the media type to filter the result by. | [optional] |
| **media_types** | [**Array&lt;String&gt;**](String.md) | Specify the media types to filter the result by. | [optional] |
| **template_status** | **String** | Specify the template status to filter the result by. | [optional][default to &#39;active&#39;] |
| **template_statuses** | [**Array&lt;String&gt;**](String.md) | Specify the template statuses to filter the result by. | [optional] |
| **primary_template_category_item_id** | **Integer** | Specify the Primary Template Category Item ID to filter the result by. | [optional] |
| **primary_template_category_item_ids** | [**Array&lt;Integer&gt;**](Integer.md) | Specify the Primary Template Category Item IDs to filter the result by. | [optional] |
| **source_project_id** | **String** | Specify the Source Project ID to filter the result by. | [optional] |
| **source_project_ids** | [**Array&lt;String&gt;**](String.md) | Specify the Source Project IDs to filter the result by. | [optional] |
| **width** | **Integer** | Specify the width to filter the result by. | [optional] |
| **height** | **Integer** | Specify the height to filter the result by. | [optional] |
| **unit_type** | **String** | Specify the unit type to filter the result by. | [optional] |
| **search** | **String** | A search term used to narrow the focus of the result. | [optional] |
| **sort** | **String** | Specify which attribute to order the result by. | [optional][default to &#39;date_created&#39;] |
| **order** | **String** | Specify whether the result should be retrieved in ascending or descending order. | [optional][default to &#39;DESC&#39;] |
| **limit** | **Integer** | Specify the number of items per page to return. | [optional][default to 50] |
| **page** | **Integer** | Specify which page of the result to return. | [optional][default to 1] |
| **fields** | [**Array&lt;String&gt;**](String.md) | Specify the fields to the retrieve. | [optional] |

### Return type

[**TemplatesGETSuccess**](TemplatesGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_post

> <TemplatesPOSTSuccess> templates_post(templates_post_request)

Publish a template

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
templates_post_request = DesignHuddleAdmin::TemplatesPOSTRequest.new({project_id: 'project_id_example', template_title: 'template_title_example'}) # TemplatesPOSTRequest | 

begin
  # Publish a template
  result = api_instance.templates_post(templates_post_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_post: #{e}"
end
```

#### Using the templates_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesPOSTSuccess>, Integer, Hash)> templates_post_with_http_info(templates_post_request)

```ruby
begin
  # Publish a template
  data, status_code, headers = api_instance.templates_post_with_http_info(templates_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesPOSTSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates_post_request** | [**TemplatesPOSTRequest**](TemplatesPOSTRequest.md) |  |  |

### Return type

[**TemplatesPOSTSuccess**](TemplatesPOSTSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_template_code_delete

> <TemplatesTemplateIDBaseSuccess> templates_template_id_template_code_delete(template_id_template_code)

Archive a template

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
template_id_template_code = nil # TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter | 

begin
  # Archive a template
  result = api_instance.templates_template_id_template_code_delete(template_id_template_code)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_delete: #{e}"
end
```

#### Using the templates_template_id_template_code_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIDBaseSuccess>, Integer, Hash)> templates_template_id_template_code_delete_with_http_info(template_id_template_code)

```ruby
begin
  # Archive a template
  data, status_code, headers = api_instance.templates_template_id_template_code_delete_with_http_info(template_id_template_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIDBaseSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id_template_code** | [**TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter**](.md) |  |  |

### Return type

[**TemplatesTemplateIDBaseSuccess**](TemplatesTemplateIDBaseSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_template_code_get

> <TemplatesTemplateIDGETSuccess> templates_template_id_template_code_get(template_id_template_code)

Retrieve a template

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
template_id_template_code = nil # TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter | 

begin
  # Retrieve a template
  result = api_instance.templates_template_id_template_code_get(template_id_template_code)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_get: #{e}"
end
```

#### Using the templates_template_id_template_code_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIDGETSuccess>, Integer, Hash)> templates_template_id_template_code_get_with_http_info(template_id_template_code)

```ruby
begin
  # Retrieve a template
  data, status_code, headers = api_instance.templates_template_id_template_code_get_with_http_info(template_id_template_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIDGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id_template_code** | [**TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter**](.md) |  |  |

### Return type

[**TemplatesTemplateIDGETSuccess**](TemplatesTemplateIDGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## templates_template_id_template_code_patch

> <TemplatesTemplateIDBaseSuccess> templates_template_id_template_code_patch(template_id_template_code, templates_template_idpatch_request)

Update a template

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
template_id_template_code = nil # TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter | 
templates_template_idpatch_request = DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest.new # TemplatesTemplateIDPATCHRequest | 

begin
  # Update a template
  result = api_instance.templates_template_id_template_code_patch(template_id_template_code, templates_template_idpatch_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_patch: #{e}"
end
```

#### Using the templates_template_id_template_code_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIDBaseSuccess>, Integer, Hash)> templates_template_id_template_code_patch_with_http_info(template_id_template_code, templates_template_idpatch_request)

```ruby
begin
  # Update a template
  data, status_code, headers = api_instance.templates_template_id_template_code_patch_with_http_info(template_id_template_code, templates_template_idpatch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIDBaseSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id_template_code** | [**TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter**](.md) |  |  |
| **templates_template_idpatch_request** | [**TemplatesTemplateIDPATCHRequest**](TemplatesTemplateIDPATCHRequest.md) |  |  |

### Return type

[**TemplatesTemplateIDBaseSuccess**](TemplatesTemplateIDBaseSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## templates_template_id_template_code_put

> <TemplatesTemplateIDBaseSuccess> templates_template_id_template_code_put(template_id_template_code, templates_template_idput_request)

Upsert a template

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

api_instance = DesignHuddleAdmin::TemplatesApi.new
template_id_template_code = nil # TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter | 
templates_template_idput_request = DesignHuddleAdmin::TemplatesTemplateIDPUTRequest.new({project_id: 'project_id_example', template_title: 'template_title_example'}) # TemplatesTemplateIDPUTRequest | 

begin
  # Upsert a template
  result = api_instance.templates_template_id_template_code_put(template_id_template_code, templates_template_idput_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_put: #{e}"
end
```

#### Using the templates_template_id_template_code_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplatesTemplateIDBaseSuccess>, Integer, Hash)> templates_template_id_template_code_put_with_http_info(template_id_template_code, templates_template_idput_request)

```ruby
begin
  # Upsert a template
  data, status_code, headers = api_instance.templates_template_id_template_code_put_with_http_info(template_id_template_code, templates_template_idput_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplatesTemplateIDBaseSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling TemplatesApi->templates_template_id_template_code_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id_template_code** | [**TemplatesTemplateIdTemplateCodeDeleteTemplateIdTemplateCodeParameter**](.md) |  |  |
| **templates_template_idput_request** | [**TemplatesTemplateIDPUTRequest**](TemplatesTemplateIDPUTRequest.md) |  |  |

### Return type

[**TemplatesTemplateIDBaseSuccess**](TemplatesTemplateIDBaseSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

