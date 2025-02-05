=begin
#OpenAccess

#This document describes the OpenAccess REST API. OpenAccess provides access to OnGuard via a RESTful web service.  ## Security / licensing headers  Each authenticated request must include the following HTTP headers:   - `Application-Id` - Each application using the OpenAccess API must have a unique application ID.   - `Session-Token` - A session token is retrieved by logging in via the `POST /authentication` operation.  ## Input parameter location - Query string or request body?  Input parameters can be placed either in the request body or in the URL, as a query parameter. The API makes no distinction and will handle them in either location. In the API specification, some parameters are described as being in the request body, and others are described as being in the query string. This is done simply for clarity in each situation, but clients of the API are free to include parameters wherever it is most convenient. **Sensitive data should always be placed in the request body and not exposed in the URL.**  ### **POST /instances** example  ``` POST /instances?type_name=Lnl_Cardholder&version=1.0 {   \"property_value_map\": {     ...   } } ```  ...is equivalent to this...  ``` POST /instances&version=1.0 {   \"type_name\": \"Lnl_Cardholder\",   \"property_value_map\": {     ...   } } ```  ## Task queuing - dealing with long running requests  Some requests might take a long time, especially requests that access external systems, such as Active Directory. Standard OpenAccess requests will time out after 30 seconds if the HTTP request doesn't time out sooner, depending on the client. Any request that you expect to run long can be queued as a task by adding a `queue` property to the request, set to `true`. For example: ``` GET /directory_accounts_matching_cardholders?directory_id=id1 &cardholder_ids=[1,2,3,4,5,6,7,8,9,10] &filter=displayname has 'firstname' and displayname has 'lastname' &queue=true &version=1.0 ```  When a request is queued in this way, OpenAccess will queue a task for execution and return a 202 (Accepted) HTTP status code and a response identical to `GET /queue/{id}`. For example: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"status\": \"pending\",   \"version\": \"1.0\" } ```  The `id` property indicates the ID of the queued task, which can be used to check the status of the task: ``` GET /queue/5c4b7890-ee73-4199-b3d3-366003eb8ca1?version=1.0 ```  When the task is complete, the response will include the response to the queued request: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"response\": {     ...   },   \"status\": \"complete\",   \"version\": \"1.0\" } ```  The response can be retrieved any number of times until the task is deleted. A completed task can be deleted with `DELETE /queue/{id}` or it will be deleted automatically after 1 hour.  **Note:** Even though you can queue any request, it's only recommended when a request is expected to run long, like `GET /directory_accounts` and `GET /directory_accounts_matching_cardholders`.  ## Samples  There are several sample applications that demonstrate various aspects of the API.  ### [Cardholder Search](/api/access/onguard/openaccess/samples/Cardholder Search) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting cardholders and photos - `GET /instances`  ### [Command and Control](/api/access/onguard/openaccess/samples/Command and Control) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting panels and readers - `GET /instances` - Updating hardware status, getting/setting reader mode, and opening doors - `POST /execute_method`  ### [Event Subscriber](/api/access/onguard/openaccess/samples/Event Subscriber) - Getting directories used for authentication - `GET /directories` (not used within every event subscriber sample) - Login and logout - `POST /authentication` and `DELETE /authentication` - Adding/modifying/disabling event subscriptions - `POST /event_subscriptions`, `PUT /event_subscriptions`, and `DELETE /event_subscriptions` - Using the Web Event Bridge to receive events via WebSocket 

OpenAPI spec version: 8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.67
=end

module SwaggerClient
  class PrintersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add badge printer
    # Add badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [SharedResponseDefinition]
    def add_badge_printer(body, version, opts = {})
      data, _status_code, _headers = add_badge_printer_with_http_info(body, version, opts)
      data
    end

    # Add badge printer
    # Add badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [Array<(SharedResponseDefinition, Integer, Hash)>] SharedResponseDefinition data, response status code and response headers
    def add_badge_printer_with_http_info(body, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrintersApi.add_badge_printer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrintersApi.add_badge_printer"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PrintersApi.add_badge_printer"
      end
      # resource path
      local_var_path = '/badge_printers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'queue'] = opts[:'queue'] if !opts[:'queue'].nil?
      query_params[:'do_not_reset_inactivity_timer'] = opts[:'do_not_reset_inactivity_timer'] if !opts[:'do_not_reset_inactivity_timer'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SharedResponseDefinition' 

      auth_names = opts[:auth_names] || ['ApplicationId', 'SessionToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrintersApi#add_badge_printer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete badge printer
    # Delete badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [SharedResponseDefinition]
    def delete_badge_printer(body, version, opts = {})
      data, _status_code, _headers = delete_badge_printer_with_http_info(body, version, opts)
      data
    end

    # Delete badge printer
    # Delete badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [Array<(SharedResponseDefinition, Integer, Hash)>] SharedResponseDefinition data, response status code and response headers
    def delete_badge_printer_with_http_info(body, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrintersApi.delete_badge_printer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrintersApi.delete_badge_printer"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PrintersApi.delete_badge_printer"
      end
      # resource path
      local_var_path = '/badge_printers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'queue'] = opts[:'queue'] if !opts[:'queue'].nil?
      query_params[:'do_not_reset_inactivity_timer'] = opts[:'do_not_reset_inactivity_timer'] if !opts[:'do_not_reset_inactivity_timer'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SharedResponseDefinition' 

      auth_names = opts[:auth_names] || ['ApplicationId', 'SessionToken']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrintersApi#delete_badge_printer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of badge printers
    # Retrieve a list of badge printers.
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :badge_type_id The ID associated with a given badge type.
    # @option opts [String] :filter The filter based on badge printers
    # @option opts [Integer] :page_number The page number to be returned (starts at 1).
    # @option opts [Integer] :page_size The number of items to be returned per page.
    # @option opts [String] :order_by The field(s) to use when sorting the results.
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [BadgePrinters]
    def get_badge_printers(version, opts = {})
      data, _status_code, _headers = get_badge_printers_with_http_info(version, opts)
      data
    end

    # Retrieve a list of badge printers
    # Retrieve a list of badge printers.
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :badge_type_id The ID associated with a given badge type.
    # @option opts [String] :filter The filter based on badge printers
    # @option opts [Integer] :page_number The page number to be returned (starts at 1).
    # @option opts [Integer] :page_size The number of items to be returned per page.
    # @option opts [String] :order_by The field(s) to use when sorting the results.
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [Array<(BadgePrinters, Integer, Hash)>] BadgePrinters data, response status code and response headers
    def get_badge_printers_with_http_info(version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrintersApi.get_badge_printers ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PrintersApi.get_badge_printers"
      end
      # resource path
      local_var_path = '/badge_printers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'badge_type_id'] = opts[:'badge_type_id'] if !opts[:'badge_type_id'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'page_number'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'queue'] = opts[:'queue'] if !opts[:'queue'].nil?
      query_params[:'do_not_reset_inactivity_timer'] = opts[:'do_not_reset_inactivity_timer'] if !opts[:'do_not_reset_inactivity_timer'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'BadgePrinters' 

      auth_names = opts[:auth_names] || ['ApplicationId', 'SessionToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrintersApi#get_badge_printers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Modify badge printer
    # Modify badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [SharedResponseDefinition]
    def modify_badge_printer(body, version, opts = {})
      data, _status_code, _headers = modify_badge_printer_with_http_info(body, version, opts)
      data
    end

    # Modify badge printer
    # Modify badge printer.
    # @param body 
    # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
    # @option opts [BOOLEAN] :do_not_reset_inactivity_timer If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
    # @return [Array<(SharedResponseDefinition, Integer, Hash)>] SharedResponseDefinition data, response status code and response headers
    def modify_badge_printer_with_http_info(body, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrintersApi.modify_badge_printer ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PrintersApi.modify_badge_printer"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PrintersApi.modify_badge_printer"
      end
      # resource path
      local_var_path = '/badge_printers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'queue'] = opts[:'queue'] if !opts[:'queue'].nil?
      query_params[:'do_not_reset_inactivity_timer'] = opts[:'do_not_reset_inactivity_timer'] if !opts[:'do_not_reset_inactivity_timer'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'SharedResponseDefinition' 

      auth_names = opts[:auth_names] || ['ApplicationId', 'SessionToken']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrintersApi#modify_badge_printer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
