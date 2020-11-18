if Rails.env === 'production'
    Rails.application.config.session_store :cookie_store, key: '_weather', domain: 'replace-with-frontend-domain'
else
    Rails.application.config.session_store :cookie_store, key: '_weather'
end