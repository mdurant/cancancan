class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to questions_url, :alert => exception.message
  end

  #use_growlyflash # except: %i[actions without growlyflash]

# Also there is another shorthand, to skip callbacks:
# skip_growlyflash only: %i[actions without growlyflash]

  
end
