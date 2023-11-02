import pandas as pd
import json

# Leggi il file JSON in un DataFrame
series = pd.read_json('C:/Users/utente/Desktop/series.json', lines=True)

# Calcola il conteggio totale dei libri per ciascuna serie utilizzando una list comprehension
series['total_books_count'] = [sum(int(work['books_count']) for work in works) for works in series['works']]

# Ordina il DataFrame in base al conteggio totale dei libri e prendi i primi 5
top_5 = series.sort_values(by = 'total_books_count', ascending = False).head(5)

# Seleziona solo le colonne desiderate
print(top_5[['id', 'title', 'total_books_count']])


