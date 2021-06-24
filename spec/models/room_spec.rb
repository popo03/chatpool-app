require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'チャットページ' do
    before do
      @room = FactoryBot.build(:room)
    end

    context '内容に問題がない場合' do
      it 'すべての情報があれば登録できる' do
        expect(@room).to be_valid
      end
    end

    context '内容に問題がある場合' do
      it 'textとimageが空では保存できないこと' do
        @room.text = ''
        @room.image = nil
        @room.valid?
        expect(@room.errors.full_messages).to include("Text can't be blank")
      end

      it 'groupが紐付いていないと保存できないこと' do
        @room.group = nil
        @room.valid?
        expect(@room.errors.full_messages).to include('Group must exist')
      end

      it 'userが紐付いていないと保存できないこと' do
        @room.user = nil
        @room.valid?
        expect(@room.errors.full_messages).to include('User must exist')
      end
    end
  end
end