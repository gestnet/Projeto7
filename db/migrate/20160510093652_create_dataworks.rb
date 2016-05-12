class CreateDataworks < ActiveRecord::Migration
  def change
    create_table :dataworks do |t|
      t.date :date
      t.decimal :value
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
