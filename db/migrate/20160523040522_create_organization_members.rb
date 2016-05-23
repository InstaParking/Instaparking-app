class CreateOrganizationMembers < ActiveRecord::Migration
  def change
    create_table :organization_members do |t|
      t.references :member_type, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
