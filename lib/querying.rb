def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books inner join series on books.series_id = series.id  where series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by motto limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(species) from characters group by species  order by count(species) desc limit 1;"
end

def select_name_and_series_subgenres_of_authors

  "select authors.name, subgenres.name from series inner join authors on authors.id = series.author_id inner join subgenres on subgenres.id = series.subgenre_id"
  #select authors.name, subgenres.name from series inner join authors on series.author_id = author.id inner join subgenres on series.subgenre_id = subgenres.id
end

def select_series_title_with_most_human_characters
 "select   title from characters inner join series on series.id = characters.series_id  limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(character_books.book_id) from characters INNER JOIN character_books ON character_books.character_id = characters.id GROUP BY character_books.character_id ORDER BY count(character_books.book_id) DESC, characters.name ASC;"
end
