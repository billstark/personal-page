module Gallery

  class ImagesController < ApplicationController

    include Response

    before_action :sync, only: [:index]

    def index
    end

    def show
    end

    private

    def sync
    end
    
  end

end
