-- public.image_tag_intersect definition

-- Drop table

-- DROP TABLE public.image_tag_intersect;

CREATE TABLE public.image_tag_intersect (
	id bigserial NOT NULL,
	image_id int8 NULL,
	tag_id int8 NULL,
	CONSTRAINT image_tag_pk PRIMARY KEY (id),
	CONSTRAINT image_tag_intersect_images_fk FOREIGN KEY (id) REFERENCES public.images(id),
	CONSTRAINT image_tag_intersect_tags_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id)
);