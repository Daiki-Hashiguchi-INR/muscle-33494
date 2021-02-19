require 'rails_helper'

RSpec.describe Muscle, type: :model do
  before do 
    @muscle = FactoryBot.build(:muscle)
  end

  describe '新規トレーニング投稿' do
    context '投稿できる時' do
      it '全ての項目を適切に入力すると登録できる' do
        expect(@muscle).to be_valid
      end
    end

    context '投稿できない時' do
      it '画像が空だと登録できない' do
        @muscle.image = nil
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Image can't be blank"
      end

      it 'タイトルが空だと登録できない' do
        @muscle.title = ""
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Title can't be blank"
      end

      it '説明が空だと登録できない' do
        @muscle.explain = ""
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Explain can't be blank"
      end

      it '部位選択が空欄だと登録できない' do
        @muscle.part_id = 1
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Part Select"
      end

      it '難易度選択が空欄だと登録できない' do
        @muscle.difficult_id = 1
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Difficult Select"
      end

      it '日付が空だと登録できない' do
        @muscle.daytime = ""
        @muscle.valid?
        expect(@muscle.errors.full_messages).to include "Daytime can't be blank"
      end
    end
  end
end
