CREATE DATABASE IF NOT EXISTS smart_queue;

USE smart_queue;

CREATE TABLE IF NOT EXISTS `user`(
        id BIGINT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        login VARCHAR(100) NOT NULL,
        password VARCHAR(100) NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS `company`(
        id BIGINT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        type VARCHAR(100) NOT NULL,
        description VARCHAR(1000) NOT NULL,
        latitude VARCHAR(20) NOT NULL,
        longitude VARCHAR(20) NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS `queue`(
        id BIGINT NOT NULL AUTO_INCREMENT,
        id_company BIGINT NOT NULL,
        name VARCHAR(100) NOT NULL,
        type VARCHAR(100) NOT NULL,
        description VARCHAR(1000) NOT NULL,
        creation_date TIMESTAMP NOT NULL DEFAULT '1970-01-01 00:00:01',
        beginning_date TIMESTAMP NOT NULL DEFAULT '1970-01-01 00:00:01',
        end_date TIMESTAMP NOT NULL DEFAULT '1970-01-01 00:00:01',
        PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS `user_queue`(
        id_queue BIGINT NOT NULL AUTO_INCREMENT,
        id_user BIGINT NOT NULL,
        CONSTRAINT pk_user_queue PRIMARY KEY (id_queue, id_user)
);
