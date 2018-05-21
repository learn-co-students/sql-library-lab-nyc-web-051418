update characters set species = "Martian" where characters.id = (select max(id) from characters) 
