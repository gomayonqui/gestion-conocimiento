class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :kind
      t.text :content
      t.belongs_to :program, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
