class ArticulosController < ApplicationController

  def index
    @articulos= Articulo.all.order("created_at DESC")
  end

  def new
    @boton = "Crear"
    @articulo= Articulo.new
  end

  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      redirect_to @articulo
    else
      render 'new'
    end
  end

  def edit
    @boton = "Modificar"
    @articulo = Articulo.find(params[:id])
  end

  def update
      @articulo = Articulo.find(params[:id])
        if @articulo.update(articulo_params)
          flash[:notice] = "Articulo modificado correctamente"
          redirect_to @articulo
        else
          render 'edit'
        end
  end

  def show
    @articulo=Articulo.find(params[:id])
  end

  def destroy
    @articulo=Articulo.find(params[:id])
    @articulo.destroy
    redirect_to articulos_path,notice: "Articulo eliminado correctamente"
  end

  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido)
  end
end
