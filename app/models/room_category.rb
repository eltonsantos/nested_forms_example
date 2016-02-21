class RoomCategory < ActiveRecord::Base
  belongs_to :hotel

  validates :name, presence: true
  validates :hotel_id, presence: true
  validates :hotel, presence: true, if: -> { hotel_id.present? }

  def to_s
    name
  end

end
