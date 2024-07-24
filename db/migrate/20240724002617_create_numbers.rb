class CreateNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :numbers do |t|
      t.string :phone_num
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
