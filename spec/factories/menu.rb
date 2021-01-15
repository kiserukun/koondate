FactoryBot.define do
  factory :menu do
    sokuseki_id { 2 }
    sokuseki_mon_id             { 2 }
    sokuseki_thu_id             { 2 }
    sokuseki_tue_id { 2 }
    sokuseki_wed_id { 2 }
    sokuseki_sat_id              { 2 }
    sokuseki_fri_id              { 2 }
    association :user
  end
end
