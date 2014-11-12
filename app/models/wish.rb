class Wish < ActiveRecord::Base
  validates :title, presence: true
end
