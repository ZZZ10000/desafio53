class DocumentariesController < ApplicationController
  def index
    @documentaries = Documentary.all
  end

  def new
    @documentary = Documentary.new
  end

  def create
    @documentary = Documentary.new(documentary_params)
    if @documentary.save
      redirect_to documentaries_path
    else
      render :new
    end
  end

  private

  def documentary_params
    params.require(:documentary).permit(:name, :synopsis, :director)
  end
end


