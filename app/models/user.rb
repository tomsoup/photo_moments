class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  #User would only pay once
  has_one :payment

  has_many :images
  #User registration would also pass onto payment model
  accepts_nested_attributes_for :payment
end
