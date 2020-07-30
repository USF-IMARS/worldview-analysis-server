CREATE TABLE :SCHEMA_NAME.products(
    short_name varchar(50) NOT NULL,
    UNIQUE(short_name),
    PRIMARY KEY (short_name),

    full_name varchar(255),
    path_format_str VARCHAR(255)
);

INSERT INTO :SCHEMA_NAME.products
    (short_name, full_name, path_format_str)
    VALUES
    ('soalchi_r_rs_wv2','3d wetlands SOALCHI Rrs','TODO'),
    ('soalchi_tif_rrs_wv2','3d wetlands SOALCHI rrs','TODO'),
    ('soalchi_tif_classification','3d wetlands SOALCHI habitat classification','{area_short_name:w}/{product_short_name:w}/WV{sat_n:2d}_%Y%m%d%H%M%S_{unknown_stuff}_%y%b%d%H%M%S-M1BS-{idNumber}_{unknown_int:2d}_P{passNumber}_{region_short_name}_SOALCHI_filt_{filter_width}.tif')
;
