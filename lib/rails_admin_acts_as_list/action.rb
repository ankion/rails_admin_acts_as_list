require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class MoveLower < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :visible? do
          authorized? and defined? bindings[:object].move_lower
        end
        register_instance_option :link_icon do
          'icon-arrow-down fa fa-arrow-down'
        end
        register_instance_option :member do
          true
        end
        register_instance_option :controller do
          Proc.new do
            @object.move_lower
            redirect_to back_or_index
          end
        end
      end
      class MoveHigher < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :visible? do
          authorized? and defined? bindings[:object].move_higher
        end
        register_instance_option :link_icon do
          'icon-arrow-up fa fa-arrow-up'
        end
        register_instance_option :member do
          true
        end
        register_instance_option :controller do
          Proc.new do
            @object.move_higher
            redirect_to back_or_index
          end
        end
      end
    end
  end
end
