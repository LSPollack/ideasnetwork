class Idea < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true
  validates :main_image, presence: true
  validates :video_link, presence: true
  validates :category_id, presence: true
  # validate :select_category, on: :create

  #     def select_category
  #       errors.add(:category_id, "is not active") unless @idea = nil
  #     end




end
