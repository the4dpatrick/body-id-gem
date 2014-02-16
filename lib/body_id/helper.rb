require 'body_id/version'

module BodyId
  module Helper
    def body_id
      controller = controller_name.singularize.underscore
      action = action_name.underscore
      "#{ controller }-#{ action }".gsub(/_/, '-')
    end
  end
end
