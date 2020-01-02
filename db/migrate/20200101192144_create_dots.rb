class CreateDots < ActiveRecord::Migration[6.0]
  def change
    create_table :dots do |t|
      t.references :experiment, null: false, foreign_key: true
      t.references :metric, null: false, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
