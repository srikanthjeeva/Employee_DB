# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_employee_session',
  :secret      => '70223a148473c1350436c155b5ae5e35f180cac9ab17a640b849a1c32930b80cb90fa0f8312baf0027e5b2f20be11975ef5b2c540708ce4b3cbac052dbe34f79'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
