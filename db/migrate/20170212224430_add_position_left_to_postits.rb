class AddPositionLeftToPostits < ActiveRecord::Migration[5.0]
  def change
    add_column :postits, :position_left, :integer
  end
end
