class VehicleMailer < ApplicationMailer
	default from: "jemapau@gmail.com"
  	layout 'mailer'

   # send a signup email to the user, pass in the user object that   contains the user's email address
  def new_vehicle_email(user)
    @user = user
    @url = "http://localhost:3000/users/#{@user.id}/vehicles"
    mail( :to => @user.email,
    :subject => 'New Vehicle Registered.' )
  end
end
