class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_have_men_and_women
  
  before_destroy :check_for_employees

  def must_have_men_and_women
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "must have at least one apparel line")
      errors.add(:womens_apparel,"must have at least one apparel line")
    end
  end

  private

  def check_for_employees
    
    if employees.count > 0
      throw :abort
    end
  end

end
