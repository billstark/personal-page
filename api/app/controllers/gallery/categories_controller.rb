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
      currentCategories = Category.all
      addMissingCategory(currentCategories, categories)
      removeDeletedCategory(currentCategories, categories)
    end

    # Add missing Categories
    def addMissingCategory(currentCategories, categories)
      categoriesArray = Array.new(currentCategories.length) { |i|
        currentCategories[i]["cname"]
      }
      categories.each { |category|
        unless !categoriesArray.include?(category) then
          next
        end
        Category.create(cname: category)
      }
    end

    # remove deleted categories
    def removeDeletedCategory(currentCategories, categories)
      currentCategories.each { |category| 
        unless !categories.include?(category.cname) then
          next
        end
        category.destroy
      }
    end
  end
end
