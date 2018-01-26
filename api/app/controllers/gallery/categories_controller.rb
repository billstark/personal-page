module Gallery
  class CategoriesController < ApplicationController
    
    before_action :sync, only: [index]
    
    def index
      @categories = Category.all
    end

    private
      
    def sync
      
    end

  end
end
