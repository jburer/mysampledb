# mySimpleDB

The thrid part of a three part app: The Datastore.

My three part app is designed to provide users a way to manage local events around town, or shindigs
as I call them. It provides CRUD capabilities to any user, and allows them to manage the data in the
datastore, through the API, from the UI.

- _The corresponding **app** is here: (https://github.com/jburer/mysimpleapp)._
- _The corresponding **API** is here: (https://github.com/jburer/mysimpleapi)._

## myPurpose

Designed to give me a "clean" system for explaining and applying security and
privacy principals, I created a simple app, API, and datastore where the
only security and privacy applied is that which is inherent in the frameworks, software,
and services that I'm using to build the system.

As I apply security and privacy, I will branch this code and explain what's being done.

For more info on this effort check out my blog: (http://jburer.wordpress.com)

_**PLEASE NOTE:** This is solely intended as a learning and education tool, and_
_in no way represents the full responsibilities needed for a production system. In fact_
_as designed it specifically omits certain "best practices" (e.g. input validation, test scripts, logging - all_
_those things security and privacy folks care about) so that_
_they can be added later to demonstrate its benefit._

## myDatastore

The `mysimpledb` database is a JSON document inside MongoDB. It's loaded with data
into the `shindigs` collection when composed from
`./data/db.json`.

The database is exposed on port `:27017`.

## myArchitecture

This is pretty straightforward DB setup that sits independently from the API and app.

It is designed to be run inside a Docker container.

![mySimpleDB](/images/mySimpleDB.gif)

## myDockerSetup

Create the `mysimplenetwork` network. _**PLEASE NOTE:** All images in this app are pre-configured to use this network by design._
_Creating the network first allows each image to be created independently._

<pre>
    docker network create mysimplenetwork
</pre>

Clone the repository and move to the `mysimpleapi` directory.

<pre>
    docker compose up -d --build --remove-orphans
</pre>

This will make the datastore available at the following URI:

<pre>
    mongodb://mongo:27017
</pre>
