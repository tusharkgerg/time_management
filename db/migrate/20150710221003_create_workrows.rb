class CreateWorkrows < ActiveRecord::Migration
  def change
    create_table :workrows do |t|
      t.date :date
      t.string :task
      t.decimal :hours_worked, :precision => 4, :scale => 2
      t.text :notes

      t.timestamps null: false
    end
  end
end
