class User < ActiveRecord::Base
  attr_accessor :remember_token, :reset_token
  before_save :email_downcase
  validates :username, presence: true, length: { maximum: 50 }
  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 }, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: {minimum: 9}, :on => :update, :unless => lambda{ |user| user.password.blank? }#, :on => :create, :unless => lambda{ |user| user.password.blank? }
  validates :password_confirmation, presence: true, allow_nil: true
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end 

  has_many :events

  def create_reset_digest
    self.reset_token = User.new_token
   update_attribute(:reset_digest, User.digest(reset_token))
   update_attribute(:reset_sent_at, Time.zone.now)
   # update_columns(reset_digest:  FILL_IN, reset_sent_at: FILL_IN)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end

  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if remember_digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end

  mount_uploader :profile, ProfileUploader
  
  private

  def email_downcase
    self.email = email.downcase
  end
end
