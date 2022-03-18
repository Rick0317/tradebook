class Major < ActiveHash::Base
  self.data = [
    { id: 1, name: "--"},
    { id: 2, name: "Computer Science"},
    { id: 3, name: "Mathematics"},
    { id: 4, name: "Physics" },
    { id: 5, name: "Economics"},
    { id: 6, name: "Biology"}
  ]
  include ActiveHash::Associations
  has_many :users

end