OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '2424690704282437', '8c47bb77ec998110921aaf3824247c3e', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
