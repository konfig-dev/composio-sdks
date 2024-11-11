=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class ConnectionParams
    attr_accessor :integration_id

    attr_accessor :connection_params

    attr_accessor :is_disabled

    attr_accessor :invocation_count

    attr_accessor :id

    attr_accessor :client_unique_user_id

    attr_accessor :status

    attr_accessor :data

    attr_accessor :deleted

    attr_accessor :enabled

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :app_unique_id

    attr_accessor :app_name

    attr_accessor :logo

    attr_accessor :auth_config

    attr_accessor :member

    attr_accessor :labels

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'integration_id' => :'integrationId',
        :'connection_params' => :'connectionParams',
        :'is_disabled' => :'isDisabled',
        :'invocation_count' => :'invocationCount',
        :'id' => :'id',
        :'client_unique_user_id' => :'clientUniqueUserId',
        :'status' => :'status',
        :'data' => :'data',
        :'deleted' => :'deleted',
        :'enabled' => :'enabled',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'app_unique_id' => :'appUniqueId',
        :'app_name' => :'appName',
        :'logo' => :'logo',
        :'auth_config' => :'authConfig',
        :'member' => :'member',
        :'labels' => :'labels'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'integration_id' => :'String',
        :'connection_params' => :'Object',
        :'is_disabled' => :'Boolean',
        :'invocation_count' => :'Float',
        :'id' => :'String',
        :'client_unique_user_id' => :'String',
        :'status' => :'String',
        :'data' => :'Object',
        :'deleted' => :'Boolean',
        :'enabled' => :'Boolean',
        :'created_at' => :'MemberInfoResDTOCreatedAt',
        :'updated_at' => :'MemberInfoResDTOCreatedAt',
        :'app_unique_id' => :'String',
        :'app_name' => :'String',
        :'logo' => :'String',
        :'auth_config' => :'Object',
        :'member' => :'Array<MemberInfoResDTO>',
        :'labels' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::ConnectionParams` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::ConnectionParams`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'integration_id')
        self.integration_id = attributes[:'integration_id']
      end

      if attributes.key?(:'connection_params')
        self.connection_params = attributes[:'connection_params']
      end

      if attributes.key?(:'is_disabled')
        self.is_disabled = attributes[:'is_disabled']
      end

      if attributes.key?(:'invocation_count')
        self.invocation_count = attributes[:'invocation_count']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'client_unique_user_id')
        self.client_unique_user_id = attributes[:'client_unique_user_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'data')
        self.data = attributes[:'data']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'app_unique_id')
        self.app_unique_id = attributes[:'app_unique_id']
      end

      if attributes.key?(:'app_name')
        self.app_name = attributes[:'app_name']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'auth_config')
        self.auth_config = attributes[:'auth_config']
      end

      if attributes.key?(:'member')
        if (value = attributes[:'member']).is_a?(Array)
          self.member = value
        end
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @integration_id.nil?
        invalid_properties.push('invalid value for "integration_id", integration_id cannot be nil.')
      end

      if @is_disabled.nil?
        invalid_properties.push('invalid value for "is_disabled", is_disabled cannot be nil.')
      end

      if @invocation_count.nil?
        invalid_properties.push('invalid value for "invocation_count", invocation_count cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @app_unique_id.nil?
        invalid_properties.push('invalid value for "app_unique_id", app_unique_id cannot be nil.')
      end

      if @app_name.nil?
        invalid_properties.push('invalid value for "app_name", app_name cannot be nil.')
      end

      if @member.nil?
        invalid_properties.push('invalid value for "member", member cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @integration_id.nil?
      return false if @is_disabled.nil?
      return false if @invocation_count.nil?
      return false if @id.nil?
      return false if @status.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @app_unique_id.nil?
      return false if @app_name.nil?
      return false if @member.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          integration_id == o.integration_id &&
          connection_params == o.connection_params &&
          is_disabled == o.is_disabled &&
          invocation_count == o.invocation_count &&
          id == o.id &&
          client_unique_user_id == o.client_unique_user_id &&
          status == o.status &&
          data == o.data &&
          deleted == o.deleted &&
          enabled == o.enabled &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          app_unique_id == o.app_unique_id &&
          app_name == o.app_name &&
          logo == o.logo &&
          auth_config == o.auth_config &&
          member == o.member &&
          labels == o.labels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [integration_id, connection_params, is_disabled, invocation_count, id, client_unique_user_id, status, data, deleted, enabled, created_at, updated_at, app_unique_id, app_name, logo, auth_config, member, labels].hash
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
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = Composio.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
    end

  end

end
