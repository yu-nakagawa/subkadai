class AddImgToMicroposts < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :img, :string
  end
end
