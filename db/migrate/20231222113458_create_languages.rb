class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.integer :language_id
      t.string :language

      t.timestamps
    end
  end
end
