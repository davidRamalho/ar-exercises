class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, message: 'Must have a minimum of 3 characters for store names' }
  validates :annual_revenue, numericality:
  { only_integer: true, greater_than: 0, message: 'Must have an annual revenue greater than 0' }
  validate :store_must_womens_or_mens

  def store_must_womens_or_mens
      if !womens_apparel.present? && !mens_apparel.present?
          errors.add(:store_must_womens_or_mens, 'Stores must carry at least mens or womens apparel.')
      end
  end
end