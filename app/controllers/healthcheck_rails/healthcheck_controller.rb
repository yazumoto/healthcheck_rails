module HealthcheckRails
  class HealthcheckController < ApplicationController
    def index
      render nothing: true, status: :ok
    end
  end
end