CREATE TABLE movie (
    id               BIGSERIAL PRIMARY KEY,
    title            VARCHAR(200) NOT NULL,
    language         VARCHAR(50)  NOT NULL,
    duration_minutes INT          NOT NULL,
    release_date     DATE,
    created_at       TIMESTAMP    NOT NULL DEFAULT now()
);