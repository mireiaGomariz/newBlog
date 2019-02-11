class Articulo < ApplicationRecord
  belongs_to :autor
  has_many :comentarios, dependent: :destroy
  validates :titulo, presence: {message: "No puede estar vacio"}
  validates :contenido, presence: {message: "no puede estar vacio"}, length: {minimum: 50, message: "Es demasiado corto"}
end
