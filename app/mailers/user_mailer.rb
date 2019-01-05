class UserMailer < ApplicationMailer
  def hackathon_email(params)
    @info=params
    mail(to: 'INSERT EMAIL HERE ', subject: 'New Hackathon Submission')
  end
end
