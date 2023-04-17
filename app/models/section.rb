class Section < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '外務' },
    { id: 3, name: '内務' },
    { id: 4, name: 'その他'}
  ]
  include ActiveHash::Associations
  has_many :projects
  
end
