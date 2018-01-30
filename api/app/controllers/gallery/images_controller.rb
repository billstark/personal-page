module Gallery

  class ImagesController < ApplicationController

    ID_KEY = "id"
    URL_KEY = "url"
    IMAGE_NAME_KEY = "iname"
    RESOURCES_KEY = "resources"
    PUBLIC_ID_KEY = "public_id"
    CATEGORY_KEY = "category"
    IMAGES_KEY = "images"
    SLASH = "/"

    include Response

    # before getting all the images
    # sync the database with images server first
    # But for every action, we need to set a category first.
    before_action :setCategory
    before_action :sync, only: [:index]

    # GET /gallery/categories/:category_id/images
    def index
      categorizedImages = Array.new
      unless @category.present? then
        jsonResponse({})
        return
      end

      @images = @category.images
      @images.each { |image|
        categorizedImages.push({
            ID_KEY => image[ID_KEY],
            IMAGE_NAME_KEY => image[IMAGE_NAME_KEY],
            URL_KEY => image[URL_KEY]
          })
      }
      jsonResponse({
          CATEGORY_KEY => @category.cname,
          IMAGES_KEY => categorizedImages
        })
    end

    # GET /gallery/categories/:category_id/images/:id
    def show
      unless @category.present? then
        jsonResponse({})
        return
      end

      @image = @category.images.find_by(id: params[:id])

      unless @image.present? then
        jsonResponse({})
        return
      end

      response = {
        CATEGORY_KEY => @category.cname,
        ID_KEY => @image.id,
        IMAGE_NAME_KEY => @image.iname,
        URL_KEY => @image.url
      }
      jsonResponse(response)
    end

    private

    # Finds the specified category (from api params)
    def setCategory
      begin
        @category = Category.find(params[:category_id])
      rescue ActiveRecord::RecordNotFound
        @category = nil
      end
    end

    # syncs the images with image server
    def sync
      images = getImages()
      syncData(images)
    end

    # gets all the images from server
    def getImages
      images = Cloudinary::Api.resources(:type => :upload, :prefix => @category.cname)[RESOURCES_KEY]
      return images
    end

    # syncs the data
    # 1. add missing images
    # 2. remove deleted images
    def syncData(images)
      currentImages = @category.images
      addMissingImages(currentImages, images)
      removeDeletedImages(currentImages, images)
    end

    def addMissingImages(currentImages, images)
      urlArray = Array.new(currentImages.length) { |i|
        currentImages[i][URL_KEY]
      }

      images.each { |image|
        unless !urlArray.include?(image[URL_KEY]) then
          next
        end
        imageName = image[PUBLIC_ID_KEY]
        imageName.slice! (@category.cname + SLASH)
        Image.create(iname: imageName, url: image[URL_KEY], category: @category)
      }
    end

    def removeDeletedImages(currentImages, images)
      urlArray = Array.new(images.length) { |i|
        images[i][URL_KEY]
      }
      currentImages.each { |image|
        unless !urlArray.include?(image[URL_KEY]) then
          next
        end
        image.destroy
      }
    end


  end

end
