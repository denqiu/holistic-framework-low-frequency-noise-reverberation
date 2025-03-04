-- https://database.guide/create-table-sqlite/ --
-- Command: sqlite3 nodes.db ".read ./scripts/<script-name>.sql" --
CREATE TABLE IF NOT EXISTS nodes (
  id INTEGER PRIMARY KEY,
  name VARCHAR(200) NOT NULL UNIQUE, -- Naming Convention: PascalCase --
  label TEXT NOT NULL,
  shape VARCHAR(100) NOT NULL DEFAULT "rectangle"
);

-- setup up/down migration in .sql, may not need programming language. Easier to reuse sql files across different dbs. --
-- if up/down is not setup, default to up. --
-- don't rollback when up errors out. This way, we don't remove error, otherwise, we make it harder for dev to solve problem. Do down on demand. --
-- or maybe down is not really necessary and could be viewed as pre-optimization. To rollback, we could migrate down version number. --

INSERT INTO nodes (name, label) VALUES ("LFNTitle", "**Holistic Framework:** Causes and Effects of Low-Frequency Noise and Reverberation");