class Menu < ActiveHash::Base
  self.data = [
    { id: 1, name: 'メニューを選んで下さい'},
    { id: 2, name: 'カット(1時間)'},
    { id: 3, name: 'カラー(2時間)'},
    { id: 4, name: 'ダブルカラー(2.5時間)'},
    { id: 5, name: '縮毛矯正(3時間)'}
  ]

  include ActiveHash::Associations
  has_many :reservations

end