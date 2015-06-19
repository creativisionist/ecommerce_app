class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders
  has_many :carted_products
  has_many :products, through: :carted_products
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: :true
  validates :email, uniqueness: :true
  validates :password, length: { in: 8..20 }
end
