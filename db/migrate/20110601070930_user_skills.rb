class UserSkills < ActiveRecord::Migration
  def self.up
    create_table :skills_users, :id => false do |t|
      t.integer :user_id
      t.integer :skill_id
    end
  end

  def self.down
    drop_table :skills_users
  end
end
