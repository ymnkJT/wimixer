class Piece < ActiveRecord::Base
  validates :title presence: true
end
