Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '2424690704282437', '8c47bb77ec998110921aaf3824247c3e'
end