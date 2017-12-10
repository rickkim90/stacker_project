class Stack < ActiveRecord::Base
  belongs_to :stack_field
  belongs_to :user
end
