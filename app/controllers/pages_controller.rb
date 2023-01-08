class PagesController < ApplicationController

  def home
  end

  def terms
  end

  def graficos
  end

  def informes
    @reportes = Reporte.includes(equipo: :sucursale).where(sucursales: {contacto: current_user.email}).or(Reporte.includes(equipo: :sucursale).where(sucursales: {supervisor: current_user.email}))
  end

end

