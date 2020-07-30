CREATE TABLE :SCHEMA_NAME.files (
    id SERIAL NOT NULL,
    filepath varchar(255) NOT NULL,
    multihash VARCHAR(255), -- https://github.com/multiformats/multihash
    provenance VARCHAR(255),
    date_time TIMESTAMP NOT NULL,
    last_processed TIMESTAMP NOT NULL,
    proc_counter INTEGER DEFAULT 0,  -- just to help w/ debugging
    n_bytes BIGINT,  -- filesize in bytes

    product_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_name) REFERENCES :SCHEMA_NAME.products(short_name),

    area_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (area_name) REFERENCES :SCHEMA_NAME.areas(short_name),

    status VARCHAR(255),

    -- TODO: + polygon & bounding box

    CONSTRAINT product_constr UNIQUE(filepath,product_name,area_name,date_time)
);
