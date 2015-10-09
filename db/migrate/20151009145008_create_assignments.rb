class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :post, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.text :text
      t.string :roomurl
      t.timestamp :started_at
      t.timestamp :ended_at
      t.boolean :assign_flag

      t.timestamps null: false
    end
  end
end
