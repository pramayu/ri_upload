class Testimonial < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
