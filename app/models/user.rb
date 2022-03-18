class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  validates :profile, presence: true

  with_options presence: true, numericality: { other_than: 1 , message: "can't be blank"} do
    validates :grade_id, :major_id
  end

  has_many :books

end
