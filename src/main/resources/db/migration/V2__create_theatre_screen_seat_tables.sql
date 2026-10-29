CREATE TABLE theatre (
    id          BIGSERIAL PRIMARY KEY,
    name        VARCHAR(200) NOT NULL,
    city        VARCHAR(100) NOT NULL,
    address     VARCHAR(500),
    created_at  TIMESTAMP    NOT NULL DEFAULT now()
);

CREATE TABLE screen (
    id          BIGSERIAL PRIMARY KEY,
    theatre_id  BIGINT       NOT NULL REFERENCES theatre(id),
    name        VARCHAR(50)  NOT NULL,
    created_at  TIMESTAMP    NOT NULL DEFAULT now(),
    UNIQUE (theatre_id, name)
);

CREATE TABLE seat (
    id           BIGSERIAL PRIMARY KEY,
    screen_id    BIGINT      NOT NULL REFERENCES screen(id),
    row_label    VARCHAR(5)  NOT NULL,
    seat_number  INT         NOT NULL,
    seat_type    VARCHAR(20) NOT NULL,
    UNIQUE (screen_id, row_label, seat_number)
);