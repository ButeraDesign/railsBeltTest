class Shoe < ApplicationRecord
  belongs_to :user, foreign_key: :seller_id, class_name: :User
  belongs_to :buyer, foreign_key: :buyer_id, class_name: :User
  #validates :buyer_id, presence: true, allow_nil: true
end
