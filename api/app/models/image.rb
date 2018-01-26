class Image < ApplicationRecord
  belongs_to :category

  validates_presence_of :iname, :url
end
