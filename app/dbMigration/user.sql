INSERT INTO `db_naskah`.`t_user`(`id`, `email`, `username`, `role`, `password`, `created_at`, `updated_at`) VALUES ('bd88047b-92b3-4979-ab4e-d1821e139499', 'hasan@email.com', 'Administrator', 'R01', '$2b$10$nE2JiaqVfJJTkTrFRH5GB.Kf1AxCwVDbJjoIa39nylylzD8y9vH/u', '2021-08-14 06:19:20', '2021-08-20 13:00:07');




DROP PROCEDURE IF EXISTS `create_no_agenda`;

DELIMITER //
CREATE PROCEDURE `create_no_agenda`(id_surat VARCHAR(255), status_surat VARCHAR(255))
BEGIN
	DECLARE no_inti INT(11);
    set no_inti = (SELECT no_agenda as no_agenda from t_surat_masuk order by no_agenda DESC limit 1);
    
    IF no_inti is null or no_inti= '' THEN
        set no_inti = 1;
        
    ELSE
        set no_inti = no_inti + 1;
    END IF;
		
	UPDATE `t_surat_masuk` SET `no_agenda` = no_inti, `status` = status_surat WHERE `id` = id_surat;
END //

DELIMITER ;