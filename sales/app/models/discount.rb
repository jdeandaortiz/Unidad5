class Discount < ApplicationRecord
  enum status: [:active, :inactive]
  enum kind: [:procent, :money]
  has_many :sales
end
