class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'httparty'

  def index
    @user = User.new
  end

  def contact_us_top
    user = User.new(user_params)

    if user.valid?
      user.save
      UserMailer.contact_us(user).deliver_now
      UserMailer.contact_user(user).deliver_now

      HTTParty.post('http://api.hablacreativo.com/api/habla/v1/contacto/nuevo',
        :query => { "contact[name]" => user.name, "contact[email]" => user.email, "contact[phone]" => user.phone,
                    "contact[city]" => user.country, "contact[comment]" => user.comment, "contact[project]" => "intercasa-landing"},
        :headers => { "X-Username" => "cecdf9db19aea833@hablacreativo.com", "X-Token" => "3640eb69-a68f-480b-b7f5-1b94944d2784" })

      flash[:success] = "¡Suscripción exitosa!"
    else
      flash[:error] = "Ocurrio un error en el envío del formulario"
    end

    redirect_to thank_you_page_top_path
  end
end
