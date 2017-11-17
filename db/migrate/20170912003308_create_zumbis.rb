class CreateZumbis < ActiveRecord::Migration
  def change
    create_table :zumbis do |t|
      t.string :nome
      t.string :idade
      t.text :bio

      t.timestamps null: false
    end
  end
end
