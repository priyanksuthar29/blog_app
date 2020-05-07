class Tag < ApplicationRecord
  belongs_to :post
  has_many :comments
end
