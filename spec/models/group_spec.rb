require 'rails_helper'

RSpec.describe Group, type: :model do
  describe '要件の作成ページ' do
    before do
      @group = FactoryBot.build(:group)
    end

    context '内容に問題がない場合' do
     it '全ての情報があれば登録できる' do
        expect(@group).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'group_nameが空なら登録できないこと' do
        @group.group_name = ''
        @group.valid?
        expect(@group.errors.full_messages).to include("Group name can't be blank")
      end
    end
  end
end
