-- add constrain
ALTER TABLE public.tutor_subject_group_maybe ADD CONSTRAINT Fk_tutor_subject_group_maybe FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.tutor_subject_group_for_sure ADD CONSTRAINT Fk_tutor_subject_group_for_sure FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.tutor_subject_group_fails ADD CONSTRAINT Fk_tutor_subject_group_fails FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.area_tutor ADD CONSTRAINT Fk_area_tutor FOREIGN KEY (area_id) REFERENCES public.area (id);
ALTER TABLE public.tutor ADD CONSTRAINT Fk_tutor_area FOREIGN KEY (tutor_address_area_id) REFERENCES public.area (id);
ALTER TABLE public.register_and_learner_address ADD CONSTRAINT Fk_register_and_learner_address FOREIGN KEY (register_and_learner_id) REFERENCES public.register_and_learner (id);
ALTER TABLE public.register_and_learner_type_user ADD CONSTRAINT Fk_register_and_learner_type_user FOREIGN KEY (register_and_learner_id) REFERENCES public.register_and_learner (id);
ALTER TABLE public.tutor_type_user ADD CONSTRAINT Fk_tutor_type_user FOREIGN KEY (tutor_id) REFERENCES public.tutor (id);
ALTER TABLE public.user_role ADD CONSTRAINT Fk_user_role FOREIGN KEY (role_id) REFERENCES public.role (id);
ALTER TABLE public.subject_group_task ADD CONSTRAINT Fk_subject_group_task FOREIGN KEY (subject_group_id) REFERENCES public.subject_group (id);
ALTER TABLE public.application ADD CONSTRAINT Fk_application FOREIGN KEY (tutor_id) REFERENCES public.tutor (id);
ALTER TABLE public.registration ADD CONSTRAINT Fk_registration FOREIGN KEY (register_and_learner_id) REFERENCES public.register_and_learner (id);
ALTER TABLE public.task_place_address ADD CONSTRAINT Fk_task_place_address FOREIGN KEY (task_id) REFERENCES public.task (id);
