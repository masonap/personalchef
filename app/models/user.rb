class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

  # User listings, if users are deleted so are their listings
  has_many :listings, dependent: :destroy

  has_many :sales, class_name: "Order", foreign_key: "chef_id"
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
