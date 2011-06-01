class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.integer :parent_id
      t.integer :attachable_id
      t.integer :attachable_type
      t.integer :size
      t.string :content_type
      t.string :filename
      t.integer :height
      t.integer :width
      t.string :thumbnail
      t.integer :active, :default => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end
