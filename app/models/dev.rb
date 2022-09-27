class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies


  # def freebies
  #   Freebie.where(dev_id: self.id)

  # end

  # def companies
  #   self.freebies.map do |f|
  #     Company.find(f.company_id)
  #   end
  # end


  def received_one?(item)
    self.freebies.any? do |freebie| 
      freebie.item_name == item__name
  end


  def give_away(freebie, dev)
    freebie.update(dev: dev) unless freebie.dev != self
    end 
  end 
end
