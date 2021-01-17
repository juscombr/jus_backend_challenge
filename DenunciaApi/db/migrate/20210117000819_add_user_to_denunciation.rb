class AddUserToDenunciation < ActiveRecord::Migration[6.0]
  def change
    add_reference :denunciations, :user, foreign_key: true
  end
end
