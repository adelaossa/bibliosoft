class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.date :publication_date
      t.string :isbn
      t.integer :type_id
      t.integer :area_id

      t.timestamps
    end
  end
end
