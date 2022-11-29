class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_characters
        self.characters.all.map do |character|
            character
        end
    end

    def list_shows
        self.shows.all.map do |show|
            show[:name]
        end
    end

    def list_roles
        self.list_characters.map do |character|
            "#{character[:name]} - #{character.show[:name]}"
        end
    end

end