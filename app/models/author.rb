class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :name, presence: true
  validates :died, allow_blank: true, comparison: { greater_than: :born }
end
