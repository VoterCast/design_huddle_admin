# DesignHuddleAdmin::ExportApi

All URIs are relative to *https://votercast.designhuddle.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**projects_project_id_export_jobs_job_id_get**](ExportApi.md#projects_project_id_export_jobs_job_id_get) | **GET** /projects/{project_id}/export/jobs/{job_id} | Retrieve export job progress |
| [**projects_project_id_export_post**](ExportApi.md#projects_project_id_export_post) | **POST** /projects/{project_id}/export | Create an export job |


## projects_project_id_export_jobs_job_id_get

> <ProjectsProjectIDExportJobsJobIDGETSuccess> projects_project_id_export_jobs_job_id_get(job_id, project_id)

Retrieve export job progress

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

api_instance = DesignHuddleAdmin::ExportApi.new
job_id = 'job_id_example' # String | 
project_id = 'project_id_example' # String | 

begin
  # Retrieve export job progress
  result = api_instance.projects_project_id_export_jobs_job_id_get(job_id, project_id)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ExportApi->projects_project_id_export_jobs_job_id_get: #{e}"
end
```

#### Using the projects_project_id_export_jobs_job_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsProjectIDExportJobsJobIDGETSuccess>, Integer, Hash)> projects_project_id_export_jobs_job_id_get_with_http_info(job_id, project_id)

```ruby
begin
  # Retrieve export job progress
  data, status_code, headers = api_instance.projects_project_id_export_jobs_job_id_get_with_http_info(job_id, project_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsProjectIDExportJobsJobIDGETSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ExportApi->projects_project_id_export_jobs_job_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** |  |  |
| **project_id** | **String** |  |  |

### Return type

[**ProjectsProjectIDExportJobsJobIDGETSuccess**](ProjectsProjectIDExportJobsJobIDGETSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## projects_project_id_export_post

> <ProjectsProjectIDExportPOSTSuccess> projects_project_id_export_post(project_id, projects_project_id_export_post_request)

Create an export job

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

api_instance = DesignHuddleAdmin::ExportApi.new
project_id = 'project_id_example' # String | 
projects_project_id_export_post_request = DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf.new({format: 'jpg'}) # ProjectsProjectIDExportPOSTRequest | 

begin
  # Create an export job
  result = api_instance.projects_project_id_export_post(project_id, projects_project_id_export_post_request)
  p result
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ExportApi->projects_project_id_export_post: #{e}"
end
```

#### Using the projects_project_id_export_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectsProjectIDExportPOSTSuccess>, Integer, Hash)> projects_project_id_export_post_with_http_info(project_id, projects_project_id_export_post_request)

```ruby
begin
  # Create an export job
  data, status_code, headers = api_instance.projects_project_id_export_post_with_http_info(project_id, projects_project_id_export_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectsProjectIDExportPOSTSuccess>
rescue DesignHuddleAdmin::ApiError => e
  puts "Error when calling ExportApi->projects_project_id_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **projects_project_id_export_post_request** | [**ProjectsProjectIDExportPOSTRequest**](ProjectsProjectIDExportPOSTRequest.md) |  |  |

### Return type

[**ProjectsProjectIDExportPOSTSuccess**](ProjectsProjectIDExportPOSTSuccess.md)

### Authorization

[AppAccessToken](../README.md#AppAccessToken), [UserAccessToken](../README.md#UserAccessToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

