CREATE SCHEMA IF NOT EXISTS files;
CREATE TABLE  files.test_table (
    coltest varchar(20)
);



-- CREATE TABLE IF NOT EXISTS file (
--     multihash VARCHAR(255), -- https://github.com/multiformats/multihash
--     provenance VARCHAR(255),
--     filepath varchar(255) NOT NULL,
--     date_time datetime(6) NOT NULL,
--     last_processed datetime(6) NOT NULL,
--     proc_counter SMALLINT UNSIGNED DEFAULT 0,  -- just to help w/ debugging
--     n_bytes INT UNSIGNED,  -- filesize in bytes
--
--     -- product_id int(11) NOT NULL,
--     -- INDEX (product_id),
--     -- FOREIGN KEY (product_id) REFERENCES product(id),
--     --
--     -- area_id int(11) NOT NULL,
--     -- INDEX (area_id),
--     -- FOREIGN KEY (area_id) REFERENCES area(id),
--     --
--     -- status_id tinyint(1),
--     -- INDEX (status_id),
--     -- FOREIGN KEY (status_id) REFERENCES status(id),
--     --
--     -- path_format_id int(11),
--     -- INDEX (path_format_id),
--     -- FOREIGN KEY (path_format_id) REFERENCES path_format(id),
--     --
--     -- CONSTRAINT product_constr UNIQUE(filepath,product_id,area_id,date_time)
-- );
