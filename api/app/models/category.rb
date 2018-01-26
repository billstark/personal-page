class Category < ApplicationRecord

  has_many :images, dependent: :destroy

  validates_presence_of :cname
end
