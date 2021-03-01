# mySimpleDB

The thrid part of a three part app: The Datastore.

- _The corresponding **API** is here: (https://github.com/jburer/mysampleapi)._
- _The corresponding **app** is here: (https://github.com/jburer/mysampleapp)._

## thePurpose

Designed to give me a "clean" system for explaining and applying security and
privacy principals, I created a simple app, API, and datastore where the
only security and privacy applied is that which is inherent in the frameworks, software,
and services that I'm using to build the system.

As I apply security and privacy, I will branch this code and explain what's being done.

For more info on this effort check out my blog: (http://jburer.wordpress.com)

## theDatastore

The `mysimpledb` database is a JSON document inside MongoDB. It's loaded with data
into the `shindigs` collection when composed from
`./data/db.json`.

The database is exposed on port `:27017`.

## theArchitecture

This is pretty straightforward DB setup that sits independently from the API and app.

![mySimpleDB](/images/mySimpleDB.gif)

It is designed to be run inside a Docker container.

## theDockerSetup

Clone the repository and move to the `mysimpledb` directory.

```
docker-compose up -d
```

This will make the datastore available at the following URI:

```
mongodb://localhost:27017
```
