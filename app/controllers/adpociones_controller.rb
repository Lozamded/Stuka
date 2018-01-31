class AdpocionesController < ApplicationController
  before_action :authenticate_user!
  def new
    @perros = Perro.all
    @propietarios = Propietario.all
  end
end
