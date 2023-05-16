-- add constrain
ALTER TABLE public.tutor_subject_group_maybe ADD CONSTRAINT Fk_tutor_subject_group_maybe FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.tutor_subject_group_for_sure ADD CONSTRAINT Fk_tutor_subject_group_for_sure FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.area_tutor ADD CONSTRAINT Fk_area_tutor FOREIGN KEY (area_id) REFERENCES public.area (id);
ALTER TABLE public.tutor ADD CONSTRAINT Fk_tutor_area FOREIGN KEY (tutor_address_area_id) REFERENCES public.area (id);
