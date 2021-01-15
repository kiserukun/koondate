class SokusekiMon < ActiveHash::Base
  self.data = [
    { id: 1, name: '月曜日のメニューを選択' },
    { id: 2, name: '飲み会' },
    { id: 3, name: '外食' },
    { id: 4, name: 'デート' },
    { id: 5, name: 'ファーストフード' },
    { id: 6, name: 'ファミレス' },
    { id: 7, name: 'コンビニ' },
    { id: 8, name: '出前' },
    { id: 9, name: '缶詰' },
    { id: 10, name: '手料理' }
  ]

  include ActiveHash::Associations
  has_many :menus
end
