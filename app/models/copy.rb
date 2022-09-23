class Copy < ApplicationRecord
  belongs_to :book
  belongs_to :user, optional: true

  validates :book_id, presence: true
  validates :status, presence: true, inclusion:
    { in: ['available', 'on loan'], message: "status can only be 'available' or 'on loan'"}
  with_options if: -> { status == 'on loan' } do
    validates :user, presence: true
    validates :due_date, presence: true
  end
  with_options if: -> { status == 'available' } do
    validates :user, absence: true
    validates :due_date, absence: true
  end
end
