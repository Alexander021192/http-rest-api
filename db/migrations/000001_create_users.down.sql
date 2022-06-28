create table users (
    id bigserial noy null primary key,
    email varchar not null unique,
    encrypted_password varchar not null
);