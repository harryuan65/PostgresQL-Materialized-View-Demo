# Postgres Materialized View Demo

## Setup

1. Have postgresql installed in your maching
2. Run scripts

  ```bash
  createdb your_database
  psql -f setup_scripts/00_setup.sql
  psql -d your_database
  ```

  If you want more seed data, you can run ruby script `bundle exec ruby dev.rb` for 20000 users, 10000 videos, 200000 video_watching_histories;

3. List tables with `\d`
4. Paste in 01_query.sql