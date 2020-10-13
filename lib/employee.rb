class Employee < ActiveRecord::Base
  belongs_to :store
  validate :first_name_present, :last_name_present, :employees_must_belong_to_store, :hourly_rate_value_integer

  def first_name_present
    if !first_name.present?
        errors.add(:first_name, "Must have a first name!")
    end
  end

  def last_name_present
      if !last_name.present?
          errors.add(:last_name, "Must have a last name!")
      end
  end

  def employees_must_belong_to_store
      if !store_id.present?
          errors.add(:store_id, "Employee must belong to store.")
      end
  end

  def hourly_rate_value_integer
      if hourly_rate.to_i && (hourly_rate < 40 || hourly_rate > 200)
          errors.add(:hourly_rate, "Hourly rate must be an integer from 40 to 200")
      end
  end
end

