def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY(books.year) ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.series_id) from characters group by(characters.series_id) limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON series.id = characters.series_id GROUP BY series.id ORDER BY count(series.id) DESC limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) from characters INNER JOIN character_books ON character_books.character_id = characters.id GROUP BY character_books.character_id ORDER BY count(character_books.book_id) DESC, characters.name ASC;"
end
