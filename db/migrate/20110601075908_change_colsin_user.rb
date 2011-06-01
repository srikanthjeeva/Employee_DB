class ChangeColsinUser < ActiveRecord::Migration
  def self.up
    change_column :users, :year_of_passout, :string
    change_column :users, :employee_type, :string
    change_column :users, :notice_period, :string
    change_column :users, :expected_ctc, :string
    change_column :users, :current_ctc, :string
    change_column :users, :relevant_experience, :string
    change_column :users, :total_experience, :string
  end

  def self.down
  end
end
