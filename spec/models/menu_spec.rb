require 'rails_helper'

RSpec.describe Menu, type: :model do
  before do
    @menu = FactoryBot.build(:menu)
  end

  describe 'ユーザー新規登録' do
    it 'nameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
      expect(@menu).to be_valid
    end

    it '日曜のメニューが1だと登録できない' do
      @menu.sokuseki_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki must be other than 1')
    end
    it '月曜のメニューが1だと登録できない' do
      @menu.sokuseki_mon_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki mon must be other than 1')
    end
    it '火曜のメニューが1だと登録できない' do
      @menu.sokuseki_tue_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki tue must be other than 1')
    end
    it '水曜のメニューが1だと登録できない' do
      @menu.sokuseki_wed_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki wed must be other than 1')
    end
    it '木曜のメニューが1だと登録できない' do
      @menu.sokuseki_thu_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki thu must be other than 1')
    end
    it '金曜のメニューが1だと登録できない' do
      @menu.sokuseki_fri_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki fri must be other than 1')
    end
    it '土曜のメニューが1だと登録できない' do
      @menu.sokuseki_sat_id = 1
      @menu.valid?
      expect(@menu.errors.full_messages).to include('Sokuseki sat must be other than 1')
    end
  end
end
