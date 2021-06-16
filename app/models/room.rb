class Room < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_one_attached :image

  validates :text, presence: true, unless: :was_attaced?

  def was_attaced?
    self.image.attached?
  end
end
