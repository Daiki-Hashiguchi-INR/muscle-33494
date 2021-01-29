class Muscle < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :part
  belongs_to_active_hash :difficult

  with_options presence: true do
    validates :image
    validates :title
    validates :explain
    validates :daytime
  end

  with_options numericality: { other_than: 1, message: 'Select' } do
    validates :part_id
    validates :difficult_id
  end

  def start_time
    self.daytime
  end
end
