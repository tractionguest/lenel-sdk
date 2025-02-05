# SwaggerClient::PrintersApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_badge_printer**](PrintersApi.md#add_badge_printer) | **POST** /badge_printers | Add badge printer
[**delete_badge_printer**](PrintersApi.md#delete_badge_printer) | **DELETE** /badge_printers | Delete badge printer
[**get_badge_printers**](PrintersApi.md#get_badge_printers) | **GET** /badge_printers | Retrieve a list of badge printers
[**modify_badge_printer**](PrintersApi.md#modify_badge_printer) | **PUT** /badge_printers | Modify badge printer

# **add_badge_printer**
> SharedResponseDefinition add_badge_printer(bodyversion, opts)

Add badge printer

Add badge printer.

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

api_instance = SwaggerClient::PrintersApi.new
body = SwaggerClient::BadgePrintersBody1.new # BadgePrintersBody1 | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Add badge printer
  result = api_instance.add_badge_printer(bodyversion, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrintersApi->add_badge_printer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BadgePrintersBody1**](BadgePrintersBody1.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_badge_printer**
> SharedResponseDefinition delete_badge_printer(bodyversion, opts)

Delete badge printer

Delete badge printer.

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

api_instance = SwaggerClient::PrintersApi.new
body = SwaggerClient::BadgePrintersBody2.new # BadgePrintersBody2 | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Delete badge printer
  result = api_instance.delete_badge_printer(bodyversion, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrintersApi->delete_badge_printer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BadgePrintersBody2**](BadgePrintersBody2.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_badge_printers**
> BadgePrinters get_badge_printers(version, opts)

Retrieve a list of badge printers

Retrieve a list of badge printers.

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

api_instance = SwaggerClient::PrintersApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  badge_type_id: 56, # Integer | The ID associated with a given badge type.
  filter: 'filter_example', # String | The filter based on badge printers
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Retrieve a list of badge printers
  result = api_instance.get_badge_printers(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrintersApi->get_badge_printers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **badge_type_id** | **Integer**| The ID associated with a given badge type. | [optional] 
 **filter** | **String**| The filter based on badge printers | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**BadgePrinters**](BadgePrinters.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_badge_printer**
> SharedResponseDefinition modify_badge_printer(bodyversion, opts)

Modify badge printer

Modify badge printer.

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

api_instance = SwaggerClient::PrintersApi.new
body = SwaggerClient::BadgePrintersBody.new # BadgePrintersBody | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Modify badge printer
  result = api_instance.modify_badge_printer(bodyversion, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrintersApi->modify_badge_printer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BadgePrintersBody**](BadgePrintersBody.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



