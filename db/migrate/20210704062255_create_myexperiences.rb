class CreateMyexperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :myexperiences do |t|
      t.string :name
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
