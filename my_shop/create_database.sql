CREATE TABLE users (
    id bigint UNSIGNED NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    email_verified_at timestamp NULL DEFAULT NULL,
    password varchar(255) NOT NULL,
    remember_token varchar(100) DEFAULT NULL,
    created_at timestamp NULL DEFAULT NULL,
    updated_at timestamp NULL DEFAULT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY users_email_unique (email);

ALTER TABLE users
    MODIFY id bigint UNSIGNED NOT NULL AUTO_INCREMENT;

CREATE TABLE items (
    id bigint UNSIGNED NOT NULL,
    code varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    price int NOT NULL,
    amount int NOT NULL,
    created_at timestamp NULL DEFAULT NULL,
    updated_at timestamp NULL DEFAULT NULL
);

ALTER TABLE items 
    ADD PRIMARY KEY (id),
    ADD UNIQUE KEY items_code_unique (code);

ALTER TABLE items 
    MODIFY id bigint UNSIGNED NOT NULL AUTO_INCREMENT;

CREATE TABLE user_items (
    id bigint UNSIGNED NOT NULL,
    user_id bigint UNSIGNED NOT NULL,
    item_id bigint UNSIGNED NOT NULL,
    price int NOT NULL,
    amount int NOT NULL,
    total_price int NOT NULL,
    created_at timestamp NULL DEFAULT NULL,
    updated_at timestamp NULL DEFAULT NULL
);

ALTER TABLE user_items ADD PRIMARY KEY (id);

ALTER TABLE user_items
  MODIFY id bigint UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE user_items
  ADD CONSTRAINT user_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES items (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT user_items_user_id_fkey FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE RESTRICT ON UPDATE RESTRICT;