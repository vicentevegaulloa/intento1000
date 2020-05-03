class MatchAppController < ApplicationController
  before_action :set_variables

  def set_variables
    @style = "match"
    @logo = {
      :name => "MatchApp",
      :link => match_home_path
    }
    @nav_elements = [
      {
        :name => "Perfil",
        :link => match_perfil_path,
        :method => :get
      },
      {
        :name => "Match",
        :link => match_match_path,
        :method => :get
      },
      {
        :name => "Locales",
        :link => match_locales_path,
        :method => :get
      },
      {
        :name => "Inbox",
        :link => match_inbox_path,
        :method => :get
      },
      {
        :name => "Salir",
        :link => destroy_match_user_session_path,
        :method => :delete
      },
    ]
  end

  def match_home
  end

  def match_perfil
  end

  def match_match
  end

  def match_locales
  end

  def match_inbox
  end
end
