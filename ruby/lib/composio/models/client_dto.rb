=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  # Client information
  class ClientDTO
    # Auto-generated ID of the client
    attr_accessor :auto_id

    # Unique ID of the client
    attr_accessor :id

    # Name of the client
    attr_accessor :name

    # Email of the client
    attr_accessor :email

    attr_accessor :created_at

    attr_accessor :updated_at

    # API key for the client
    attr_accessor :api_key

    # Webhook URL for the client
    attr_accessor :webhook_url

    # Event webhook URL for the client
    attr_accessor :event_webhook_url

    # Secret for webhook authentication
    attr_accessor :webhook_secret

    # Whether triggers are enabled for the client
    attr_accessor :triggers_enabled

    attr_accessor :last_subscribed_at

    # Client's subscription plan
    attr_accessor :plan

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'auto_id' => :'autoId',
        :'id' => :'id',
        :'name' => :'name',
        :'email' => :'email',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'api_key' => :'apiKey',
        :'webhook_url' => :'webhookURL',
        :'event_webhook_url' => :'eventWebhookURL',
        :'webhook_secret' => :'webhookSecret',
        :'triggers_enabled' => :'triggersEnabled',
        :'last_subscribed_at' => :'lastSubscribedAt',
        :'plan' => :'plan'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'auto_id' => :'Float',
        :'id' => :'String',
        :'name' => :'String',
        :'email' => :'String',
        :'created_at' => :'ClientDTOCreatedAt',
        :'updated_at' => :'ClientDTOUpdatedAt',
        :'api_key' => :'String',
        :'webhook_url' => :'String',
        :'event_webhook_url' => :'String',
        :'webhook_secret' => :'String',
        :'triggers_enabled' => :'Boolean',
        :'last_subscribed_at' => :'ClientDTOLastSubscribedAt',
        :'plan' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::ClientDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::ClientDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'auto_id')
        self.auto_id = attributes[:'auto_id']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'webhook_url')
        self.webhook_url = attributes[:'webhook_url']
      end

      if attributes.key?(:'event_webhook_url')
        self.event_webhook_url = attributes[:'event_webhook_url']
      end

      if attributes.key?(:'webhook_secret')
        self.webhook_secret = attributes[:'webhook_secret']
      end

      if attributes.key?(:'triggers_enabled')
        self.triggers_enabled = attributes[:'triggers_enabled']
      end

      if attributes.key?(:'last_subscribed_at')
        self.last_subscribed_at = attributes[:'last_subscribed_at']
      end

      if attributes.key?(:'plan')
        self.plan = attributes[:'plan']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @auto_id.nil?
        invalid_properties.push('invalid value for "auto_id", auto_id cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @triggers_enabled.nil?
        invalid_properties.push('invalid value for "triggers_enabled", triggers_enabled cannot be nil.')
      end

      if @plan.nil?
        invalid_properties.push('invalid value for "plan", plan cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @auto_id.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @email.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @triggers_enabled.nil?
      return false if @plan.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          auto_id == o.auto_id &&
          id == o.id &&
          name == o.name &&
          email == o.email &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          api_key == o.api_key &&
          webhook_url == o.webhook_url &&
          event_webhook_url == o.event_webhook_url &&
          webhook_secret == o.webhook_secret &&
          triggers_enabled == o.triggers_enabled &&
          last_subscribed_at == o.last_subscribed_at &&
          plan == o.plan
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [auto_id, id, name, email, created_at, updated_at, api_key, webhook_url, event_webhook_url, webhook_secret, triggers_enabled, last_subscribed_at, plan].hash
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
