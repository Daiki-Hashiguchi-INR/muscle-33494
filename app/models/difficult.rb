class Difficult < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '簡単' },
    { id: 3, name: 'やや簡単' },
    { id: 4, name: '普通' },
    { id: 5, name: 'やや難しい' },
    { id: 6, name: '難しい' }
  ]

  include ActiveHash::Associations
  has_many :muscles
end