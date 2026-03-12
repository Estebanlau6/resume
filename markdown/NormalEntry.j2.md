## ((* if entry.url *))[<<entry.name>>](<<entry.url>>)((* else *))<<entry.name>>((* endif *))

((* if entry.date_string *))- <<entry.date_string>>
((* endif *))
((* if entry.location *))- <<entry.location>>
((* endif *))
((* for item in entry.highlights *))
- <<item>>
((* endfor *))
