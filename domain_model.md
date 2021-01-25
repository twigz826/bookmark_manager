User Stories
--------------
```
As a user
So that I can see a list of pages I've bookmarked
I would like the page to show a list of bookmarks
```

[Diagram for first user story](https://docs.google.com/document/d/1k1xpbtsubpFRwNrn_ZggF5RIv_QdLAjiu8jgIJi6qv4/edit)


### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 9292
```

To view bookmarks, navigate to `localhost:9292/`
To view bookmarks, navigate to `localhost:9292/`.


Nouns
-----
Bookmarks
Pages

Actions
---------
show_bookmarks

|Noun|Property or owner of property?|
|---------|------------|
|Bookmarks
|Pages


|Actions|Action owner|
|---------|------------|

|Actions|Property it reads or changes|
|---------|------------|

|Class|Properties(instance variables)|Actions(methods)|
|---------|------------|-----------|
