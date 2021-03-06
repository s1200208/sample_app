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
if File.exist?(token_file)
File.read(token_file).chomp
else
token = SecureRandom.hex(64)
File.write(token_file, token)
token
end
end

SampleApp::Application.config.secret_key_base = '5e2f7278ab14d3ef9c95e616537c95099b15baa4a164fac3b7f76bea4216de331a9908bb876beb8cae5ae416e9134805e40835ae8e0912072ee08f115e55b795'
