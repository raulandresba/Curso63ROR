class Usuario < ApplicationRecord
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :nombre, :apellido, :email, presence: true, length: { in: 2..20 }
    validates_numericality_of :edad, only_integer: true, greater_than: 10, less_than: 150
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  belongs_to :rol

end
