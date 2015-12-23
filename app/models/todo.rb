class Todo < ActiveRecord::Base
  validates :item, presence: true

  scope :completed, -> { where(completed: true) }
  scope :pending, -> { where(completed: false) }
end
