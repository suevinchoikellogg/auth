# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
  secret = "puppies"
  encrypted = BCrypt::Password.create(secret)
  puts encrypted
# 2. prepare encrypted string for testing
  user_entered_secret = "kittens"
  result = BCrypt::Password.create(secret) == user_entered_secret
  puts result 
  ### Puppies 넣으면 'true', 다른 값 넣으면 'false' 
# 3. test secret against prepared encrypted string
