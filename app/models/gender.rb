class Gender < ActiveHash::Base
  self.data = [
    { id: 1, name: '性別を選んで下さい'},
    { id: 2, name: 'レディース'},
    { id: 3, name: 'メンズ'}
  ]

  include ActiveHash::Associations
  has_many :hairstyles

end