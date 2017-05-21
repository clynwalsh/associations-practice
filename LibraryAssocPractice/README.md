== README

First, run:

* bundle install

To set up the database, run:

* bundle exec rake db:schema:load
* bundle exec rake db:seed

You SHOULD be able to run:

* bundle exec annotate

This is a practice assessment for a/A Assessment 03!
It is book-themed, because I like books!

The actual assessment will be 45 minutes long; this one has 11 more specs
than the official practice assessment, so I think if you can finish it in under
45 that seems like good shape.

There are all kinds of belongs_to, has_many, has_one, and has_many_through
associations.  Be sure to look at the specs!

Books are written by authors, and are sold to publishers in book deals.
Then they go to live in libraries, where borrowers take them out and read them.
Sometimes they are reviewed by reviewers!

If you find something wrong with the test, please let me know @clynwalsh on slack.
