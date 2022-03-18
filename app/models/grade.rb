class Grade < ActiveHash::Base
  self.data = [
    { id:1, name: "--"},
    { id:2, name: "First Year"},
    { id:3, name: "Second Year"},
    { id:4, name: "Third Year"},
    { id:5, name: "Fourth Year"},
    { id:6, name: "Master 1"},
    { id:7, name: "Master 2"}
  ]
  include ActiveHash::Associations
  has_many  :users

  end