# SwaggerClient::EventsApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_event_subscription**](EventsApi.md#add_event_subscription) | **POST** /event_subscriptions | Add event subscription
[**disable_event_subscription**](EventsApi.md#disable_event_subscription) | **DELETE** /event_subscriptions/{id} | Disable event subscription
[**get_event_subscription**](EventsApi.md#get_event_subscription) | **GET** /event_subscriptions/{id} | Get event subscription
[**get_event_subscriptions**](EventsApi.md#get_event_subscriptions) | **GET** /event_subscriptions | Get event subscriptions
[**modify_event_subscription**](EventsApi.md#modify_event_subscription) | **PUT** /event_subscriptions/{id} | Modify event subscription

# **add_event_subscription**
> EventSubscription add_event_subscription(version, opts)

Add event subscription

Adds an event subscription.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::EventsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  body: SwaggerClient::NewEventSubscription.new # NewEventSubscription | The new event subscription.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Add event subscription
  result = api_instance.add_event_subscription(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EventsApi->add_event_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **body** | [**NewEventSubscription**](NewEventSubscription.md)| The new event subscription. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **disable_event_subscription**
> EventSubscription disable_event_subscription(id, version, opts)

Disable event subscription

Disables the event subscription with the given ID. Non-SA users can only disable subscriptions they created. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::EventsApi.new
id = 56 # Integer | Id of the event subscription to disable.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Disable event subscription
  result = api_instance.disable_event_subscription(id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EventsApi->disable_event_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the event subscription to disable. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_event_subscription**
> EventSubscription get_event_subscription(id, version, opts)

Get event subscription

Gets the event subscription with the given ID. Non-SA users can only view subscriptions they created. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::EventsApi.new
id = 56 # Integer | ID of the event subscription to return.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get event subscription
  result = api_instance.get_event_subscription(id, version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EventsApi->get_event_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of the event subscription to return. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_event_subscriptions**
> PagedEventSubscriptions get_event_subscriptions(version, opts)

Get event subscriptions

Gets event subscriptions. Non-SA users can only view subscriptions they created. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::EventsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get event subscriptions
  result = api_instance.get_event_subscriptions(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EventsApi->get_event_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**PagedEventSubscriptions**](PagedEventSubscriptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_event_subscription**
> EventSubscription modify_event_subscription(versionid, opts)

Modify event subscription

Modifies the event subscription with the given ID. Non-SA users can only modify subscriptions they created. 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::EventsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 56 # Integer | Id of the event subscription to modify.
opts = { 
  body: SwaggerClient::ModifiedEventSubscription.new # ModifiedEventSubscription | The modified event subscription.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Modify event subscription
  result = api_instance.modify_event_subscription(versionid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling EventsApi->modify_event_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **Integer**| Id of the event subscription to modify. | 
 **body** | [**ModifiedEventSubscription**](ModifiedEventSubscription.md)| The modified event subscription. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**EventSubscription**](EventSubscription.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



