class NewsletterMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletter_mailer.weekly.subject
  #
  def weekly(email , subj , key1 , value1 , key2 , value2 , key3 , value3  )

    @key1 = key1 
    @value1 = value1
    @key2 = key2
    @value2 = value2
    @key3 = key3
    @value3 = value3
    
    # mail to: "to@example.org"
    mail to: email, subject: subj
  end
end
