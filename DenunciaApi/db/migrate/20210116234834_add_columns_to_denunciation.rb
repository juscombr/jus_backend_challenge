class AddColumnsToDenunciation < ActiveRecord::Migration[6.0]
  def change
    add_column :denunciations, :abuso, :integer
    add_column :denunciations, :plagio, :integer
    add_column :denunciations, :injuria, :integer
    add_column :denunciations, :outro, :integer
  end
end
