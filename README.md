# Postgres Materialized View Demo

## Setup

1. Have postgresql installed in your machine
2. Run scripts

  ```bash
  createdb your_database
  psql -f setup_scripts/00_setup.sql
  psql -d your_database
  ```

  If you want more seed data, you can run ruby script `bundle exec ruby dev.rb` for 20000 users, 10000 videos, 200000 video_watching_histories;

3. List tables with `\d`
4. Paste in each `.sql` to see result and check difference


## Document/References

1. [Slides](https://slides.com/harryyuan/materialized-view)
2. [Medium](https://harryuan-65.medium.com/%E6%8F%90%E5%8D%87%E6%9C%8D%E5%8B%99%E6%95%88%E8%83%BD-%E6%B8%9B%E8%BC%95db%E8%B2%A0%E6%93%94-2-materialized-view-d6addb870c51)
