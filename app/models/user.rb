class User < ApplicationRecord
    has_many :comments
    has_many :pictures, through: :comments
    has_many :owned_pictures, class_name: "Picture", foreign_key: "owner_id"
    validates_presence_of :username
    validates_uniqueness_of :username
    validates :email, presence: true
    validates :email, uniqueness: true
    has_secure_password
    accepts_nested_attributes_for :pictures


end
