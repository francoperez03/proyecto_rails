class Admin::Product < ActiveRecord::Base
  belongs_to :marca
  belongs_to :category
  has_many :users, through: :carritos

  validates :codigo , presence: {message: " no fue ingresado"} , uniqueness: {message: "ya existe"}
  validates :precio , presence: {message: " no fue ingresado"} , numericality: {message: "no es numero"}

  has_attached_file :image, styles:{ main: '300x400>', thumb:'50x50>' }
	validates_attachment :image, :presence => true,
    :content_type => { :content_type => "image/jpeg" },
    :size => { :in => 0..2000.kilobytes }
end
