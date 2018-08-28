require "active_record/connection_adapter"
module ActiveRecord
  class Base
    def self.abstract_class=(value)
      # Not implemented
    end

    def initialize(attributes={})
      @attributes = attributes
    end

    def id
      @attributes[:id]
    end

    def title
      @attributes[:title]
    end

    def self.find(id)

    end

  end
end
