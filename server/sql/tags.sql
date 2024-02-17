-- public.tags definition

-- Drop table

-- DROP TABLE public.tags;

CREATE TABLE public.tags (
	id bigserial NOT NULL,
	tag_name varchar NULL,
	CONSTRAINT tags_pk PRIMARY KEY (id)
);
