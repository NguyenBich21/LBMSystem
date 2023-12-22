class Language < ApplicationRecord
    validates_presence_of :language_id, :language
    validates_uniqueness_of :language_id, :language
    has_many :books
end
