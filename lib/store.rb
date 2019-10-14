class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :must_have_men_and_women

  def must_have_men_and_women
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, :womens_apparel)
    end
  end
end
