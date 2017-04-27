class Favourite < ApplicationRecord
  validates_numericality_of :number, :only_integer => true, :less_than => 100000000000, :allow_blank => false
end
