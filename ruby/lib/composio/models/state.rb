=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class State
    PREPROCESS = "preprocess".freeze
    VALIDATE = "validate".freeze
    PREPARE = "prepare".freeze
    BUILD = "build".freeze
    PUSH = "push".freeze
    LOAD = "load".freeze
    FINISH = "finish".freeze

    def self.all_vars
      @all_vars ||= [PREPROCESS, VALIDATE, PREPARE, BUILD, PUSH, LOAD, FINISH].freeze
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
      return value if State.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #State"
    end
  end
end
