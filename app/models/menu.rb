class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sokuseki
  belongs_to :sokuseki_mon
  belongs_to :sokuseki_tue
  belongs_to :sokuseki_wed
  belongs_to :sokuseki_thu
  belongs_to :sokuseki_fri
  belongs_to :sokuseki_sat
  belongs_to :user

  with_options numericality: { other_than: 1 } do
    validates :sokuseki_id
    validates :sokuseki_mon_id
    validates :sokuseki_tue_id
    validates :sokuseki_wed_id
    validates :sokuseki_thu_id
    validates :sokuseki_fri_id
    validates :sokuseki_sat_id
  end
end
