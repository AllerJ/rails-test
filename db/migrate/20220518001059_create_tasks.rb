class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :subject
      t.text :note
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
