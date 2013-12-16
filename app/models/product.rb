class Product < ActiveRecord::Base
  has_many :sales

  has_attached_file :file

  belongs_to :user

  validates_numericality_of :price,
    greater_than: 49,
    message: "must be at least 50 cents"
end
