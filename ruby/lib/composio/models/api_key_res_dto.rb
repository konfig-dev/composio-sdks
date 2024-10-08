=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class APIKeyResDTO
    # The ID of the API key
    attr_accessor :id

    # The name of the API key
    attr_accessor :name

    # The creation date of the API key
    attr_accessor :created_at

    # The last update date of the API key
    attr_accessor :updated_at

    # The generated API key
    attr_accessor :key

    # Whether the API key is hidden
    attr_accessor :is_hidden

    # The last used date of the API key
    attr_accessor :last_used

    # The member of the API key
    attr_accessor :member

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'key' => :'key',
        :'is_hidden' => :'isHidden',
        :'last_used' => :'lastUsed',
        :'member' => :'member'
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
        :'name' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'key' => :'String',
        :'is_hidden' => :'Boolean',
        :'last_used' => :'String',
        :'member' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::APIKeyResDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::APIKeyResDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'is_hidden')
        self.is_hidden = attributes[:'is_hidden']
      end

      if attributes.key?(:'last_used')
        self.last_used = attributes[:'last_used']
      end

      if attributes.key?(:'member')
        self.member = attributes[:'member']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if @created_at !~ pattern
        invalid_properties.push("invalid value for \"created_at\", must conform to the pattern #{pattern}.")
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if @updated_at !~ pattern
        invalid_properties.push("invalid value for \"updated_at\", must conform to the pattern #{pattern}.")
      end

      if @key.nil?
        invalid_properties.push('invalid value for "key", key cannot be nil.')
      end

      if @is_hidden.nil?
        invalid_properties.push('invalid value for "is_hidden", is_hidden cannot be nil.')
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !@last_used.nil? && @last_used !~ pattern
        invalid_properties.push("invalid value for \"last_used\", must conform to the pattern #{pattern}.")
      end

      if @member.nil?
        invalid_properties.push('invalid value for "member", member cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @created_at.nil?
      return false if @created_at !~ Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      return false if @updated_at.nil?
      return false if @updated_at !~ Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      return false if @key.nil?
      return false if @is_hidden.nil?
      return false if !@last_used.nil? && @last_used !~ Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      return false if @member.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] created_at Value to be assigned
    def created_at=(created_at)
      if created_at.nil?
        fail ArgumentError, 'created_at cannot be nil'
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if created_at !~ pattern
        fail ArgumentError, "invalid value for \"created_at\", must conform to the pattern #{pattern}."
      end

      @created_at = created_at
    end

    # Custom attribute writer method with validation
    # @param [Object] updated_at Value to be assigned
    def updated_at=(updated_at)
      if updated_at.nil?
        fail ArgumentError, 'updated_at cannot be nil'
      end

      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if updated_at !~ pattern
        fail ArgumentError, "invalid value for \"updated_at\", must conform to the pattern #{pattern}."
      end

      @updated_at = updated_at
    end

    # Custom attribute writer method with validation
    # @param [Object] last_used Value to be assigned
    def last_used=(last_used)
      pattern = Regexp.new(/\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d.\d+Z?/)
      if !last_used.nil? && last_used !~ pattern
        fail ArgumentError, "invalid value for \"last_used\", must conform to the pattern #{pattern}."
      end

      @last_used = last_used
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          key == o.key &&
          is_hidden == o.is_hidden &&
          last_used == o.last_used &&
          member == o.member
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, created_at, updated_at, key, is_hidden, last_used, member].hash
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
