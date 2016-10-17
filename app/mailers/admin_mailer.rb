class AdminMailer < ApplicationMailer
  def new_user_waiting_for_approval(user)
    @user = user
    @url  = 'http://localhost:3000/'
    mail to: @user.email, subject: 'Account Approved'
  end
end
