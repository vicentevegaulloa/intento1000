class StaticPagesController < ApplicationController
  def home
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
    @nav_elements = [
      {
        :name => "Ver Locales",
        :link => ""
      },
      {
        :name => "Entra Aqui",
        :link => login_path
      }
    ]
  end

  def login
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
  end

  def match_home
    @logo = {
      :name => "MatchApp",
      :link => match_home_path
    }
    @nav_elements = [
      {
        :name => "Perfil",
        :link => ""
      },
      {
        :name => "Match",
        :link => ""
      },
      {
        :name => "Locales",
        :link => ""
      },
      {
        :name => "Inbox",
        :link => ""
      },
      {
        :name => "Salir",
        :link => ""
      },
    ]
  end

  def local_home
    @logo = {
      :name => "LocalApp",
      :link => local_home_path
    }

    @nav_elements = [
      {
        :name => "Muro",
        :link => ""
      },
      {
        :name => "Match",
        :link => ""
      },
      {
        :name => "Locales",
        :link => ""
      },
      {
        :name => "Inbox",
        :link => ""
      },
      {
        :name => "Salir",
        :link => ""
      },
    ]
  end
end
