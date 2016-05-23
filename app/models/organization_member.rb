class OrganizationMember < ActiveRecord::Base
  belongs_to :member_type
  belongs_to :organization
  belongs_to :user
end
