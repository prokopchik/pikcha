class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  has_many   :addresses
  belongs_to :currency, required: false
  has_many   :orders


  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing_user.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  enum locale: [:en, :ru]
  def admin?
    role.name == "Admin"
  end
end
