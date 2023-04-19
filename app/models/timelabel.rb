class Timelabel < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '出勤後' },
    { id: 3, name: '退勤前' },
    { id: 4, name: '午前業務' },
    { id: 5, name: '午後業務' }
  ]
  include ActiveHash::Associations
  has_many :projects
  has_many :tasks

end
