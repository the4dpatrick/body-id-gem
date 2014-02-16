require 'body_id/helper'

module BodyId
  class Railtie < Rails::Railtie
    ActiveSupport.on_load(:action_view) do
      include BodyId::Helper
    end
  end
end
