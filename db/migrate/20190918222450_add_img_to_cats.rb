class AddImgToCats < ActiveRecord::Migration[6.0]
  def change
      add_column :cats, :img, :string
  end
end
