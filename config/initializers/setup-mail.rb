config.action_mailer.default_url_options = {host: 'www.heroku.com'}
config.action_mailer.delivery_method = :stmp
config.action_mailer.stmp_settings = {
# ActionMailer::Base.smtp_settings = {
	:address					=> "smtp.sendgrid.net",
	:port						=> 587,
	:domain						=> "heroku.com",
	:user_name					=> ENV['SENDGRID_USERNAME'],
	:password					=> ENV['SENDGRID_PASSWORD'],
	:authentication				=> "plain",
	:enable_starttls_auto		=> true

}