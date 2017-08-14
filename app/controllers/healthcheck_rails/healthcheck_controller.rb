module HealthcheckRails
  class HealthcheckController < ApplicationController
    def index
      head :ok
    end
  end
end