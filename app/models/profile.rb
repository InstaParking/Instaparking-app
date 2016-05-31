class Profile < ActiveRecord::Base
  belongs_to :document_type
  belongs_to :user
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :document_type, presence: true
  validates :document_number, presence: true

  def full_name
      self.first_name + " " + self.last_name
  end

end
