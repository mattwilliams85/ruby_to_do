class CreateTables < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :varchar
      t.column :list_id, :int
      t.column :completed, :boolean
      t.column :due_date, :datetime

      t.timestamps
    end

    create_table :lists do |t|
      t.column :name, :varchar

      t.timestamps
    end
  end
end
