# ukrainian_data_cube
## Installation depenencies for Sentinel-1
1. Switch to localuser at ODC instance (for further steps we consider path from localuser home directory at `/home/localuser`)
2. Swith to ODC env  with `source Datacube/datacube_env/bin/activate`
3. Download SNAP 7.0 from ESAs web site via link `http://step.esa.int/main/download/snap-download/` to `/home/localuser/snap` and install it with command `bash esa-snap_all_unix_7_0.sh`
4. Place SNAP graph for Sentinel-1 data processing to `/home/localuser/snap`
5. Place wrapper `proc.sh` from this repo to `/data/s1_grdh/src`
6. Add Sentinel-1 product to DataCube with `datacube product add s1_l3comp_scenes.yaml`
Directory listing
    `/data/s1_grdh/src:`
    `aux/  dwn.py  proc.sh`
    `aux:`
    `s1_prepare_metadata.py  s1_scene_kyiv_10m.yaml  s1_scene_kyiv_10m_sri.yaml`
7. Download GRDH products from Alaska Space Facilties Vertex with in zip format to `/data/s1_grdh/src`
8. Launch processing, indexing and ingesting with `bash proc.sh` command
