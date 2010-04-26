# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bip_migrator_session',
  :secret      => 'c6be278c6dc7c084cf54e306f7c5cc4cf1848346861f914ae3aac25ccbe566f3a97eb4337b606fafef664fdfd0bfc77dba87b9123d84f57960476c86bcc3b64b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
