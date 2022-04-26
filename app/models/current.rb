class Current < ActiveSupport::CurrentAttributes
  attribute :user

  # has_many :rented_bikes, class_name: :Rent, foreign_key: :user_email
end
