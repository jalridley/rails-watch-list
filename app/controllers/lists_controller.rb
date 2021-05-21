class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  
  def show
    # find the index of chosen list
    @list = List.find(params[:id])
  end
  
end
