class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :plase,           null: false
      t.date   :day,             null: false
      t.text   :comment
      t.references :user,   foreign_key: true
      t.references :artist, foreign_key: true
      t.timestamps
    end
  end
end
