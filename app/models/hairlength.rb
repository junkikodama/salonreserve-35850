class Hairlength < ActiveHash::Base
  self.data = [
    { id: 1, name: '髪の長さを選んで下さい'},
    { id: 2, name: 'ベリーショート'},
    { id: 3, name: 'ショート'},
    { id: 4, name: 'ショートミディアム'},
    { id: 5, name: 'ミディアム'},
    { id: 6, name: 'ロング'},
    { id: 7, name: 'ボウズ'}
  ]

  include ActiveHash::Associations
  has_many :hairstyles

end