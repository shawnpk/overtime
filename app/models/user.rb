class User < ActiveRecord::Base
  has_many :posts
  has_many :audit_logs

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  PHONE_REGEX = /\A[0-9]*\z/

  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :phone,       presence: true, format: { with: PHONE_REGEX }, length: { is: 10 }

  def full_name
    last_name.upcase + ', ' + first_name.upcase
  end
end
