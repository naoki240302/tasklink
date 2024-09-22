class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :belong_to

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  validates :name, presence: true
  validates :entry, presence: true, format: { with: /\A[0-9]+\z/, message: 'は半角数字のみを入力してください' }
  validates :supervisor, presence: true

  validates :belong_to_id, numericality: { other_than: 1}
end
