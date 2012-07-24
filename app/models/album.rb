class Album < ActiveRecord::Base
  attr_accessible :user
@CALLBACK_URL = "http://localhost:3000/autentication"
  Instagram.configure do |config|
  config.client_id = "af31a5cdcae140c5af5da854ebbe9ddf"
  config.client_secret = "b8600511ba804fd3aad4b1e00826187d"
end



end
