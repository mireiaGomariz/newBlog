class EstaticasController < ApplicationController
  def contacto
    @id=params[:id]
    @pag=params[:pagina]
  end

  def nosotros
    @mensajes = "Hola desde controller"
    @usuarios = ["Mireia", "Edu", "Marta", "Marga"]
  end
end
