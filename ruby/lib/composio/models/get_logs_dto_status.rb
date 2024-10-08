=begin
#Composio OpenAPI

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
=end

require 'date'
require 'time'

module Composio
  class GetLogsDtoStatus
    ALL = "all".freeze
    SUCCESS = "success".freeze
    ERROR = "error".freeze

    def self.all_vars
      @all_vars ||= [ALL, SUCCESS, ERROR].freeze
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
      return value if GetLogsDtoStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #GetLogsDtoStatus"
    end
  end
end
