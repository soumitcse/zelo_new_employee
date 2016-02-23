class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly(email , zoloid , name , id)
    @greeting = "Hi"
    @zoloid = zoloid
    @name = name
    @id = id
    # mail to: "to@example.org"
    mail to: email, subject: "New Employee Onboard"
  end
end
