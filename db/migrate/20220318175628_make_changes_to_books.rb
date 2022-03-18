class MakeChangesToBooks < ActiveRecord::Migration[7.0]
  def change

 add_column :books, :isbn, :string 

 remove_column :books, :year, :string
  end
end
