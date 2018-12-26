class UserMailer < ApplicationMailer
  def hackathon_email(params)
    @info=params
    mail(to: 'gottahackemall2@gmail.com ', subject: 'New Hackathon Submission')
  end
end
