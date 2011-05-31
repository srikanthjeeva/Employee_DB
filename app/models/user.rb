class User < ActiveRecord::Base
  belongs_to :qualification
  belongs_to :preferred_location, :class_name => "Location"
  belongs_to :current_location, :class_name => "Location"
  
  def preferred_location_name
    self.preferred_location.name rescue "-"
  end

  def current_location_name
    self.current_location.name 
  end

  def qualification_name
    self.qualification.name rescue "-"
  end
end
