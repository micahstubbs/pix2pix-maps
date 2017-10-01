TILES_1_PATH="../the-ultimate-tile-stitcher/tiles_1_outlines"
TILES_2_PATH="../the-ultimate-tile-stitcher/tiles_2_imagery"
cd ../pytorch-CycleGAN-and-pix2pix
# source activate py3k
python datasets/combine_A_and_B.py --fold_A $TILES_1_PATH --fold_B $TILES_2_PATH --fold_AB datasets/silicon-valley/tiles_dataset_zoom17_v3