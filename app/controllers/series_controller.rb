class SeriesController < ApplicationController
  def index
    @series = Serie.all  # Cargar todas las series de la base de datos
  end

  def new
    @serie = Serie.new   # Instanciar una nueva serie para el formulario
  end

  def create
    @serie = Serie.new(serie_params)  # Crear una nueva instancia con los parámetros permitidos
    if @serie.save
      redirect_to series_path
    else
      render :new       # Renderizar la vista `index` nuevamente en caso de error
    end
  end

  private

  # Definir los parámetros permitidos para Serie
  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
