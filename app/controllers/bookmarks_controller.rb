class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id]) # nested route look on right side of rails routes
  end
  
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list # @bookmark.list_id = @list.id dsame thing
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end 
  end
  
  def destroy
    
  end
  

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
