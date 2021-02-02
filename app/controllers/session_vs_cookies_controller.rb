class SessionVsCookiesController < ApplicationController
  def index; end

  def save
    session[:first_name] = params[:first_name]
    cookies[:first_name] = params[:first_name]
    redirect_to session_vs_cookies_path
  end
end
