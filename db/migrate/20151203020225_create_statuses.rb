class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name
      t.text :content, limit:50

      t.timestamps null: false
    end
  end
end
