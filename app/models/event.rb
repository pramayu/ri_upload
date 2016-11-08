class Event < ActiveRecord::Base
  belongs_to :user
  has_many :galleries, dependent: :destroy
  belongs_to :category
  accepts_nested_attributes_for :galleries
  mount_uploader :image,  ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
end
