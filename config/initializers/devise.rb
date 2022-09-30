Devise.setup do |config|
  
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.stretches = Rails.env.test? ? 1 : 12

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.jwt do |jwt|
    jwt.secret = "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.5vWv5qzQR5Z-6R_dkxXhP8eyZG7GQGbWM_MXJuKuZU0"
    jwt.dispatch_requests = [
    ['POST', %r{^/login$}]
    ]
    jwt.revocation_requests = [
      ['DELETE', %r{^/logout$}]
    ]
    jwt.expiration_time = 5.minutes.to_i
  end

end
