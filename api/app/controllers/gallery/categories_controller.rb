module Gallery
  class CategoriesController < ApplicationController

    include Response
    
    before_action :sync, only: [:index]
    
    def index
      @categories = Category.all
      response = Array.new
      @categories.each { |category|
        response.push({ "id" => category["id"], "cname" => category["cname"] })
      }
      json_response(response)
    end

    ###################
    # private methods #
    ###################
    private 

    # Syncs all the images from cloud
    def sync
      categories = getCategories()
      syncData(categories)
    end

    # Get all categories in the image server
    def getCategories
      folders = Cloudinary::Api.root_folders["folders"]
      categories = Array.new
      folders.each { |folder|
        categories.push(folder["name"])
      }

      return categories
    end

    # Sync image server data with my server data
    def syncData(categories)
      addMissingCategory(categories)
      removeDeletedCategory(categories)
    end

    # Add missing Categories
    def addMissingCategory(categories)
      categories.each { |category| 
        unless !Category.find_by(cname: category) then
          next
        end
        Category.create(cname: category)
      }
    end

    # remove deleted categories
    def removeDeletedCategory(categories)
      currentCategories = Category.all
      currentCategories.each { |category| 
        unless !categories.include?(category.cname) then
          next
        end
        category.destroy
      }
    end
  end
end
