class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :head_quarter
      t.belongs_to :registration

      t.timestamps
    end
  end
end
