=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class SingleAppInfoResDTO
    # The description of the app
    attr_accessor :description

    # The unique identifier for the app
    attr_accessor :app_id

    # The key of the app
    attr_accessor :key

    # The name of the app
    attr_accessor :name

    # The logo of the app
    attr_accessor :logo

    # The categories of the app
    attr_accessor :categories

    # The path of the app
    attr_accessor :path

    # The documentation URL of the app
    attr_accessor :docs

    # The configuration documentation text of the app
    attr_accessor :configuration_docs_text

    # The status of the app
    attr_accessor :status

    # The documentation text of the app
    attr_accessor :documentation_doc_text

    # The test connectors of the app
    attr_accessor :test_connectors

    # Indicates if the app has no authentication
    attr_accessor :no_auth

    # The authentication schemes of the app
    attr_accessor :auth_schemes

    # The metadata of the app
    attr_accessor :meta

    # The yaml of the app
    attr_accessor :yaml

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'description' => :'description',
        :'app_id' => :'appId',
        :'key' => :'key',
        :'name' => :'name',
        :'logo' => :'logo',
        :'categories' => :'categories',
        :'path' => :'path',
        :'docs' => :'docs',
        :'configuration_docs_text' => :'configuration_docs_text',
        :'status' => :'status',
        :'documentation_doc_text' => :'documentation_doc_text',
        :'test_connectors' => :'testConnectors',
        :'no_auth' => :'no_auth',
        :'auth_schemes' => :'auth_schemes',
        :'meta' => :'meta',
        :'yaml' => :'yaml'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'description' => :'String',
        :'app_id' => :'String',
        :'key' => :'String',
        :'name' => :'String',
        :'logo' => :'String',
        :'categories' => :'Array<String>',
        :'path' => :'String',
        :'docs' => :'String',
        :'configuration_docs_text' => :'String',
        :'status' => :'String',
        :'documentation_doc_text' => :'String',
        :'test_connectors' => :'Array<Object>',
        :'no_auth' => :'Boolean',
        :'auth_schemes' => :'Array<Object>',
        :'meta' => :'Object',
        :'yaml' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'meta',
        :'yaml'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Composio::SingleAppInfoResDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Composio::SingleAppInfoResDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'docs')
        self.docs = attributes[:'docs']
      end

      if attributes.key?(:'configuration_docs_text')
        self.configuration_docs_text = attributes[:'configuration_docs_text']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'documentation_doc_text')
        self.documentation_doc_text = attributes[:'documentation_doc_text']
      end

      if attributes.key?(:'test_connectors')
        if (value = attributes[:'test_connectors']).is_a?(Array)
          self.test_connectors = value
        end
      end

      if attributes.key?(:'no_auth')
        self.no_auth = attributes[:'no_auth']
      end

      if attributes.key?(:'auth_schemes')
        if (value = attributes[:'auth_schemes']).is_a?(Array)
          self.auth_schemes = value
        end
      end

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.key?(:'yaml')
        self.yaml = attributes[:'yaml']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @app_id.nil?
        invalid_properties.push('invalid value for "app_id", app_id cannot be nil.')
      end

      if @key.nil?
        invalid_properties.push('invalid value for "key", key cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @description.nil?
      return false if @app_id.nil?
      return false if @key.nil?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          description == o.description &&
          app_id == o.app_id &&
          key == o.key &&
          name == o.name &&
          logo == o.logo &&
          categories == o.categories &&
          path == o.path &&
          docs == o.docs &&
          configuration_docs_text == o.configuration_docs_text &&
          status == o.status &&
          documentation_doc_text == o.documentation_doc_text &&
          test_connectors == o.test_connectors &&
          no_auth == o.no_auth &&
          auth_schemes == o.auth_schemes &&
          meta == o.meta &&
          yaml == o.yaml
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [description, app_id, key, name, logo, categories, path, docs, configuration_docs_text, status, documentation_doc_text, test_connectors, no_auth, auth_schemes, meta, yaml].hash
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
