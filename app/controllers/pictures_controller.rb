class PicturesController < ApplicationController
  def show

  	@picture = Picture.find(params[:id])

  end

  def index
  	@list_of_pictures = Picture.all
  end

  def new
end

def create
  @p = Picture.new
  @p.source = params[:source]
  @p.caption = params[:caption]
  @p.save
end

def update
  @picture_update = Picture.find(params[:id])
  @picture_update.source = params[:source]
  @picture_update.caption = params[:caption]
  @picture_update.save
end

def edit
  @picture_edited = Picture.find(params[:id])
end

  def destroy
  	@picture_delete = Picture.find(params[:id])
  	@picture_delete.destroy

 
  end
end
