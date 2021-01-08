class Playlist < ApplicationRecord
    has_many :songs

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end
end
