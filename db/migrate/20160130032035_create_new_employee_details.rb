class CreateNewEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :new_employee_details do |t|
      t.string :zolo_id
      t.string :name
      t.string :image_path
      t.string :location
      t.string :qualification
      t.string :college
      t.string :organization
      t.string :department
      t.string :role
      t.text :hobbies
      t.date :dob
      t.text :about_yourself

      t.timestamps null: false
    end
  end
end
