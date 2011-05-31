class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :name
      t.string :organization
      t.string :designation
      t.string :current_organization
      t.float :total_experience
      t.float :relevant_experience
      t.float :current_ctc
      t.float :expected_ctc
      t.integer :notice_period
      t.integer :employee_type
      t.string :qualification_id
      t.integer :year_of_passout
      t.integer :current_location_id
      t.integer :preferred_location_id
      t.datetime :date_of_birth
      t.string :passport_number
      t.string :pan_number
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
