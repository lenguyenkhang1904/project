-- tutor
ALTER TABLE IF EXISTS public.tutor ADD COLUMN created_at timestamp without time zone NOT NULL;
ALTER TABLE IF EXISTS public.tutor ADD COLUMN updated_at timestamp without time zone NOT NULL;
ALTER TABLE IF EXISTS public.tutor ADD COLUMN public_imgs character varying(255);
ALTER TABLE IF EXISTS public.tutor ADD COLUMN private_imgs character varying(255);
ALTER TABLE IF EXISTS public.tutor ADD COLUMN exp_notices character varying(255);
