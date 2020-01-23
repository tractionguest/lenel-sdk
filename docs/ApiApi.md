# LenelSDK::ApiApi

All URIs are relative to *https://localhost/api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_queued_task**](ApiApi.md#delete_queued_task) | **DELETE** /queue/{id} | Delete queued task
[**get_feature_availability**](ApiApi.md#get_feature_availability) | **GET** /feature_availability | Get the OnGuard license feature
[**get_queued_task**](ApiApi.md#get_queued_task) | **GET** /queue/{id} | Get queued task
[**get_queued_tasks**](ApiApi.md#get_queued_tasks) | **GET** /queue | Get queued tasks
[**get_version**](ApiApi.md#get_version) | **GET** /version | Get the OnGuard API version
[**keepalive**](ApiApi.md#keepalive) | **GET** /keepalive | Renew idle timeout countdown.
[**post_partner_values**](ApiApi.md#post_partner_values) | **POST** /partner_values | Partners can use this to set their unique values.
[**put_partner_values**](ApiApi.md#put_partner_values) | **PUT** /partner_values | Partners can use this to set their unique values.


# **delete_queued_task**
> delete_queued_task(id, version, opts)

Delete queued task

Deletes the queued task with the given ID. All queued tasks will be deleted after 1 hour if not explicitly deleted. Only complete tasks can be deleted, and users can only delete their own queued tasks. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

id = 'id_example' # String | ID of the task to delete.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Delete queued task
  api_instance.delete_queued_task(id, version, opts)
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->delete_queued_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID of the task to delete. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_feature_availability**
> Object get_feature_availability(version, opts)

Get the OnGuard license feature

Used to retrieve the OnGuard license feature information.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get the OnGuard license feature
  result = api_instance.get_feature_availability(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->get_feature_availability: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_queued_task**
> QueuedTask get_queued_task(id, version, opts)

Get queued task

Gets the queued task with the given ID, which will include the response when the task is complete. Users can only view their own queued tasks. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

id = 'id_example' # String | ID of the task to return.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get queued task
  result = api_instance.get_queued_task(id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->get_queued_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)| ID of the task to return. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**QueuedTask**](QueuedTask.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_queued_tasks**
> QueuedTasks get_queued_tasks(version, opts)

Get queued tasks

Gets the queued tasks created by the user. This method is only intended to check the status of multiple tasks. It will not include responses, even for complete tasks. Request a specific task to get the response. Users can only view their own queued tasks. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get queued tasks
  result = api_instance.get_queued_tasks(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->get_queued_tasks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**QueuedTasks**](QueuedTasks.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_version**
> Object get_version(version, opts)

Get the OnGuard API version

Used to retrieve the OnGuard product name and version information. An unauthenticated operation. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get the OnGuard API version
  result = api_instance.get_version(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->get_version: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **keepalive**
> SharedResponseDefinition keepalive(version)

Renew idle timeout countdown.

Used to prevent idle session timeout.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.


begin
  #Renew idle timeout countdown.
  result = api_instance.keepalive(version)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->keepalive: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_partner_values**
> Object post_partner_values(partner_values, version, opts)

Partners can use this to set their unique values.

Partners can use this to set their unique values

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

partner_values = LenelSDK::PartnerValues1.new # PartnerValues1 | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Partners can use this to set their unique values.
  result = api_instance.post_partner_values(partner_values, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->post_partner_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_values** | [**PartnerValues1**](PartnerValues1.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_partner_values**
> Object put_partner_values(partner_values, version, opts)

Partners can use this to set their unique values.

Partners can use this to set their unique values

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::ApiApi.new

partner_values = LenelSDK::PartnerValues.new # PartnerValues | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Partners can use this to set their unique values.
  result = api_instance.put_partner_values(partner_values, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ApiApi->put_partner_values: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_values** | [**PartnerValues**](PartnerValues.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



