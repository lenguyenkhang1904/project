
CREATE TABLE IF NOT EXISTS public.area
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    commune character varying(255) COLLATE pg_catalog."default",
    district character varying(255) COLLATE pg_catalog."default",
    nation character varying(255) COLLATE pg_catalog."default",
    provincial_level character varying(255) COLLATE pg_catalog."default",
    state character varying(255) COLLATE pg_catalog."default",
    x_rel_coo character varying(255) COLLATE pg_catalog."default",
    y_rel_coo character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT area_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.area
    OWNER to postgres;