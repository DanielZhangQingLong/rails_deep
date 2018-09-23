module ActionController
  class Base < Metal
    # append_features
    include Callbacks
    include Redirecting
    include RequestForgeryProtection
  end
end
