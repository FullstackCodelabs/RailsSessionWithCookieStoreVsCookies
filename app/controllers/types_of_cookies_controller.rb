class TypesOfCookiesController < ApplicationController
  def index; end

  def save
    # https://api.rubyonrails.org/v5.2.1/classes/ActionDispatch/Cookies.html

    # Sets a simple session cookie.
    # This cookie will be deleted when the user's browser is closed.
    cookies[:last_name] = params[:last_name]

    # Sets a cookie that expires in 1 hour.
    cookies[:last_name_expiring_in_1_hour] = { value: params[:last_name], expires: 1.hour }

    # Sets a cookie that expires at a specific time.
    cookies[:last_name_expiring_at_specific_time] = { value: params[:last_name], expires: Time.utc(2050, 10, 15, 5) }

    # Sets a signed cookie, which prevents users from tampering with its value.
    # It can be read using the signed method `cookies.signed[:name]`
    cookies.signed[:last_name_signed] = params[:last_name]

    # Sets an encrypted cookie value before sending it to the client which
    # prevent users from reading and tampering with its value.
    # It can be read using the encrypted method `cookies.encrypted[:name]`
    cookies.encrypted[:last_name_encrypted] = params[:last_name]

    # Sets a "permanent" cookie (which expires in 20 years from now).
    cookies.permanent[:last_name_permanent] = params[:last_name]

    # You can also chain these methods:
    # signed + permanent
    cookies.signed.permanent[:last_name_signed_permanent] = params[:last_name]

    # signed + encrypted
    cookies.signed.encrypted[:last_name_signed_encrypted] = params[:last_name]

    # permanent + encrypted
    cookies.permanent.encrypted[:last_name_permanent_encrypted] = params[:last_name]

    # signed + permanent + encrypted
    cookies.signed.permanent.encrypted[:last_name_signed_permanent_encrypted] = params[:last_name]

    redirect_to types_of_cookies_path
  end
end
