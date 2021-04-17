# frozen_string_literal: true

require 'pg'
require 'pry'
require 'active_record'
require 'faker'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'testdb2'
)

ActiveRecord::Schema.define do
  create_table :users, if_not_exists: true do |t|
    t.string :name
    t.timestamps null: false
  end
  create_table :videos, if_not_exists: true do |t|
    t.string :name
    t.timestamps null: false
  end
  create_table :video_watching_histories, if_not_exists: true do |t|
    t.references :user
    t.references :video
    t.datetime :start_time
    t.datetime :end_time
    t.timestamps null: false
  end
end

class User < ActiveRecord::Base
  has_many :video_watching_histories
end

class Video < ActiveRecord::Base
end

class VideoWatchingHistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :video
end

start_at = Time.now
user_size = 20_000
users = user_size.times.map do
  {
    name: Faker::Name.first_name,
    created_at: Time.now,
    updated_at: Time.now
  }
end
User.insert_all(users)
puts "Users x #{user_size}: Took #{Time.now - start_at}s"

start_at = Time.now
video_size = 10_000
videos = video_size.times.map do
  {
    name: Faker::Movie.title,
    created_at: Time.now,
    updated_at: Time.now
  }
end
Video.insert_all(videos)
puts "Video x #{video_size}: Took #{Time.now - start_at}s"

start_at = Time.now
vwh_size = 200_000
vwh_size.times.each do
  uid = 1 + (rand * user_size).round
  vid = 1 + (rand * video_size).round
  t = Time.now - (rand * 4000).to_i.seconds
  t2 = t + (3000 * 1.second + (rand * 3600).to_i.seconds)
  VideoWatchingHistory.create!(user_id: uid, video_id: vid, start_time: t, end_time: t2)
end

puts "VideoWatchingHistory x #{vwh_size}: Took #{Time.now - start_at}s"
puts 'Done.'
