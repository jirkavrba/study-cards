class Collection < ApplicationRecord
  belongs_to :user
  has_many :cards, dependent: :destroy

  scope :recent, -> { order(last_opened_at: :desc).first(5) }
end
