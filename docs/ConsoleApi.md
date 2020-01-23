# LenelSDK::ConsoleApi

All URIs are relative to *https://localhost/api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_or_modify_console_card**](ConsoleApi.md#add_or_modify_console_card) | **POST** /console/cards | Add or modify console card
[**delete_console_card**](ConsoleApi.md#delete_console_card) | **DELETE** /console/cards | Delete console card
[**get_console_layout**](ConsoleApi.md#get_console_layout) | **GET** /console/layouts | Get system console layout
[**modify_console_layout**](ConsoleApi.md#modify_console_layout) | **PUT** /console/layouts | Modify or add system console layout


# **add_or_modify_console_card**
> ConsoleCard add_or_modify_console_card(console_card, version, opts)

Add or modify console card

Adds a console card to all layouts or modifies a console card in system console layout.

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

api_instance = LenelSDK::ConsoleApi.new

console_card = LenelSDK::ConsoleCard.new # ConsoleCard | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Add or modify console card
  result = api_instance.add_or_modify_console_card(console_card, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ConsoleApi->add_or_modify_console_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **console_card** | [**ConsoleCard**](ConsoleCard.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

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

api_instance = LenelSDK::ConsoleApi.new

card_id = 'card_id_example' # String | The ID of console card to be deleted.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Delete console card
  result = api_instance.delete_console_card(card_id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ConsoleApi->delete_console_card: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_id** | **String**| The ID of console card to be deleted. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
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

api_instance = LenelSDK::ConsoleApi.new

layout_id = 'layout_id_example' # String | The ID of the system console layout

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get system console layout
  result = api_instance.get_console_layout(layout_id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ConsoleApi->get_console_layout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **layout_id** | **String**| The ID of the system console layout | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**ConsoleLayout**](ConsoleLayout.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_console_layout**
> AddConsoleLayout modify_console_layout(console_layout, version, opts)

Modify or add system console layout

Modify the existing system console layout or add if not exist.

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

api_instance = LenelSDK::ConsoleApi.new

console_layout = LenelSDK::ConsoleLayout.new # ConsoleLayout | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Modify or add system console layout
  result = api_instance.modify_console_layout(console_layout, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling ConsoleApi->modify_console_layout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **console_layout** | [**ConsoleLayout**](ConsoleLayout.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**AddConsoleLayout**](AddConsoleLayout.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



