# Schoolist

Schoolist is a sample rails-api application that parses data from a csv, stores it into a database, and serves an xml and json api.

The branches show the progression of the app:

* `parser_completed` shows how to implement a parser class that will process the information from the csv.
* `counties_controller` shows the api for the counties data.
* `schools_controller` shows the api for the schools data. This is the final branch.

To populate the data, you need to download the csv [here](https://health.data.ny.gov/api/views/es3k-2aus/rows.csv?accessType=DOWNLOAD), and store it into the `public` folder.

After running your migrations, run `rails runner "SchoolWeightParser.new.start"`.
