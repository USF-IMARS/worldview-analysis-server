CREATE TABLE :SCHEMA_NAME.areas(
    short_name varchar(50) NOT NULL,
    UNIQUE(short_name),
    PRIMARY KEY (short_name),

    full_name varchar(255)
    -- TODO: + polygon & bounding box
);

-- for more about these regions see
-- https://github.com/USF-IMARS/data-docs/blob/master/docs/worldview/regions_worldview.md
INSERT INTO :SCHEMA_NAME.areas
    (short_name, full_name)
    VALUES
    ('fl_big_bend','FCMap region Big Bend'),
    ('fl_se','FCMaP region (FL) "SE" (Atlantic coast)'),
    ('fl_ne','FCMaP region (FL) "NE" (Atlantic coast)'),
    ('fl_monroe','FCMaP region "Monroe"'),
    ('fl_panhandle','FCMaP region "Panhandle"'),
    ('fl_sw','FCMaP region "West FL Peninsula"'),
    ('texas_sw','FCMaP-like Texas Southwestern Gulf of Mexico coast'),
    ('texas_central','FCMaP-like Texas middle Gulf of Mexico coast'),
    ('texas_ne','FCMaP-like Texas northeastern Gulf of Mexico coast'),
    ('louisiana_w','FCMaP-like western Louisiana Gulf of Mexico coast'),
    ('louisiana_e','FCMaP-like eastern Louisiana Gulf of Mexico coast'),
    ('mississippi','FCMaP-like Mississippi Gulf of Mexico coast'),
    ('Alabama','FCMaP-like Alabama Gulf of Mexico coast')
;
