module ActionController
  class Base < Metal
    # append_features
    include Callbacks
    include RequestForgeryProtection
  end
end
