# LenelSdk::MapsApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_map_background**](MapsApi.md#get_map_background) | **GET** /maps/{id}/background | Get map background image
[**get_map_devices**](MapsApi.md#get_map_devices) | **GET** /maps/{id}/devices | Get map devices
[**get_map_icon_groups**](MapsApi.md#get_map_icon_groups) | **GET** /map_icon_groups | Get map icon groups
[**get_map_icons**](MapsApi.md#get_map_icons) | **GET** /map_icons | Get map icons
[**get_maps**](MapsApi.md#get_maps) | **GET** /maps | Get maps

# **get_map_background**
> MapBackground get_map_background(id, version)

Get map background image

Gets the background for a specific map ID. The response is an array of image data without encoding, in .png or .jpg format.

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

api_instance = LenelSdk::MapsApi.new
id = 'id_example' # String | The map ID.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.


begin
  #Get map background image
  result = api_instance.get_map_background(id, version)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling MapsApi->get_map_background: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The map ID. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 

### Return type

[**MapBackground**](MapBackground.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_map_devices**
> GetMapDevicesResponse get_map_devices(id, version, opts)

Get map devices

Gets a page of devices for a specific map ID.

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

api_instance = LenelSdk::MapsApi.new
id = 'id_example' # String | The map ID.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on map properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get map devices
  result = api_instance.get_map_devices(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling MapsApi->get_map_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The map ID. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on map properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetMapDevicesResponse**](GetMapDevicesResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_map_icon_groups**
> GetMapIconGroupsResponse get_map_icon_groups(version, opts)

Get map icon groups

Used to retrieve a page of map icon groups.

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

api_instance = LenelSdk::MapsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on map icon group properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get map icon groups
  result = api_instance.get_map_icon_groups(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling MapsApi->get_map_icon_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on map icon group properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetMapIconGroupsResponse**](GetMapIconGroupsResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_map_icons**
> GetMapIconsResponse get_map_icons(version, opts)

Get map icons

Used to retrieve a page of map icons.

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

api_instance = LenelSdk::MapsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on map icon properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get map icons
  result = api_instance.get_map_icons(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling MapsApi->get_map_icons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on map icon properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetMapIconsResponse**](GetMapIconsResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_maps**
> GetMapsResponse get_maps(version, opts)

Get maps

Used to retrieve a page of maps.

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

api_instance = LenelSdk::MapsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  map_filter: 'map_filter_example', # String | The filter based on map properties.
  map_device_filter: 'map_device_filter_example', # String | The filter based on map device properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get maps
  result = api_instance.get_maps(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling MapsApi->get_maps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **map_filter** | **String**| The filter based on map properties. | [optional] 
 **map_device_filter** | **String**| The filter based on map device properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetMapsResponse**](GetMapsResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



