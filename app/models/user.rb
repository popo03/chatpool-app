class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position

  validates :name, presence: true
  validates :position_id, numericality: { other_than: 0 }

  has_many :user_groups
  has_many :groups, through: :user_groups
end
