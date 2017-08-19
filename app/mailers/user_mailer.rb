class UserMailer < ActionMailer::Base >
    default :from => "noreply@netcode.cl"
    
    def registration_confirmation (user)
        @user = user
        mail(:to => "#{user.name} <#{user.email}>", :subject => "Confirmación de cuenta nueva")
    end
end