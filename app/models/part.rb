class Part < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '肩' },
    { id: 3, name: '腕' },
    { id: 4, name: '背筋' },
    { id: 5, name: '腹筋' },
    { id: 6, name: '足' }
  ]

  include ActiveHash::Associations
  has_many :muscles
end