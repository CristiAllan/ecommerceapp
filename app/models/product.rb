class Product < ActiveRecord::Base
  belongs_to :category

  validates :name, :description, :price, :maker, presence: true

def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("content LIKE ?", "%#{search}%")
end
end
