CREATE TABLE business
(bid BIGINT,
business_id VARCHAR(255),
name VARCHAR(255),
full_address VARCHAR(255),
city VARCHAR(255),
latitude VARCHAR(255),
longitude VARCHAR(255),
review_count BIGINT,
is_open BIGINT,
rating DOUBLE,
state VARCHAR(255));
CREATE TABLE category
(id BIGINT,
business_id VARCHAR(255),
category_name VARCHAR(255));
CREATE TABLE user
(uid BIGINT,
user_id VARCHAR(255),
name VARCHAR(255));
CREATE TABLE checkin
(cid BIGINT,
business_id VARCHAR(255),
count BIGINT,
day VARCHAR(255));
CREATE TABLE neighbourhood
(id BIGINT,
business_id VARCHAR(255),
neighbourhood_name VARCHAR(255));
CREATE TABLE review
(rid BIGINT,
business_id VARCHAR(255),
user_id VARCHAR(255),
rating DOUBLE,
text VARCHAR(255),
year BIGINT,
month VARCHAR(255));
CREATE TABLE tip
(tip_id BIGINT,
business_id VARCHAR(255),
text VARCHAR(255),
user_id VARCHAR(255),
likes BIGINT,
year BIGINT,
month VARCHAR(255));
