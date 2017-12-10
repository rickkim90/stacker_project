class Company < ActiveRecord::Base
  belongs_to :company_field
  belongs_to :service
end
