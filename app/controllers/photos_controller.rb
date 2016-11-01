class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
  @photo=Photo.find_by({:id=> params[:id]})
end
def new_form
  @photo=Photo.find_by({:id=> params[:id]})
end

def create_row
  p=Photo.new
  p.caption=params[:the_caption]
    p.source=params[:the_source]
    p.save
    redirect_to("http://localhost:3000/photos")
end

def destroy
  p=Photo.find_by({:id=> params[:id]})
  p.destroy
  # <h2> "Photo has been deleted. You will be redirected to the home page"
  redirect_to("http://localhost:3000/photos")
end

def edit_form
  @photo=Photo.find_by({:id=> params[:id]})
render("edit_form.html.erb")
end
end
