class Board < ApplicationRecord
  validates :width, {
    numericality: { greater_than: 0, only_integer: true },
    null: false,
  }
end
