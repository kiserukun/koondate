class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.text :sun_making
      t.text :mon_making
      t.text :tue_making
      t.text :wed_making
      t.text :thu_making
      t.text :fri_making
      t.text :sat_making
      t.integer    :sokuseki_id     , null: false
      t.integer    :sokuseki_mon_id     , null: false
      t.integer    :sokuseki_tue_id     , null: false
      t.integer    :sokuseki_wed_id     , null: false
      t.integer    :sokuseki_thu_id     , null: false
      t.integer    :sokuseki_fri_id     , null: false
      t.integer    :sokuseki_sat_id     , null: false
      t.integer    :user_id             , foreign_key: true
      t.timestamps
    end
  end
end
