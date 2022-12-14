
DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
	`name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`value` JSON NOT NULL,
	`updated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`name`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `listings`;

CREATE TABLE `listings` (
	`id` INT(10) UNSIGNED NOT NULL,
	`invalid` TINYINT(3) NOT NULL,
	`etag` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`json` JSON NOT NULL,
	`sync_cnt` INT(10) UNSIGNED NOT NULL,
	`event_cnt` INT(10) UNSIGNED NOT NULL,
	`check_cnt` INT(10) UNSIGNED NOT NULL,
	`sync_ts` BIGINT(19) NULL DEFAULT NULL,
	`event_ts` BIGINT(19) NULL DEFAULT NULL,
	`check_ts` BIGINT(19) NOT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `idx_invalid` (`invalid`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
