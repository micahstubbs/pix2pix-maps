# Silicon Valley
# https://gist.github.com/anonymous/a0bb912347fc437b63ae794f11c8872d
# Hong Kong Island North
# http://geojson.io/#id=gist:anonymous/91f1844b78ca7cb95dfe267bede2ca3a&map=15/22.2784/114.1686


# map styles
# for pix2pix v2
# https://api.mapbox.com/styles/v1/micahstubbs/cj74aio9o3c632rqo4xk787fv/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWljYWhzdHViYnMiLCJhIjoiMUJvN25TbyJ9.hMVVRL38KWrcaN_4cgLnrQ
# for pix2pix
# https://api.mapbox.com/styles/v1/aman-tiwari/cj5ms4up63pre2slf4b1v3auu/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW1hbi10aXdhcmkiLCJhIjoiY2ozajdzOXM4MDBqYjJ3cXNnbHg3YjF3dyJ9.DjsmHW5ahovyG4sYPGQ-Zw

MAP_POLY="../pix2pix-maps/silicon-valley.geojson"
ZOOM_LEVEL=17
SLIPPY_MAP_URL_1="https://api.mapbox.com/styles/v1/micahstubbs/cj74aio9o3c632rqo4xk787fv/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWljYWhzdHViYnMiLCJhIjoiMUJvN25TbyJ9.hMVVRL38KWrcaN_4cgLnrQ"
SLIPPY_MAP_URL_2="https://api.mapbox.com/styles/v1/mapbox/satellite-v9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWljYWhzdHViYnMiLCJhIjoiMUJvN25TbyJ9.hMVVRL38KWrcaN_4cgLnrQ"
OUT_DIR_1="tiles_1_outlines/train"
OUT_DIR_2="tiles_2_imagery/train"

cd ../the-ultimate-tile-stitcher
# source activate py3k

# scrape tiles from building outline map style
python scraper.py --poly $MAP_POLY --zoom $ZOOM_LEVEL --url $SLIPPY_MAP_URL_1 --out-dir $OUT_DIR_1

# scrape tiles from satellite imagery map style
#python scraper.py --poly $MAP_POLY --zoom $ZOOM_LEVEL --url $SLIPPY_MAP_URL_2 --out-dir $OUT_DIR_2