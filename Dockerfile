FROM mongo:latest
COPY data/db.json /db.json
CMD mongoimport --host localhost:27017 --db mysimpledb --collection shindigs --type json --file /db.json --jsonArray