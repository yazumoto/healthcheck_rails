module HealthcheckRails
  class Middleware
    def initialize(app)
      @app = app
      @default_logger = Rails.logger
      @custom_logger = Logger.new('log/healthcheck.log')
    end

    def call(env)
      if HealthcheckRails::Engine.mounted_path.match(env['PATH_INFO'])
        Rails.logger = @custom_logger
        ActionController::Base.logger = @custom_logger
        ActiveRecord::Base.logger = @custom_logger
      else
        Rails.logger = @default_logger
        ActionController::Base.logger = @default_logger
        ActiveRecord::Base.logger = @default_logger
      end
      @app.call(env)
    end
  end
end