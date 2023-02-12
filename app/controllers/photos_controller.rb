class PhotosController < ApplicationController

  def index
    @matching_photos = Photo.all
    @list_of_photos = @matching_photos.order({ :created_at => :desc })

    render ({ :template => "photo_templates/index.html.erb"})
  end

  def photo_details
    @an_id = params.fetch("an_id")
    @the_photo = Photo.where({ :id => @an_id }).at(0)
    
    render ({ :template => "photo_templates/show.html.erb"})
  end

end
