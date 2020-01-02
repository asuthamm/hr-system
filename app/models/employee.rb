class Employee < ApplicationRecord
  has_many :subordinates, class_name: "Employee",foreign_key: "manager_id"
  belongs_to :title
  belongs_to :department
  belongs_to :location
  belongs_to :manager, class_name: "Employee", optional: true
end
