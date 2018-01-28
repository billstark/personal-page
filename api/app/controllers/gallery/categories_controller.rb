module Gallery
  class CategoriesController < ApplicationController

    ID_KEY = "id"
    CATEGORY_NAME_KEY = "cname"
    NAME_KEY = "name"
    FOLDERS_KEY = "folders"

    include Response
    
    # Before getting all the categories, 
    # sync the categories with image server first
    before_action :sync, only: [:index]
    
    # GET /gallery/categories
    def index
      @categories = Category.all
      response = Array.new
      @categories.each { |category|
        response.push({ ID_KEY => category[ID_KEY], CATEGORY_NAME_KEY => category[CATEGORY_NAME_KEY] })
      }
      jsonResponse(response)
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
      folders = Cloudinary::Api.root_folders[FOLDERS_KEY]
      categories = Array.new
      folders.each { |folder|
        categories.push(folder[NAME_KEY])
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
        currentCategories[i][CATEGORY_NAME_KEY]
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
