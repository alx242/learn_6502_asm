# Various hints from around the net

Du borde använda labels istället för att ange minnesadresser rakt
av. Det är så himla mycket lättare att läsa koden då. De flesta
assemblatorer har något sätt att markera en sektion som inte genererar
någon data utan bara allokerar plats. Kolla i dokumentationen för
assemblern. I Dasm som jag använder kan man skriva sist i sitt program
något i stil med detta för att reservera plats för minne:

section bss.u
counter:
ds.b 1 ; reservera en byte för en räknare
address:
ds.b 2 ; reservera två bytes för en adress

Då kan man använda "counter" och "address" istället för två adresser
utan att de sparas med i programmet.