class ChangeColumnToUser < ActiveRecord::Migration[7.0]
  # 変更内容(db:migrate時に実行される)
  def up
    change_column :users, :name, :string #nameカラムのデータ型をstringへ変更
  end

  # 変更前の状態(db:rollback時に実行される)
  def down
    change_column :users, :name, :text
  end
end