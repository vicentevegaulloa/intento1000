class StaticPagesController < ApplicationController
  def home
    @style = "home"
    @logo = {
      :name => "Grupo43App",
      :link => root_path
    }
    @nav_elements = [
      {
        :name => "Ver Locales",
        :link => "",
        :method => :get
      },
      {
        :name => "Entra Aqui",
        :link => login_path,
        :method => :get
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
    @style = "match"
    @logo = {
      :name => "MatchApp",
      :link => match_home_path
    }
    @nav_elements = [
      {
        :name => "Perfil",
        :link => "",
        :method => :get
      },
      {
        :name => "Match",
        :link => "",
        :method => :get
      },
      {
        :name => "Locales",
        :link => "",
        :method => :get
      },
      {
        :name => "Inbox",
        :link => "",
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_match_user_session_path,
        :method => :delete
      },
    ]
  end

  def local_home
    @style = "local"
    @logo = {
      :name => "LocalApp",
      :link => local_home_path
    }

    @nav_elements = [
      {
        :name => "Muro",
        :link => "",
        :method => :get
      },
      {
        :name => "Match",
        :link => "",
        :method => :get
      },
      {
        :name => "Locales",
        :link => "",
        :method => :get
      },
      {
        :name => "Inbox",
        :link => "",
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_local_user_session_path,
        :method => :delete
      },
    ]
  end
end
