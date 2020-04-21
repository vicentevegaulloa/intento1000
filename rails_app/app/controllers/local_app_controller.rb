class LocalAppController < ApplicationController
  before_action :set_variables

  def set_variables
    @style = "local"
    @logo = {
      :name => "LocalApp",
      :link => local_home_path
    }

    @nav_elements = [
      {
        :name => "Muro",
        :link => local_muro_path,
        :method => :get
      },
      {
        :name => "Mi Local",
        :link => local_mi_local_path,
        :method => :get
      },
      {
        :name => "Locales",
        :link => local_locales_path,
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_local_user_session_path,
        :method => :delete
      },
    ]
  end

  def local_home
  end

  def local_locales
  end

  def local_muro
  end

  def local_mi_local
  end

end
