=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class LastTimePeriod
    DAY = "DAY".freeze
    WEEK = "WEEK".freeze
    MONTH = "MONTH".freeze
    SIX_MONTH = "SIX_MONTH".freeze
    YEAR = "YEAR".freeze
    FIVE_YEAR = "FIVE_YEAR".freeze

    def self.all_vars
      @all_vars ||= [DAY, WEEK, MONTH, SIX_MONTH, YEAR, FIVE_YEAR].freeze
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
      return value if LastTimePeriod.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #LastTimePeriod"
    end
  end
end
