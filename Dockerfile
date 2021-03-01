FROM mongo:latest
COPY data/db.json /db.json
CMD mongoimport --host mongodb --db mysimpledb --collection shindigs --type json --file /db.json --jsonArray