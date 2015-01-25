ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.sendgrid.net',
    :port                 => '587',
    :authentication       => :plain,
    :username             => 'app33414120@heroku.com',
    :password             => 'lvok7m8x',
    :domain               => 'heroku.com',
    :enable_starttls_auto => true
}