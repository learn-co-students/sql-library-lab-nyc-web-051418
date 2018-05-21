def select_books_titles_and_years_in_first_series_order_by_year
    "SELECT books.title, books.year
    FROM books
    INNER JOIN series
    ON books.series_id = series.id
    WHERE series.id = 1
    ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
  FROM characters
  WHERE length(characters.motto) = (SELECT MAX(length(characters.motto)) FROM characters)"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) AS species_count
  FROM characters
  GROUP BY characters.species
  ORDER BY species_count
  DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON series.id = characters.series_id
  GROUP BY series.title
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.name) AS count
  FROM character_books
  INNER JOIN characters
  ON character_books.character_id = characters.id
  INNER JOIN books
  ON books.id = character_books.book_id
  GROUP BY characters.name
  ORDER BY count DESC"
end
