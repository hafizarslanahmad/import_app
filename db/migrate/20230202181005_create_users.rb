class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :category
      t.belongs_to :registration
      t.belongs_to :organization

      t.timestamps
    end
  end
end
