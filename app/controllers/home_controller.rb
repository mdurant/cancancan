class HomeController < ApplicationController
  def index
    # preguntamos si el usuario está registrado y asignamos una redirección
    if user_signed_in?
      redirect_to questions_path
    end
  end
end
