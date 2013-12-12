# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exit?(token_file)
		#Use the existing token
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file.
		token = SecurerRandom.hex(64)
		File.write(token_file,token)
		token
	end
end

SampleApp::Application.config.secret_key_base = 'efb262c6ae06acfea11c0a9f6a8cdffdca37f8a3482513162e56696d9702d62011e5dfff4094d11bfe3ded51b6a7dc2f9fd70e672ee9722da8c290ae37a0171c'
