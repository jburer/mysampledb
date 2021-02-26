# mySampleDB

The thrid part of a three part app: The Data.

Designed to give me a platform for explaining and applying security and
privacy principals.

For more info on this effort check out my blog: <a href="http://jburer.wordpress.com" target="_blank">http://jburer.wordpress.com</a>

## The Data

This app simply segements the data for easier viewing, and allows you to dive into each entity independently.
The goal is to make the presentation of the data a little more managable.

The corresponding API and data are here: <a href="https://github.com/jburer/nistapi" target="_blank">https://github.com/jburer/nistapi</a>.  
<i>NOTE: This app is hardcoded to look for the API on port 3000</i>

Current build only has FIPS 200. I will add more data as I tackle the various docs.

## Architecture

This is pretty straightforward Vue app that points to the required API.

<img src="./images/nistapp.gif" alt="nistapp">

It is designed to be run inside a Docker container, but can be run as a node app as well.

## Docker setup

Clone the repository and move to the <code>mysampledb<code> directory.

```
docker build -t <whatever>/nistapp .
docker run -d -p 8080:80 --name nistapp <whatever>/nistapp
```

This will make the app available on

```
http://localhost:8080
```
