# source activate py3k
cd ../pytorch-CycleGAN-and-pix2pix
python train.py --dataroot datasets/silicon-valley/tiles_dataset_zoom17_v3 --name tiles --model pix2pix  --which_model_netG unet_256 --which_direction AtoB --lambda_A 100 --dataset_mode aligned --no_lsgan --norm batch