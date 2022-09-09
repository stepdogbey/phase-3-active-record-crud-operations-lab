class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find_by(id: id)
    end
    
    def self.find_movie_with_attributes(arg)
        Movie.find_by(arg)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
        # .order(release_date: :desc)
    end

    def update_with_attributes(update_details)
        update(update_details)
        
    end

    def self.update_all_titles(title_update)
        Movie.update(:all, title: title_update)
        
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
        
    end

    def self.delete_all_movies
        # 5.times do |i|
        # Movie.create(title: "Movie_#{i}")
        # end
        # Movie.delete_all
        Movie.destroy_all
    end

end