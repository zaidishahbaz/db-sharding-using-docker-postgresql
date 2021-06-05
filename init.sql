-- Will create a table whenever we spin up a new docker container
CREATE TABLE URL_TABLE
(
  id serial NOT NULL PRIMARY KEY,
  URL text,
  URL_ID character(5)
)