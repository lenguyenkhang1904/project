-- tutor
ALTER TABLE IF EXISTS public.tutor ADD COLUMN created_at timestamp without time zone NOT NULL;
ALTER TABLE IF EXISTS public.tutor ADD COLUMN updated_at timestamp without time zone NOT NULL;
