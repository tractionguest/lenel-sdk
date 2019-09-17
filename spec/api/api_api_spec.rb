=begin
#OpenAccess

#This document describes the OpenAccess REST API. OpenAccess provides access to OnGuard via a RESTful web service.  ## Security / licensing headers  Each authenticated request must include the following HTTP headers:   - `Application-Id` - Each application using the OpenAccess API must have a unique application ID.   - `Session-Token` - A session token is retrieved by logging in via the `POST /authentication` operation.  ## Input parameter location - Query string or request body?  Input parameters can be placed either in the request body or in the URL, as a query parameter. The API makes no distinction and will handle them in either location. In the API specification, some parameters are described as being in the request body, and others are described as being in the query string. This is done simply for clarity in each situation, but clients of the API are free to include parameters wherever it is most convenient. **Sensitive data should always be placed in the request body and not exposed in the URL.**  ### **POST /instances** example  ``` POST /instances?type_name=Lnl_Cardholder&version=1.0 {   \"property_value_map\": {     ...   } } ```  ...is equivalent to this...  ``` POST /instances&version=1.0 {   \"type_name\": \"Lnl_Cardholder\",   \"property_value_map\": {     ...   } } ```  ## Task queuing - dealing with long running requests  Some requests might take a long time, especially requests that access external systems, such as Active Directory. Standard OpenAccess requests will time out after 30 seconds if the HTTP request doesn't time out sooner, depending on the client. Any request that you expect to run long can be queued as a task by adding a `queue` property to the request, set to `true`. For example: ``` GET /directory_accounts_matching_cardholders?directory_id=id1 &cardholder_ids=[1,2,3,4,5,6,7,8,9,10] &filter=displayname has 'firstname' and displayname has 'lastname' &queue=true &version=1.0 ```  When a request is queued in this way, OpenAccess will queue a task for execution and return a 202 (Accepted) HTTP status code and a response identical to `GET /queue/{id}`. For example: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"status\": \"pending\",   \"version\": \"1.0\" } ```  The `id` property indicates the ID of the queued task, which can be used to check the status of the task: ``` GET /queue/5c4b7890-ee73-4199-b3d3-366003eb8ca1?version=1.0 ```  When the task is complete, the response will include the response to the queued request: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"response\": {     ...   },   \"status\": \"complete\",   \"version\": \"1.0\" } ```  The response can be retrieved any number of times until the task is deleted. A completed task can be deleted with `DELETE /queue/{id}` or it will be deleted automatically after 1 hour.  **Note:** Even though you can queue any request, it's only recommended when a request is expected to run long, like `GET /directory_accounts` and `GET /directory_accounts_matching_cardholders`.  ## Samples  There are several sample applications that demonstrate various aspects of the API.  ### [Cardholder Search](/api/access/onguard/openaccess/samples/Cardholder Search) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting cardholders and photos - `GET /instances`  ### [Command and Control](/api/access/onguard/openaccess/samples/Command and Control) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting panels and readers - `GET /instances` - Updating hardware status, getting/setting reader mode, and opening doors - `POST /execute_method`  ### [Event Subscriber](/api/access/onguard/openaccess/samples/Event Subscriber) - Getting directories used for authentication - `GET /directories` (not used within every event subscriber sample) - Login and logout - `POST /authentication` and `DELETE /authentication` - Adding/modifying/disabling event subscriptions - `POST /event_subscriptions`, `PUT /event_subscriptions`, and `DELETE /event_subscriptions` - Using the Web Event Bridge to receive events via WebSocket 

OpenAPI spec version: 7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ApiApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApiApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ApiApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApiApi' do
    it 'should create an instance of ApiApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ApiApi)
    end
  end

  # unit tests for delete_queued_task
  # Delete queued task
  # Deletes the queued task with the given ID. All queued tasks will be deleted after 1 hour if not explicitly deleted. Only complete tasks can be deleted, and users can only delete their own queued tasks. 
  # @param id ID of the task to delete.
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [nil]
  describe 'delete_queued_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_feature_availability
  # Get the OnGuard license feature
  # Used to retrieve the OnGuard license feature information.
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [Object]
  describe 'get_feature_availability test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_queued_task
  # Get queued task
  # Gets the queued task with the given ID, which will include the response when the task is complete. Users can only view their own queued tasks. 
  # @param id ID of the task to return.
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [QueuedTask]
  describe 'get_queued_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_queued_tasks
  # Get queued tasks
  # Gets the queued tasks created by the user. This method is only intended to check the status of multiple tasks. It will not include responses, even for complete tasks. Request a specific task to get the response. Users can only view their own queued tasks. 
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [QueuedTasks]
  describe 'get_queued_tasks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_version
  # Get the OnGuard API version
  # Used to retrieve the OnGuard product name and version information. An unauthenticated operation. 
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [Object]
  describe 'get_version test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for keepalive
  # Renew idle timeout countdown.
  # Used to prevent idle session timeout.
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @return [SharedResponseDefinition]
  describe 'keepalive test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_partner_values
  # Partners can use this to set their unique values.
  # Partners can use this to set their unique values
  # @param partner_values 
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [Object]
  describe 'post_partner_values test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_partner_values
  # Partners can use this to set their unique values.
  # Partners can use this to set their unique values
  # @param partner_values 
  # @param version Used to maintain backward compatibility as the API is updated, in the format 1.0.
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :queue Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;.
  # @return [Object]
  describe 'put_partner_values test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
