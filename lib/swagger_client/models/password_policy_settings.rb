=begin
#OpenAccess

#This document describes the OpenAccess REST API. OpenAccess provides access to OnGuard via a RESTful web service.  ## Security / licensing headers  Each authenticated request must include the following HTTP headers:   - `Application-Id` - Each application using the OpenAccess API must have a unique application ID.   - `Session-Token` - A session token is retrieved by logging in via the `POST /authentication` operation.  ## Input parameter location - Query string or request body?  Input parameters can be placed either in the request body or in the URL, as a query parameter. The API makes no distinction and will handle them in either location. In the API specification, some parameters are described as being in the request body, and others are described as being in the query string. This is done simply for clarity in each situation, but clients of the API are free to include parameters wherever it is most convenient. **Sensitive data should always be placed in the request body and not exposed in the URL.**  ### **POST /instances** example  ``` POST /instances?type_name=Lnl_Cardholder&version=1.0 {   \"property_value_map\": {     ...   } } ```  ...is equivalent to this...  ``` POST /instances&version=1.0 {   \"type_name\": \"Lnl_Cardholder\",   \"property_value_map\": {     ...   } } ```  ## Task queuing - dealing with long running requests  Some requests might take a long time, especially requests that access external systems, such as Active Directory. Standard OpenAccess requests will time out after 30 seconds if the HTTP request doesn't time out sooner, depending on the client. Any request that you expect to run long can be queued as a task by adding a `queue` property to the request, set to `true`. For example: ``` GET /directory_accounts_matching_cardholders?directory_id=id1 &cardholder_ids=[1,2,3,4,5,6,7,8,9,10] &filter=displayname has 'firstname' and displayname has 'lastname' &queue=true &version=1.0 ```  When a request is queued in this way, OpenAccess will queue a task for execution and return a 202 (Accepted) HTTP status code and a response identical to `GET /queue/{id}`. For example: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"status\": \"pending\",   \"version\": \"1.0\" } ```  The `id` property indicates the ID of the queued task, which can be used to check the status of the task: ``` GET /queue/5c4b7890-ee73-4199-b3d3-366003eb8ca1?version=1.0 ```  When the task is complete, the response will include the response to the queued request: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"response\": {     ...   },   \"status\": \"complete\",   \"version\": \"1.0\" } ```  The response can be retrieved any number of times until the task is deleted. A completed task can be deleted with `DELETE /queue/{id}` or it will be deleted automatically after 1 hour.  **Note:** Even though you can queue any request, it's only recommended when a request is expected to run long, like `GET /directory_accounts` and `GET /directory_accounts_matching_cardholders`.  ## Samples  There are several sample applications that demonstrate various aspects of the API.  ### [Cardholder Search](/api/access/onguard/openaccess/samples/Cardholder Search) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting cardholders and photos - `GET /instances`  ### [Command and Control](/api/access/onguard/openaccess/samples/Command and Control) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting panels and readers - `GET /instances` - Updating hardware status, getting/setting reader mode, and opening doors - `POST /execute_method`  ### [Event Subscriber](/api/access/onguard/openaccess/samples/Event Subscriber) - Getting directories used for authentication - `GET /directories` (not used within every event subscriber sample) - Login and logout - `POST /authentication` and `DELETE /authentication` - Adding/modifying/disabling event subscriptions - `POST /event_subscriptions`, `PUT /event_subscriptions`, and `DELETE /event_subscriptions` - Using the Web Event Bridge to receive events via WebSocket 

OpenAPI spec version: 7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module SwaggerClient
  class PasswordPolicySettings
    # A flag indicating whether the lockout policy is enabled.
    attr_accessor :is_lockout_policy_enabled

    # The number of invalid login attempts that will lock an internal account.
    attr_accessor :login_attempt_threshold

    # The number of minutes to wait before resetting the record of invalid logins.
    attr_accessor :login_attempt_reset_interval_in_minutes

    # The number of minutes to lock an internal account after exceeding the invalid login attempt threshold.
    attr_accessor :lockout_interval_in_minutes

    # Supports disabling the lockout policy for the SA user.
    attr_accessor :disable_lockout_for_sa

    # A flag indicating whether the expiration policy is enabled.
    attr_accessor :is_expiration_policy_enabled

    # The number of days the password will be expired.
    attr_accessor :expiration_days

    # A flag indicating whether to remind the user if the password is almost expired.
    attr_accessor :is_expiration_reminders_enabled

    # The first day to remind the user that the password is almost expired.
    attr_accessor :expiration_first_reminder_days

    # The day to start reminding the user, with each login, that the password is almost expired.
    attr_accessor :expiration_reminder_days

    # A flag indicating whether the minimum password length is required.
    attr_accessor :is_minimum_length_required

    # The minimum password length.
    attr_accessor :minimum_length

    # A flag indicating whether the password must contain a numeric character.
    attr_accessor :is_numeric_characters_required

    # A flag indicating whether the password must contain a non-alphanumeric character.
    attr_accessor :is_special_characters_required

    # A flag indicating whether the password must contain an uppercase alphabetic and a lowercase alphabetic character.
    attr_accessor :is_upper_and_lower_case_required

    # A flag indicating whether the password can be same as user name.
    attr_accessor :can_be_same_as_user_name

    # A flag indicating whether the password history policy is enabled.
    attr_accessor :is_history_policy_enabled

    # The number of previous passwords that will be prohibited when resetting the password.
    attr_accessor :history_password_count

    # This determines how long users must keep a password before they can change it.
    attr_accessor :minimum_password_age

    # A flag indicating whether the prohibited password policy is enabled.
    attr_accessor :is_prohibited_password_policy_enabled

    # A flag indicating whether the inactivity timeout policy is enabled.
    attr_accessor :is_inactivity_timeout_policy_enabled

    # The authenticated token inactivity timeout, in minutes.
    attr_accessor :inactivity_timeout_in_minutes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_lockout_policy_enabled' => :'is_lockout_policy_enabled',
        :'login_attempt_threshold' => :'login_attempt_threshold',
        :'login_attempt_reset_interval_in_minutes' => :'login_attempt_reset_interval_in_minutes',
        :'lockout_interval_in_minutes' => :'lockout_interval_in_minutes',
        :'disable_lockout_for_sa' => :'disable_lockout_for_sa',
        :'is_expiration_policy_enabled' => :'is_expiration_policy_enabled',
        :'expiration_days' => :'expiration_days',
        :'is_expiration_reminders_enabled' => :'is_expiration_reminders_enabled',
        :'expiration_first_reminder_days' => :'expiration_first_reminder_days',
        :'expiration_reminder_days' => :'expiration_reminder_days',
        :'is_minimum_length_required' => :'is_minimum_length_required',
        :'minimum_length' => :'minimum_length',
        :'is_numeric_characters_required' => :'is_numeric_characters_required',
        :'is_special_characters_required' => :'is_special_characters_required',
        :'is_upper_and_lower_case_required' => :'is_upper_and_lower_case_required',
        :'can_be_same_as_user_name' => :'can_be_same_as_user_name',
        :'is_history_policy_enabled' => :'is_history_policy_enabled',
        :'history_password_count' => :'history_password_count',
        :'minimum_password_age' => :'minimum_password_age',
        :'is_prohibited_password_policy_enabled' => :'is_prohibited_password_policy_enabled',
        :'is_inactivity_timeout_policy_enabled' => :'is_inactivity_timeout_policy_enabled',
        :'inactivity_timeout_in_minutes' => :'inactivity_timeout_in_minutes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_lockout_policy_enabled' => :'BOOLEAN',
        :'login_attempt_threshold' => :'Integer',
        :'login_attempt_reset_interval_in_minutes' => :'Integer',
        :'lockout_interval_in_minutes' => :'Integer',
        :'disable_lockout_for_sa' => :'BOOLEAN',
        :'is_expiration_policy_enabled' => :'BOOLEAN',
        :'expiration_days' => :'Integer',
        :'is_expiration_reminders_enabled' => :'BOOLEAN',
        :'expiration_first_reminder_days' => :'Integer',
        :'expiration_reminder_days' => :'Integer',
        :'is_minimum_length_required' => :'BOOLEAN',
        :'minimum_length' => :'Integer',
        :'is_numeric_characters_required' => :'BOOLEAN',
        :'is_special_characters_required' => :'BOOLEAN',
        :'is_upper_and_lower_case_required' => :'BOOLEAN',
        :'can_be_same_as_user_name' => :'BOOLEAN',
        :'is_history_policy_enabled' => :'BOOLEAN',
        :'history_password_count' => :'Integer',
        :'minimum_password_age' => :'Integer',
        :'is_prohibited_password_policy_enabled' => :'BOOLEAN',
        :'is_inactivity_timeout_policy_enabled' => :'BOOLEAN',
        :'inactivity_timeout_in_minutes' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'is_lockout_policy_enabled')
        self.is_lockout_policy_enabled = attributes[:'is_lockout_policy_enabled']
      end

      if attributes.has_key?(:'login_attempt_threshold')
        self.login_attempt_threshold = attributes[:'login_attempt_threshold']
      end

      if attributes.has_key?(:'login_attempt_reset_interval_in_minutes')
        self.login_attempt_reset_interval_in_minutes = attributes[:'login_attempt_reset_interval_in_minutes']
      end

      if attributes.has_key?(:'lockout_interval_in_minutes')
        self.lockout_interval_in_minutes = attributes[:'lockout_interval_in_minutes']
      end

      if attributes.has_key?(:'disable_lockout_for_sa')
        self.disable_lockout_for_sa = attributes[:'disable_lockout_for_sa']
      end

      if attributes.has_key?(:'is_expiration_policy_enabled')
        self.is_expiration_policy_enabled = attributes[:'is_expiration_policy_enabled']
      end

      if attributes.has_key?(:'expiration_days')
        self.expiration_days = attributes[:'expiration_days']
      end

      if attributes.has_key?(:'is_expiration_reminders_enabled')
        self.is_expiration_reminders_enabled = attributes[:'is_expiration_reminders_enabled']
      end

      if attributes.has_key?(:'expiration_first_reminder_days')
        self.expiration_first_reminder_days = attributes[:'expiration_first_reminder_days']
      end

      if attributes.has_key?(:'expiration_reminder_days')
        self.expiration_reminder_days = attributes[:'expiration_reminder_days']
      end

      if attributes.has_key?(:'is_minimum_length_required')
        self.is_minimum_length_required = attributes[:'is_minimum_length_required']
      end

      if attributes.has_key?(:'minimum_length')
        self.minimum_length = attributes[:'minimum_length']
      end

      if attributes.has_key?(:'is_numeric_characters_required')
        self.is_numeric_characters_required = attributes[:'is_numeric_characters_required']
      end

      if attributes.has_key?(:'is_special_characters_required')
        self.is_special_characters_required = attributes[:'is_special_characters_required']
      end

      if attributes.has_key?(:'is_upper_and_lower_case_required')
        self.is_upper_and_lower_case_required = attributes[:'is_upper_and_lower_case_required']
      end

      if attributes.has_key?(:'can_be_same_as_user_name')
        self.can_be_same_as_user_name = attributes[:'can_be_same_as_user_name']
      end

      if attributes.has_key?(:'is_history_policy_enabled')
        self.is_history_policy_enabled = attributes[:'is_history_policy_enabled']
      end

      if attributes.has_key?(:'history_password_count')
        self.history_password_count = attributes[:'history_password_count']
      end

      if attributes.has_key?(:'minimum_password_age')
        self.minimum_password_age = attributes[:'minimum_password_age']
      end

      if attributes.has_key?(:'is_prohibited_password_policy_enabled')
        self.is_prohibited_password_policy_enabled = attributes[:'is_prohibited_password_policy_enabled']
      end

      if attributes.has_key?(:'is_inactivity_timeout_policy_enabled')
        self.is_inactivity_timeout_policy_enabled = attributes[:'is_inactivity_timeout_policy_enabled']
      end

      if attributes.has_key?(:'inactivity_timeout_in_minutes')
        self.inactivity_timeout_in_minutes = attributes[:'inactivity_timeout_in_minutes']
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
          is_lockout_policy_enabled == o.is_lockout_policy_enabled &&
          login_attempt_threshold == o.login_attempt_threshold &&
          login_attempt_reset_interval_in_minutes == o.login_attempt_reset_interval_in_minutes &&
          lockout_interval_in_minutes == o.lockout_interval_in_minutes &&
          disable_lockout_for_sa == o.disable_lockout_for_sa &&
          is_expiration_policy_enabled == o.is_expiration_policy_enabled &&
          expiration_days == o.expiration_days &&
          is_expiration_reminders_enabled == o.is_expiration_reminders_enabled &&
          expiration_first_reminder_days == o.expiration_first_reminder_days &&
          expiration_reminder_days == o.expiration_reminder_days &&
          is_minimum_length_required == o.is_minimum_length_required &&
          minimum_length == o.minimum_length &&
          is_numeric_characters_required == o.is_numeric_characters_required &&
          is_special_characters_required == o.is_special_characters_required &&
          is_upper_and_lower_case_required == o.is_upper_and_lower_case_required &&
          can_be_same_as_user_name == o.can_be_same_as_user_name &&
          is_history_policy_enabled == o.is_history_policy_enabled &&
          history_password_count == o.history_password_count &&
          minimum_password_age == o.minimum_password_age &&
          is_prohibited_password_policy_enabled == o.is_prohibited_password_policy_enabled &&
          is_inactivity_timeout_policy_enabled == o.is_inactivity_timeout_policy_enabled &&
          inactivity_timeout_in_minutes == o.inactivity_timeout_in_minutes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_lockout_policy_enabled, login_attempt_threshold, login_attempt_reset_interval_in_minutes, lockout_interval_in_minutes, disable_lockout_for_sa, is_expiration_policy_enabled, expiration_days, is_expiration_reminders_enabled, expiration_first_reminder_days, expiration_reminder_days, is_minimum_length_required, minimum_length, is_numeric_characters_required, is_special_characters_required, is_upper_and_lower_case_required, can_be_same_as_user_name, is_history_policy_enabled, history_password_count, minimum_password_age, is_prohibited_password_policy_enabled, is_inactivity_timeout_policy_enabled, inactivity_timeout_in_minutes].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
    end
  end
end
