class User < ActiveRecord::Base

  attr_reader :password

  validates :email,
            :session_token,
            :password_digest,
             presence: true

  validates :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  after_initialize :generate_session_token

  #should have all of this in memory by the exam

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)

    return nil if user.nil?
    user.is_password(password) ? user : nil
  end

  def generate_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    return if password.nil?

    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end



end
