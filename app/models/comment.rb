class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :muscle

  validates :text,     presence: true
end
