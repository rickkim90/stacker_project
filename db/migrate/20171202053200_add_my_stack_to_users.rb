class AddMyStackToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :my_stack, index: true, foreign_key: true
    add_foreign_key :users, :stacks, column: :stack_id
  end
end
