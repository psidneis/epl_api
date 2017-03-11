class Job < ApplicationRecord

  enum status: [ :draft, :activated ]
  
  def activate(params=nil)
    self.activated!
  end

end
