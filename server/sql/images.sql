
-- public.images definition

-- Drop table

-- DROP TABLE public.images;

CREATE TABLE public.images (
	id bigserial NOT NULL,
	file_name varchar NULL,
	file_hash varchar NULL,
	title varchar NULL,
	collection varchar NULL,
	CONSTRAINT images_pk PRIMARY KEY (id)
);