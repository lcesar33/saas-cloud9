# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
:address => 'smtp.sendgrid.net',
:port => '587',
:authentication => :plain,
:user_name => ENV['SENDGRID_USERNAME'],
:password => ENV['SENDGRID_PASSWORD'],
:domain => 'herokuapp.com',
:from  => "cesar.lazarop@gmail.com",
:enable_starttls_auto => true
}

#ActionMailer::Base.mail(from: "cesar.lazarop@gmail.com", to: "lcesar33@gmail.com", subject: "test", body: "test body").deliver_now