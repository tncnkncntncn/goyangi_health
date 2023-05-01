class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "は英字と数字を含む６文字以上の半角英数字で入力してください" }
  validates :nickname,:name, format:{with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message:"全角で入力してください" }
  validates :nick_name, presence: true
  has_many :cats
  has_many :records

  
end
