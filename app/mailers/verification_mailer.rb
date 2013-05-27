class VerificationMailer < ActionMailer::Base
  def verification_confirmation(user)
    mail(:to => user.email, :subject => "verification", :from => "sudhirsb2003@gmail.com")
  end
end
