class Quality < ActiveHash::Base
  self.data = [
    { id: 1, name: "--"},
    { id: 2, name: "New"},
    { id: 3, name: "Almost new"},
    { id: 4, name: "Being used but good"},
    { id: 5, name: "Not bad"},
    { id: 6, name: "Not good"},
    { id: 7, name: "Bad"}
  ]
  include ActiveHash::Associations
  has_many :books

end