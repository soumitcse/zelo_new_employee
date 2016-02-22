class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :zoloid
      t.string :code_digest

      t.timestamps null: false
    end
  end
end
