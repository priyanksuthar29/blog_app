class Post < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :comments, dependent: :destroy

  #include ContentValidation
  #extend VowelCheck

  validates_length_of :body, length: { maximum: 200 }, allow_blank: false
  validates_length_of :title, length: { maximum: 200 }, allow_blank: false
  #validates_inclusion_of :status, :in => ['Draft','Published','Archived']

  #validate :draft_legth

  #scope :draft, ->  { where(status: 'draft')}



end
