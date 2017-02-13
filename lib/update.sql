UPDATE characters SET species = "Martian" where id = (SELECT MAX(ID) from characters);

SELECT species FROM characters WHERE id=(SELECT MAX(id) FROM characters)
