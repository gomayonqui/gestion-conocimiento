class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.belongs_to :country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
