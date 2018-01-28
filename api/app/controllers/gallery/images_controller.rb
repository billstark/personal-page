module Gallery

  class ImagesController < ApplicationController

    include Response

    before_action :setCategory
    before_action :sync, only: [:index]


    def index
      @images = @category.images
      response = Array.new
      @images.each { |image|
        response.push({
            "id" => image["id"],
            "iname" => image["iname"],
            "url" => image["url"]
          })
      }
      json_response(response)
    end

    def show
      puts params[:id]
      @image = @category.images.find_by(id: params[:id])
      response = {
        "id" => @image.id,
        "iname" => @image.iname,
        "url" => @image.url
      }
      json_response(response)
    end

    private

    def setCategory
      @category = Category.find(params[:category_id])
    end

    def sync
      images = getImages()
      syncData(images)
    end

    def getImages
      images = Cloudinary::Api.resources(:type => :upload, :prefix => @category.cname)["resources"]
      return images
    end

    def syncData(images)
      currentImages = Image.all
      addMissingImages(currentImages, images)
      removeDeletedImages(currentImages, images)
    end

    def addMissingImages(currentImages, images)
      urlArray = Array.new(currentImages.length) { |i|
        currentImages[i]["url"]
      }

      images.each { |image|
        unless !urlArray.include?(image["url"]) then
          next
        end
        imageName = image["public_id"]
        imageName.slice! (@category.cname + "/")
        Image.create(iname: imageName, url: image["url"], category: @category)
      }
    end

    def removeDeletedImages(currentImages, images)
      urlArray = Array.new(images.length) { |i|
        images[i]["url"]
      }
      currentImages.each { |image|
        unless !urlArray.include?(image["url"]) then
          next
        end
        image.destroy
      }
    end


  end

end
