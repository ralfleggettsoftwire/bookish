class Book < ApplicationRecord
  belongs_to :author
  has_many :copies, dependent: :destroy

  validates :title, presence: true
  validates :author_id, presence: true
  validates :ISBN, presence: true
end
