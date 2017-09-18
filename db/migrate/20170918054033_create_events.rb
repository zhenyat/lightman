class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title,      null: false
      t.string :kind,       null: false
      t.date :started_on,   null: false
      t.date :finished_on,  null: false
      t.text :content,      null: false
      t.string :cover
      t.integer :status

      t.timestamps
    end
  end
end
