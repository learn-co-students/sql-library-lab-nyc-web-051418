def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, year from books inner join series on books.series_id = series.id where series_id = 1 order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by length(motto) DESC limit 1"
end

def select_value_and_count_of_most_prolific_species
  "select species, count(id) from characters group by species order by count(id) DESC limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series inner join authors on series.author_id = authors.id inner join subgenres on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select series.title from series inner join characters on characters.series_id = series.id group by characters.id order by count(characters.id) limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(books.id) from character_books inner join characters on characters.id = character_books.character_id inner join books on character_books.book_id = books.id group by characters.name order by count(books.id) DESC"
end
