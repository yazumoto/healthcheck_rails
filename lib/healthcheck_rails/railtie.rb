module HealthcheckRails
  class Railtie < Rails::Railtie
    initializer 'healthcheck_rails.configure_rails_initialization' do |app|
      app.middleware.insert_before Rails::Rack::Logger, HealthcheckRails::Middleware
    end
  end
end