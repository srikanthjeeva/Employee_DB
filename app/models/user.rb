class User < ActiveRecord::Base
  belongs_to :qualification
  belongs_to :preferred_location, :class_name => "Location"
  belongs_to :current_location, :class_name => "Location"
  has_one :attachment, :as => :attachable, :dependent => :destroy
  has_and_belongs_to_many :skills

  validates_presence_of :name
  
  def preferred_location_name
    self.preferred_location.name rescue "-"
  end

  def current_location_name
    self.current_location.name rescue "-"
  end

  def qualification_name
    self.qualification.name rescue "-"
  end

  def self.search(query)
    User.all(:conditions => ["users.name like ? or email like ? or phone_number like ? or  organization like ? or designation like ? or qualifications.name like ? or locations.name like ? or passport_number like ? or pan_number like ?", "%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%"],
    :include => [:qualification, :preferred_location, :current_location]
    )
  end
end
