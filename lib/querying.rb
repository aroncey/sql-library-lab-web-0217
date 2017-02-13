def select_books_titles_and_years_in_first_series_order_by_year
"select books.title, books.year from books inner join series on books.series_id = series.id where series.id = 1 order by books.year ASC"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto from characters ORDER BY LENGTH(characters.motto) DESC limit 1"
end

def select_value_and_count_of_most_prolific_species
"SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from authors inner join series on authors.id = series.author_id inner join subgenres on series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "select series.title from series inner join characters on series.id = characters.series_id where characters.species = 'human' limit 1"
end

def select_character_names_and_number_of_books_they_are_in
"SELECT characters.name, COUNT(*) as book_count from character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count DESC"
end
