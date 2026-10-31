ALTER TABLE seat
    ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT now();

CREATE TABLE movie_show (
    id          BIGSERIAL PRIMARY KEY,
    movie_id    BIGINT    NOT NULL REFERENCES movie(id),
    screen_id   BIGINT    NOT NULL REFERENCES screen(id),
    start_time  TIMESTAMP NOT NULL,
    end_time    TIMESTAMP NOT NULL,
    created_at  TIMESTAMP NOT NULL DEFAULT now(),
    UNIQUE (screen_id, start_time)
);