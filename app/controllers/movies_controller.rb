class MoviesController < ApplicationController
  # Acción index para listar todas las películas
  def index
    @movies = Movie.all
  end

  # Acción new para crear una nueva instancia de Movie
  def new
    @movie = Movie.new
  end

  # Acción create para guardar el registro en la base de datos
  
  def create
    @movie = Movie.new(movie_params)
    if  @movie.save
        redirect_to movies_path
    else
        render :new
    end
  end 

  private

  
  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director) # Solo permitimos name, synopsis y director
  end
end
