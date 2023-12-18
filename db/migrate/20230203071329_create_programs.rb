class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :description
      t.string :course_code
      t.integer :category
      t.belongs_to :registration
      t.belongs_to :user
      t.belongs_to :organization

      t.timestamps
    end
  end
end
