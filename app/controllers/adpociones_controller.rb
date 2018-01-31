class AdpocionesController < ApplicationController
  def new
    @perros = Perro.all
    @propietarios = Propietario.all
  end
end
