class Client < ActiveRecord::Base
  mount_uploader :image, ClientUploader
end
