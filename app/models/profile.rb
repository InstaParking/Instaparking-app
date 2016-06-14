class Profile < ActiveRecord::Base
  belongs_to :document_type
  belongs_to :user
  
  # has_attached_file :photo, styles: { thumb: '100x100>', medium: '300x300>'},    
  #   default_url: '/images/:style/missing.png'  
  # validates_attachment :photo,    
  #   content_type: { content_type: ['image/jpeg', 'image/png', 'image/gif'] }  

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates_attachment :photo,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

#  validates :first_name, presence: true
#  validates :last_name, presence: true
#  validates :document_type, presence: true
#  validates :document_number, presence: true

  def full_name
      self.first_name + " " + self.last_name
  end

end
