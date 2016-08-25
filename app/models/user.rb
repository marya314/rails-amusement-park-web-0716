class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password #bcrypt

  validates :password, presence: true, :on => :create
  validates :password_digest, presence: true, :on => :update


  def mood
      if self.nausea < self.happiness
          "happy"
      else
          "sad"
      end
  end

end
