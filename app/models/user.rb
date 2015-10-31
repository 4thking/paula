class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :responses, :dependent => :destroy
  has_many :answers, :through => :responses
  accepts_nested_attributes_for :responses
  serialize :pssed_sections, Array
end