class CreateBikes < ActiveRecord::Migration[5.1]
  def change
=begin 	
    create_table :bikes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
=end
	change_column :description, :text

  end
end
