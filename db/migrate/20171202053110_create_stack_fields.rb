class CreateStackFields < ActiveRecord::Migration
  def change
    create_table :stack_fields do |t|
      t.string :field

      t.timestamps null: false
    end
  end
end
