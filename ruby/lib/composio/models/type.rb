=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class Type
    FORM_DATA = "formData".freeze
    URL_ENCODED = "urlEncoded".freeze
    RAW = "raw".freeze
    BINARY = "binary".freeze
    GRAPHQL = "graphql".freeze
    NONE = "none".freeze

    def self.all_vars
      @all_vars ||= [FORM_DATA, URL_ENCODED, RAW, BINARY, GRAPHQL, NONE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if Type.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Type"
    end
  end
end
