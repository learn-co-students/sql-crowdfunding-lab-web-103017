CREATE TABLE projects(
  id INTEGER PRIMARY KEY,
  title VARCHAR,
  category VARCHAR,
  start_date DATE,
  funding_goal INTEGER,
  end_date DATE
);

CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges(
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);
