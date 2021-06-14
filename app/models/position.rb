class Position < ActiveHash::Base
  self.data = [
    { id: 0, name: '下記から選んでください' },
    { id: 1, name: '施設長' },
    { id: 2, name: '介護主任' },
    { id: 3, name: 'ユニットリーダー' },
    { id: 4, name: '介護士' },
    { id: 5, name: '看護師' },
    { id: 6, name: '管理栄養士' },
    { id: 7, name: '生活相談員' },
    { id: 8, name: '機能訓練士' },
    { id: 9, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users

end