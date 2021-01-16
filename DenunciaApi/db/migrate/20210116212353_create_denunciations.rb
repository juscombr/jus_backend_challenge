class CreateDenunciations < ActiveRecord::Migration[6.0]
  def change
    create_table :denunciations do |t|
      t.string :title
      t.string :description
      t.string :link
      t.integer :type
      t.integer :status

      t.timestamps
    end
  end
end
