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
    
CREATE TABLE IF NOT EXISTS public.task_place_address
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    add_street character varying(255) COLLATE pg_catalog."default",
    add_street_note character varying(255) COLLATE pg_catalog."default",
    exact_add_number character varying(255) COLLATE pg_catalog."default",
    exactxcoo character varying(255) COLLATE pg_catalog."default",
    exactycoo character varying(255) COLLATE pg_catalog."default",
    rel_add_number character varying(255) COLLATE pg_catalog."default",
    relxcoo character varying(255) COLLATE pg_catalog."default",
    relycoo character varying(255) COLLATE pg_catalog."default",
    area_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT task_place_address_pkey PRIMARY KEY (id),
    CONSTRAINT fk6qfuogcj01fohfn8nw8y364lk FOREIGN KEY (area_id)
        REFERENCES public.area (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.task_place_address
    OWNER to postgres;    

CREATE TABLE IF NOT EXISTS public.tutor
(
    id bigint NOT NULL,
    birth_date date,
    birth_year character varying(255) COLLATE pg_catalog."default",
    emails character varying(255) COLLATE pg_catalog."default",
    english_full_name character varying(255) COLLATE pg_catalog."default",
    fbs character varying(255) COLLATE pg_catalog."default",
    full_name character varying(255) COLLATE pg_catalog."default",
    gender character varying(255) COLLATE pg_catalog."default",
    id_card_issued_on character varying(255) COLLATE pg_catalog."default",
    id_card_number character varying(255) COLLATE pg_catalog."default",
    phones character varying(255) COLLATE pg_catalog."default",
    registered_status character varying(255) COLLATE pg_catalog."default",
    zaloes character varying(255) COLLATE pg_catalog."default",
    place_of_birth character varying(255) COLLATE pg_catalog."default",
    tutor_address character varying(255) COLLATE pg_catalog."default",
    x_rel_coo character varying(255) COLLATE pg_catalog."default",
    y_rel_coo character varying(255) COLLATE pg_catalog."default",
    tutor_address_area_id character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tutor_pkey PRIMARY KEY (id),
    CONSTRAINT fk2fbicl289bussiypt9a5390te FOREIGN KEY (tutor_address_area_id)
        REFERENCES public.area (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tutor
    OWNER to postgres;
    

CREATE TABLE IF NOT EXISTS public.tutor_area
(
	id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    tutor_id bigint NOT NULL,
    tutor_area_id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tutor_area_rel_pkey PRIMARY KEY (tutor_id, tutor_area_id),
    CONSTRAINT fk8ylbyklnqetcm3lu22ega00ei FOREIGN KEY (tutor_area_id)
        REFERENCES public.area (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk9fqnt2e6tdlohw5ion8bha5o9 FOREIGN KEY (tutor_id)
        REFERENCES public.tutor (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tutor_area
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS public.register_and_learner
(
    id character varying(255) COLLATE pg_catalog."default" NOT NULL,
    created_at timestamp without time zone NOT NULL,
    created_by character varying(255) COLLATE pg_catalog."default",
    updated_at timestamp without time zone NOT NULL,
    updated_by character varying(255) COLLATE pg_catalog."default",
    birth_date date,
    birth_year character varying(255) COLLATE pg_catalog."default",
    emails character varying(255) COLLATE pg_catalog."default",
    english_full_name character varying(255) COLLATE pg_catalog."default",
    fbs character varying(255) COLLATE pg_catalog."default",
    full_name character varying(255) COLLATE pg_catalog."default",
    gender character varying(255) COLLATE pg_catalog."default",
    id_card_issued_on character varying(255) COLLATE pg_catalog."default",
    id_card_number character varying(255) COLLATE pg_catalog."default",
    phones character varying(255) COLLATE pg_catalog."default",
    registered_status character varying(255) COLLATE pg_catalog."default",
    zaloes character varying(255) COLLATE pg_catalog."default",
    avatar character varying(255) COLLATE pg_catalog."default",
    note character varying(255) COLLATE pg_catalog."default",
    vocative character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT register_and_learner_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.register_and_learner
    OWNER to postgres;