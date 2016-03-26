class Admin::Product < ActiveRecord::Base
  belongs_to :admin_marca
  belongs_to :admin_category
  has_many :users, through: :carritos

  validates :codigo , presence: {message: " no fue ingresado"} , uniqueness: {message: "ya existe"}
  validates :precio , presence: {message: " no fue ingresado"} , numericality: {message: "debe ser un numero"}

  has_attached_file :image, styles: { medium: '300x400>', thumb: '60x60>' }
	validates_attachment :image, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :in => 0..2000.kilobytes }
end
