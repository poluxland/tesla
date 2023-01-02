class PagesController < ApplicationController

  def home
  end

  def terms
  end

  def graficos
  end

  def informes
    @reportes = Reporte.all
  end

end
