class OrganizationMember < ActiveRecord::Base
  belongs_to :member_type
  belongs_to :organization
  belongs_to :user
      validates :member_type_id, presence: true
      validates :organization, presence: true
      validates :user, presence: true
     
     
end
