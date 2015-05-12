class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :trackable, :validatable
	has_many :tasks
	validates :username, :presence => true
  validates :name, :presence => true
  validates :lastname, :presence => true
	has_attached_file :profile, :styles => { :medium => "300x300>" , :mini => "40x40" , :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile, :content_type => /\Aimage\/.*\Z/  	
  
  def tasks
    Task.by_person(self.id)
  end 
end
