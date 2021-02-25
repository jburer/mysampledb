FROM mongo

COPY data/db.json /db.json
CMD mongoimport --host mongodb --db mysampledb --collection shindigs --type json --file /db.json --jsonArray