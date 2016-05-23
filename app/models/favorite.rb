class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :parking_place
end
