=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class GetConnectorInfoResDTO
    # Unique identifier of the connector
    attr_accessor :id

    # Authentication scheme used by the connector
    attr_accessor :auth_scheme

    # Name of the connector
    attr_accessor :name

    # Creation date of the connector
    attr_accessor :created_at

    # Last update date of the connector
    attr_accessor :updated_at

    # Flag to indicate if the connector is currently enabled
    attr_accessor :enabled

    # Flag to indicate if the connector has been deleted
    attr_accessor :deleted

    # Application ID associated with the connector
    attr_accessor :app_id

    # Default connector ID if one exists
    attr_accessor :default_connector_id

    # Authentication configuration with sensitive data obscured
    attr_accessor :auth_config

    # List of required fields expected from the customer
    attr_accessor :expected_input_fields

    # Logo URL of the application associated with the connector
    attr_accessor :logo

    # Name of the application associated with the connector
    attr_accessor :app_name

    # Flag to indicate if Composio authentication is used
    attr_accessor :use_composio_auth

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'auth_scheme' => :'authScheme',
        :'name' => :'name',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'enabled' => :'enabled',
        :'deleted' => :'deleted',
        :'app_id' => :'appId',
        :'default_connector_id' => :'defaultConnectorId',
        :'auth_config' => :'authConfig',
        :'expected_input_fields' => :'expectedInputFields',
        :'logo' => :'logo',
        :'app_name' => :'appName',
        :'use_composio_auth' => :'useComposioAuth'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'auth_scheme' => :'String',
        :'name' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'enabled' => :'Boolean',
        :'deleted' => :'Boolean',
        :'app_id' => :'String',
        :'default_connector_id' => :'String',
        :'auth_config' => :'Object',
        :'expected_input_fields' => :'Array<ExpectedInputFieldsDTO>',
        :'logo' => :'String',
        :'app_name' => :'String',
        :'use_composio_auth' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::GetConnectorInfoResDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::GetConnectorInfoResDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'auth_scheme')
        self.auth_scheme = attributes[:'auth_scheme']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'default_connector_id')
        self.default_connector_id = attributes[:'default_connector_id']
      end

      if attributes.key?(:'auth_config')
        self.auth_config = attributes[:'auth_config']
      end

      if attributes.key?(:'expected_input_fields')
        if (value = attributes[:'expected_input_fields']).is_a?(Array)
          self.expected_input_fields = value
        end
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'app_name')
        self.app_name = attributes[:'app_name']
      end

      if attributes.key?(:'use_composio_auth')
        self.use_composio_auth = attributes[:'use_composio_auth']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !@created_at.nil? && @created_at !~ pattern
        invalid_properties.push("invalid value for \"created_at\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !@updated_at.nil? && @updated_at !~ pattern
        invalid_properties.push("invalid value for \"updated_at\", must conform to the pattern #{pattern}.")
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @app_id.nil?
        invalid_properties.push('invalid value for "app_id", app_id cannot be nil.')
      end

      if @auth_config.nil?
        invalid_properties.push('invalid value for "auth_config", auth_config cannot be nil.')
      end

      if @expected_input_fields.nil?
        invalid_properties.push('invalid value for "expected_input_fields", expected_input_fields cannot be nil.')
      end

      if @logo.nil?
        invalid_properties.push('invalid value for "logo", logo cannot be nil.')
      end

      if @app_name.nil?
        invalid_properties.push('invalid value for "app_name", app_name cannot be nil.')
      end

      if @use_composio_auth.nil?
        invalid_properties.push('invalid value for "use_composio_auth", use_composio_auth cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@created_at.nil? && @created_at !~ Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      return false if !@updated_at.nil? && @updated_at !~ Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      return false if @enabled.nil?
      return false if @app_id.nil?
      return false if @auth_config.nil?
      return false if @expected_input_fields.nil?
      return false if @logo.nil?
      return false if @app_name.nil?
      return false if @use_composio_auth.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] created_at Value to be assigned
    def created_at=(created_at)
      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !created_at.nil? && created_at !~ pattern
        fail ArgumentError, "invalid value for \"created_at\", must conform to the pattern #{pattern}."
      end

      @created_at = created_at
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_at Value to be assigned
    def updated_at=(updated_at)
      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !updated_at.nil? && updated_at !~ pattern
        fail ArgumentError, "invalid value for \"updated_at\", must conform to the pattern #{pattern}."
      end

      @updated_at = updated_at
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          auth_scheme == o.auth_scheme &&
          name == o.name &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          enabled == o.enabled &&
          deleted == o.deleted &&
          app_id == o.app_id &&
          default_connector_id == o.default_connector_id &&
          auth_config == o.auth_config &&
          expected_input_fields == o.expected_input_fields &&
          logo == o.logo &&
          app_name == o.app_name &&
          use_composio_auth == o.use_composio_auth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, auth_scheme, name, created_at, updated_at, enabled, deleted, app_id, default_connector_id, auth_config, expected_input_fields, logo, app_name, use_composio_auth].hash
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
