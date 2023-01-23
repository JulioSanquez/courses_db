CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "phone" varchar,
  "age" int
);

CREATE TABLE "teachers" (
  "id" serial PRIMARY KEY,
  "first_name" varchar NOT NULL,
  "last_name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "phone" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "users_in_courses" (
  "id" serial PRIMARY KEY,
  "id_user" int NOT NULL,
  "id_course" int NOT NULL
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "id_teacher" int NOT NULL,
  "id_level" int NOT NULL,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "id" serial PRIMARY KEY,
  "id_course" int NOT NULL,
  "title" varchar NOT NULL,
  "duration" time NOT NULL,
  "video_url" varchar NOT NULL,
  "portada_url" varchar NOT NULL
);

CREATE TABLE "categories_in_courses" (
  "id" serial PRIMARY KEY,
  "id_category" int NOT NULL,
  "id_course" int NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "levels" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "course_videos" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "users_in_courses" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "users_in_courses" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_teacher") REFERENCES "teachers" ("id");

ALTER TABLE "categories_in_courses" ADD FOREIGN KEY ("id_course") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_level") REFERENCES "levels" ("id");

ALTER TABLE "categories_in_courses" ADD FOREIGN KEY ("id_category") REFERENCES "courses" ("id");
