class Review < ActiveRecord::Base
  belongs_to :product

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :rating, presence: true, :inclusion => {:in => [1,2, 3, 4, 5]}
end