=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

require 'date'
require 'time'

module Composio
  class Status
    FAILED = "FAILED".freeze
    INITIATED = "INITIATED".freeze
    ACTIVE = "ACTIVE".freeze

    def self.all_vars
      @all_vars ||= [FAILED, INITIATED, ACTIVE].freeze
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
      return value if Status.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Status"
    end
  end
end
