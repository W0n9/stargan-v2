"""
StarGAN v2
Copyright (c) 2020-present NAVER Corp.

This work is licensed under the Creative Commons Attribution-NonCommercial
4.0 International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-nc/4.0/ or send a letter to
Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
"""

FILE=$1

if [ $FILE == "pretrained-network-celeba-hq" ]; then
    URL=https://caddy.buct.edu.cn/stargan-v2/pretrained-network-celeba-hq_100000_nets_ema.ckpt
    mkdir -p ./expr/checkpoints/celeba_hq
    OUT_FILE=./expr/checkpoints/celeba_hq/100000_nets_ema.ckpt
    wget -N $URL -O $OUT_FILE

elif  [ $FILE == "pretrained-network-afhq" ]; then
    URL=https://caddy.buct.edu.cn/stargan-v2/pretrained-network-afhq_100000_nets_ema.ckpt
    mkdir -p ./expr/checkpoints/afhq
    OUT_FILE=./expr/checkpoints/afhq/100000_nets_ema.ckpt
    wget -N $URL -O $OUT_FILE
    
elif  [ $FILE == "wing" ]; then
    URL=https://caddy.buct.edu.cn/stargan-v2/wing.ckpt
    mkdir -p ./expr/checkpoints/
    OUT_FILE=./expr/checkpoints/wing.ckpt
    wget -N $URL -O $OUT_FILE
    URL=https://caddy.buct.edu.cn/stargan-v2/celeba_lm_mean.npz
    OUT_FILE=./expr/checkpoints/celeba_lm_mean.npz
    wget -N $URL -O $OUT_FILE

elif  [ $FILE == "celeba-hq-dataset" ]; then
    URL=https://www.dropbox.com/s/f7pvjij2xlpff59/celeba_hq.zip?dl=0
    ZIP_FILE=./data/celeba_hq.zip
    mkdir -p ./data
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./data
    rm $ZIP_FILE

elif  [ $FILE == "afhq-dataset" ]; then
    URL=https://www.dropbox.com/s/t9l9o3vsx2jai3z/afhq.zip?dl=0
    ZIP_FILE=./data/afhq.zip
    mkdir -p ./data
    wget -N $URL -O $ZIP_FILE
    unzip $ZIP_FILE -d ./data
    rm $ZIP_FILE

else
    echo "Available arguments are pretrained-network-celeba-hq, pretrained-network-afhq, celeba-hq-dataset, and afhq-dataset."
    exit 1

fi