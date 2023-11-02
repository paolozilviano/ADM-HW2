import pandas as pd
import json
series = pd.read_json('C:/Users/utente/Desktop/series.json', lines=True)
total_books_count = list()
for i in series['works']:
	count = 0
	for j in i:
		count += int(j['books_count'])
	total_books_count.append(count)
series['total_books_count'] = total_books_count
sorted_by = series.sort_values(by = 'total_books_count', ascending = False)
top_5 = sorted_by.head(5)
print(top_5[['id','title','total_books_count']])