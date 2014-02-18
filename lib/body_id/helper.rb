require 'body_id/version'

module BodyId
  module Helper
    def body_id
      controller = controller_name.singularize.underscore
      action = action_name.underscore
      body_id = "#{ controller }-#{ action }".gsub(/_/, '-')

      # Controller declared instance variable
      # or helper generated string
      @body_id || body_id
    end
  end
end
