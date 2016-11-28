Rails.application.routes.draw do

  mount HealthcheckRails::Engine => "/healthcheck_rails"
end
