class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :country
      t.string :phone
      t.string :comment

      t.timestamps
    end
  end
end
