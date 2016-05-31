class Organization < ActiveRecord::Base
    belongs_to :user
   # belongs_to :profile
    has_many :organization_member 
    
    validates :name, presence: true
    validates :ruc, presence: true
    validates :address, presence: true
    validates :user, presence: true
 
 
end


