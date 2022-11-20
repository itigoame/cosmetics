class Item < ApplicationRecord
  belongs_to :admin
  has_one_attached :image

  enum sold_out: { selling: true, soldout: false }
end
