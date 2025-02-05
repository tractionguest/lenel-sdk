=begin
#OpenAccess

#This document describes the OpenAccess REST API. OpenAccess provides access to OnGuard via a RESTful web service.  ## Security / licensing headers  Each authenticated request must include the following HTTP headers:   - `Application-Id` - Each application using the OpenAccess API must have a unique application ID.   - `Session-Token` - A session token is retrieved by logging in via the `POST /authentication` operation.  ## Input parameter location - Query string or request body?  Input parameters can be placed either in the request body or in the URL, as a query parameter. The API makes no distinction and will handle them in either location. In the API specification, some parameters are described as being in the request body, and others are described as being in the query string. This is done simply for clarity in each situation, but clients of the API are free to include parameters wherever it is most convenient. **Sensitive data should always be placed in the request body and not exposed in the URL.**  ### **POST /instances** example  ``` POST /instances?type_name=Lnl_Cardholder&version=1.0 {   \"property_value_map\": {     ...   } } ```  ...is equivalent to this...  ``` POST /instances&version=1.0 {   \"type_name\": \"Lnl_Cardholder\",   \"property_value_map\": {     ...   } } ```  ## Task queuing - dealing with long running requests  Some requests might take a long time, especially requests that access external systems, such as Active Directory. Standard OpenAccess requests will time out after 30 seconds if the HTTP request doesn't time out sooner, depending on the client. Any request that you expect to run long can be queued as a task by adding a `queue` property to the request, set to `true`. For example: ``` GET /directory_accounts_matching_cardholders?directory_id=id1 &cardholder_ids=[1,2,3,4,5,6,7,8,9,10] &filter=displayname has 'firstname' and displayname has 'lastname' &queue=true &version=1.0 ```  When a request is queued in this way, OpenAccess will queue a task for execution and return a 202 (Accepted) HTTP status code and a response identical to `GET /queue/{id}`. For example: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"status\": \"pending\",   \"version\": \"1.0\" } ```  The `id` property indicates the ID of the queued task, which can be used to check the status of the task: ``` GET /queue/5c4b7890-ee73-4199-b3d3-366003eb8ca1?version=1.0 ```  When the task is complete, the response will include the response to the queued request: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"response\": {     ...   },   \"status\": \"complete\",   \"version\": \"1.0\" } ```  The response can be retrieved any number of times until the task is deleted. A completed task can be deleted with `DELETE /queue/{id}` or it will be deleted automatically after 1 hour.  **Note:** Even though you can queue any request, it's only recommended when a request is expected to run long, like `GET /directory_accounts` and `GET /directory_accounts_matching_cardholders`.  ## Samples  There are several sample applications that demonstrate various aspects of the API.  ### [Cardholder Search](/api/access/onguard/openaccess/samples/Cardholder Search) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting cardholders and photos - `GET /instances`  ### [Command and Control](/api/access/onguard/openaccess/samples/Command and Control) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting panels and readers - `GET /instances` - Updating hardware status, getting/setting reader mode, and opening doors - `POST /execute_method`  ### [Event Subscriber](/api/access/onguard/openaccess/samples/Event Subscriber) - Getting directories used for authentication - `GET /directories` (not used within every event subscriber sample) - Login and logout - `POST /authentication` and `DELETE /authentication` - Adding/modifying/disabling event subscriptions - `POST /event_subscriptions`, `PUT /event_subscriptions`, and `DELETE /event_subscriptions` - Using the Web Event Bridge to receive events via WebSocket 

OpenAPI spec version: 8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.67
=end

require 'date'

module SwaggerClient
  class GetAccessPanelsWithCertsAndUsersInstance
    attr_accessor :id

    attr_accessor :name

    attr_accessor :panel_type

    attr_accessor :panel_type_name

    attr_accessor :segment_id

    attr_accessor :comm_server

    attr_accessor :online_enabled

    attr_accessor :tls_cert_enabled

    attr_accessor :tls_cert_issued_by

    attr_accessor :tls_cert_issued_start

    attr_accessor :tls_cert_issued_expired

    attr_accessor :peer_cert_enabled

    attr_accessor :peer_cert_issued_by

    attr_accessor :peer_cert_issued_to

    attr_accessor :peer_cert_issued_start

    attr_accessor :peer_cert_issued_expired

    attr_accessor :access_panel_users

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'ID',
        :'name' => :'Name',
        :'panel_type' => :'PanelType',
        :'panel_type_name' => :'PanelTypeName',
        :'segment_id' => :'SegmentID',
        :'comm_server' => :'CommServer',
        :'online_enabled' => :'OnlineEnabled',
        :'tls_cert_enabled' => :'TLSCertEnabled',
        :'tls_cert_issued_by' => :'TLSCertIssuedBy',
        :'tls_cert_issued_start' => :'TLSCertIssuedStart',
        :'tls_cert_issued_expired' => :'TLSCertIssuedExpired',
        :'peer_cert_enabled' => :'PeerCertEnabled',
        :'peer_cert_issued_by' => :'PeerCertIssuedBy',
        :'peer_cert_issued_to' => :'PeerCertIssuedTo',
        :'peer_cert_issued_start' => :'PeerCertIssuedStart',
        :'peer_cert_issued_expired' => :'PeerCertIssuedExpired',
        :'access_panel_users' => :'AccessPanelUsers'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'name' => :'Object',
        :'panel_type' => :'Object',
        :'panel_type_name' => :'Object',
        :'segment_id' => :'Object',
        :'comm_server' => :'Object',
        :'online_enabled' => :'Object',
        :'tls_cert_enabled' => :'Object',
        :'tls_cert_issued_by' => :'Object',
        :'tls_cert_issued_start' => :'Object',
        :'tls_cert_issued_expired' => :'Object',
        :'peer_cert_enabled' => :'Object',
        :'peer_cert_issued_by' => :'Object',
        :'peer_cert_issued_to' => :'Object',
        :'peer_cert_issued_start' => :'Object',
        :'peer_cert_issued_expired' => :'Object',
        :'access_panel_users' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::GetAccessPanelsWithCertsAndUsersInstance` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::GetAccessPanelsWithCertsAndUsersInstance`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'panel_type')
        self.panel_type = attributes[:'panel_type']
      end

      if attributes.key?(:'panel_type_name')
        self.panel_type_name = attributes[:'panel_type_name']
      end

      if attributes.key?(:'segment_id')
        self.segment_id = attributes[:'segment_id']
      end

      if attributes.key?(:'comm_server')
        self.comm_server = attributes[:'comm_server']
      end

      if attributes.key?(:'online_enabled')
        self.online_enabled = attributes[:'online_enabled']
      end

      if attributes.key?(:'tls_cert_enabled')
        self.tls_cert_enabled = attributes[:'tls_cert_enabled']
      end

      if attributes.key?(:'tls_cert_issued_by')
        self.tls_cert_issued_by = attributes[:'tls_cert_issued_by']
      end

      if attributes.key?(:'tls_cert_issued_start')
        self.tls_cert_issued_start = attributes[:'tls_cert_issued_start']
      end

      if attributes.key?(:'tls_cert_issued_expired')
        self.tls_cert_issued_expired = attributes[:'tls_cert_issued_expired']
      end

      if attributes.key?(:'peer_cert_enabled')
        self.peer_cert_enabled = attributes[:'peer_cert_enabled']
      end

      if attributes.key?(:'peer_cert_issued_by')
        self.peer_cert_issued_by = attributes[:'peer_cert_issued_by']
      end

      if attributes.key?(:'peer_cert_issued_to')
        self.peer_cert_issued_to = attributes[:'peer_cert_issued_to']
      end

      if attributes.key?(:'peer_cert_issued_start')
        self.peer_cert_issued_start = attributes[:'peer_cert_issued_start']
      end

      if attributes.key?(:'peer_cert_issued_expired')
        self.peer_cert_issued_expired = attributes[:'peer_cert_issued_expired']
      end

      if attributes.key?(:'access_panel_users')
        if (value = attributes[:'access_panel_users']).is_a?(Array)
          self.access_panel_users = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          panel_type == o.panel_type &&
          panel_type_name == o.panel_type_name &&
          segment_id == o.segment_id &&
          comm_server == o.comm_server &&
          online_enabled == o.online_enabled &&
          tls_cert_enabled == o.tls_cert_enabled &&
          tls_cert_issued_by == o.tls_cert_issued_by &&
          tls_cert_issued_start == o.tls_cert_issued_start &&
          tls_cert_issued_expired == o.tls_cert_issued_expired &&
          peer_cert_enabled == o.peer_cert_enabled &&
          peer_cert_issued_by == o.peer_cert_issued_by &&
          peer_cert_issued_to == o.peer_cert_issued_to &&
          peer_cert_issued_start == o.peer_cert_issued_start &&
          peer_cert_issued_expired == o.peer_cert_issued_expired &&
          access_panel_users == o.access_panel_users
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, panel_type, panel_type_name, segment_id, comm_server, online_enabled, tls_cert_enabled, tls_cert_issued_by, tls_cert_issued_start, tls_cert_issued_expired, peer_cert_enabled, peer_cert_issued_by, peer_cert_issued_to, peer_cert_issued_start, peer_cert_issued_expired, access_panel_users].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SwaggerClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
