class MyValidator < ActiveModel::Validator
  def validate(record)
    # p "THIS ERROR IS WORKING"
    
    if (record.mens_apparel.class != TrueClass && record.womens_apparel.class != TrueClass)
    # unless record.name.starts_with? 'X'
      
      record.errors.add :bool, "Need to serve at least men or women!"
    end
  end
end

class Store < ActiveRecord::Base
  # include ActiveModel::Validations
  validates_with MyValidator
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  
end


 
