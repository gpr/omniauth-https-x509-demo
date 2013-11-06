Rails.application.config.middleware.use OmniAuth::Builder do
  provider :https_x509,
           :setup => lambda{|env| env['omniauth.strategy'].options[:remote_user] = env['REMOTE_USER'] }
end
