class Hairstyle < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :gender
  belongs_to_active_hash :hairlength
  belongs_to_active_hash :haircolor

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :hairstylename
    validates :detail
  end

  with_options numericality: { other_than: 1 } do
    validates :gender_id
    validates :hairlength_id
    validates :haircolor_id
  end
end