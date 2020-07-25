class Role < ApplicationRecord
  scope :inactive, -> { where(active: false) }
end
