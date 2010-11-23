# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agoraTest_session',
  :secret      => '4a7055d06d2a337d89a0f53aa4a0ec3a742ced33ebba418af85959f248acf46ed1703c55f30205877c02002bd7475a0744bf474c8a5cf40e183295ba555ae54d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
