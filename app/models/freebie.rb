class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company 

  def dev 
    self.dev 
  end
end
