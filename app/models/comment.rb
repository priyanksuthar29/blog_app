class Comment < ApplicationRecord
  include ContentValidation

  belongs_to :user
  belongs_to :post
  validates_length_of :description, maximum: 100, allow_blank: false
end
