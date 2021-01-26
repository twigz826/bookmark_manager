# bookmark_manager

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To set up the test database

```
CREATE DATABASE "bookmark_manager_test";
```

### To run the Bookmark Manager app:

```
rackup -p 9292
```

To view bookmarks, navigate to `localhost:9292/`
To view bookmarks, navigate to `localhost:9292/`.
