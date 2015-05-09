class Player < ActiveRecord::Base
  validates :last, :presence => true
  validates :first, :presence => true
end
