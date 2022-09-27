class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company 

  def dev 
    Dev.find(self.dev_id)  
  end
end
