=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class Time
    N5M = "5m".freeze
    N30M = "30m".freeze
    N6H = "6h".freeze
    N1D = "1d".freeze
    N1W = "1w".freeze
    N1MONTH = "1month".freeze
    N1Y = "1y".freeze

    def self.all_vars
      @all_vars ||= [N5M, N30M, N6H, N1D, N1W, N1MONTH, N1Y].freeze
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
      return value if Time.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Time"
    end
  end
end
