=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class ToolsExecuteReqDto
    attr_accessor :action_name

    attr_accessor :run_in_sandbox

    attr_accessor :input

    attr_accessor :nla_input

    attr_accessor :authorization_data

    attr_accessor :app_schema

    attr_accessor :custom_description

    attr_accessor :system_prompt

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action_name' => :'actionName',
        :'run_in_sandbox' => :'runInSandbox',
        :'input' => :'input',
        :'nla_input' => :'nlaInput',
        :'authorization_data' => :'authorizationData',
        :'app_schema' => :'appSchema',
        :'custom_description' => :'customDescription',
        :'system_prompt' => :'systemPrompt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_name' => :'String',
        :'run_in_sandbox' => :'Boolean',
        :'input' => :'Object',
        :'nla_input' => :'String',
        :'authorization_data' => :'Object',
        :'app_schema' => :'Object',
        :'custom_description' => :'String',
        :'system_prompt' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::ToolsExecuteReqDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::ToolsExecuteReqDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'action_name')
        self.action_name = attributes[:'action_name']
      end

      if attributes.key?(:'run_in_sandbox')
        self.run_in_sandbox = attributes[:'run_in_sandbox']
      end

      if attributes.key?(:'input')
        self.input = attributes[:'input']
      end

      if attributes.key?(:'nla_input')
        self.nla_input = attributes[:'nla_input']
      end

      if attributes.key?(:'authorization_data')
        self.authorization_data = attributes[:'authorization_data']
      end

      if attributes.key?(:'app_schema')
        self.app_schema = attributes[:'app_schema']
      end

      if attributes.key?(:'custom_description')
        self.custom_description = attributes[:'custom_description']
      end

      if attributes.key?(:'system_prompt')
        self.system_prompt = attributes[:'system_prompt']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action_name.nil?
        invalid_properties.push('invalid value for "action_name", action_name cannot be nil.')
      end

      if @run_in_sandbox.nil?
        invalid_properties.push('invalid value for "run_in_sandbox", run_in_sandbox cannot be nil.')
      end

      if @input.nil?
        invalid_properties.push('invalid value for "input", input cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action_name.nil?
      return false if @run_in_sandbox.nil?
      return false if @input.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action_name == o.action_name &&
          run_in_sandbox == o.run_in_sandbox &&
          input == o.input &&
          nla_input == o.nla_input &&
          authorization_data == o.authorization_data &&
          app_schema == o.app_schema &&
          custom_description == o.custom_description &&
          system_prompt == o.system_prompt
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_name, run_in_sandbox, input, nla_input, authorization_data, app_schema, custom_description, system_prompt].hash
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
