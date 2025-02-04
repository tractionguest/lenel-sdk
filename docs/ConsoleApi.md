# LenelSdk::ConsoleApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_or_modify_console_card**](ConsoleApi.md#add_or_modify_console_card) | **POST** /console/cards | Add or modify console card
[**delete_console_card**](ConsoleApi.md#delete_console_card) | **DELETE** /console/cards | Delete console card
[**get_console_layout**](ConsoleApi.md#get_console_layout) | **GET** /console/layouts | Get system console layout
[**modify_console_layout**](ConsoleApi.md#modify_console_layout) | **PUT** /console/layouts | Modify or add system console layout

# **add_or_modify_console_card**
> ConsoleCard add_or_modify_console_card(bodyversion, opts)

Add or modify console card

Adds a console card to all layouts or modifies a console card in system console layout.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::ConsoleApi.new
body = LenelSdk::ConsoleCard.new # ConsoleCard | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Add or modify console card
  result = api_instance.add_or_modify_console_card(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling ConsoleApi->add_or_modify_console_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConsoleCard**](ConsoleCard.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**ConsoleCard**](ConsoleCard.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_console_card**
> SharedResponseDefinition delete_console_card(card_id, version, opts)

Delete console card

Deletes specified console card from all layouts.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::ConsoleApi.new
card_id = 'card_id_example' # String | The ID of console card to be deleted.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Delete console card
  result = api_instance.delete_console_card(card_id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling ConsoleApi->delete_console_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_id** | **String**| The ID of console card to be deleted. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_console_layout**
> ConsoleLayout get_console_layout(layout_id, version, opts)

Get system console layout

Returns specific system console layout

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::ConsoleApi.new
layout_id = 'layout_id_example' # String | The ID of the system console layout
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get system console layout
  result = api_instance.get_console_layout(layout_id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling ConsoleApi->get_console_layout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **layout_id** | **String**| The ID of the system console layout | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**ConsoleLayout**](ConsoleLayout.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_console_layout**
> AddConsoleLayout modify_console_layout(bodyversion, opts)

Modify or add system console layout

Modify the existing system console layout or add if not exist.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::ConsoleApi.new
body = LenelSdk::ConsoleLayout.new # ConsoleLayout | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Modify or add system console layout
  result = api_instance.modify_console_layout(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling ConsoleApi->modify_console_layout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConsoleLayout**](ConsoleLayout.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**AddConsoleLayout**](AddConsoleLayout.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



