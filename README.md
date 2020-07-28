# worldview-analysis-server
Docker stack for working with worldview data for the 3D wetlands project.

*TODO:*
- postgis file DB
    - can be used w/ QGIS to show coverage shapes?
    - enables search by date & area polygon?
- image submission form & POST target (using mbon_data_uploader?)
- blazer DB frontend for postgis



## Use Cases
### File Submission
0. user has file not on IMaRS systems
1. file uploaded through the mbon_data_uploader along with metadata
2. file is placed in appropriate location & database updated
3. user presented with new location of file in IMaRS systems

### File Indexing
0. user has files on IMaRS system but not in database
1. filepath & metadata submitted
2. file database is updated
3. (optional) file moved to better location?
4. user directed to database row showing the file meta

### File Search
0. user is looking for files matching metadata
1. user searches database with blazer or other GUI
2. user presented with list of matching filepaths (or other metadata)
