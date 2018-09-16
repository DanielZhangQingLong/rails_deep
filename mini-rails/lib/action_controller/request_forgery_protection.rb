module ActionController
  module RequestForgeryProtection
    def self.included?(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def protect_from_forgery(options)
        # Not Implemented!
      end
    end
  end
end
