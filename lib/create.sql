CREATE TABLE projects
    (id INTEGER PRIMARY KEY,
    title TEXT,
    category TEXT,
    funding_goal INTEGER,
    start_date text,
    end_date text);

CREATE TABLE users
    (id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
    );
    
CREATE TABLE pledges
    (id INTEGER PRIMARY KEY,
      amount INTEGER,
      user_id TEXT,
      project_id TEXT
      );