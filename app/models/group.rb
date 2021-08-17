class Group < ApplicationRecord
    has_many  :concerts, dependent: :destroy
    enum gender: { Hombres: 0, Mujeres: 1, Banda: 3 }
    accepts_nested_attributes_for :concerts
    def to_s
        "#{name}"
    end
    def concert_count
        self.concerts.count
    end
    def concert_participant
        self.concerts
    end

end