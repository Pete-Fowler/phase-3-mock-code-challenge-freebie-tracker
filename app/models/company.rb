class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def freebies
    Freebie.where(company_id: self.id)
  end

  def devs
    self.freebies.map do |f|
      Dev.find(f.dev_id)
    end
  end

  def give_freebie(dev, item, value)
    Freebie.create(item_name: item, value: value, dev_id: dev.id, company_id: self.id)
  end

  def self.oldest_company
    year = Company.minimum(:founding_year)
    Company.find_by(founding_year: year)
  end



end
