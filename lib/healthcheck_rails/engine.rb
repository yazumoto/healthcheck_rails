module HealthcheckRails
  class Engine < ::Rails::Engine
    isolate_namespace HealthcheckRails

    def self.mounted_path
      @@mounted_path ||= begin
        route = Rails.application.routes.routes.detect do |route|
          route.app.app == self
        end
        route && route.path
      end
    end
  end
end
