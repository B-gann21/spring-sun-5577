class Hospital < ApplicationRecord
  has_many :doctors

  def number_of_doctors
    doctors.count(:all)
  end

  def unique_university_names
    doctors.select(:university)
           .group(:university)
           .pluck(:university)
  end
end
