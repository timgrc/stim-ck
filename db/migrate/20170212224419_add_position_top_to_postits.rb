class AddPositionTopToPostits < ActiveRecord::Migration[5.0]
  def change
    add_column :postits, :position_top, :integer
  end
end
