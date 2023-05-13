name=cyclegan_iter2000
test=23705 # テストを何枚するか
n_epochs=2 # 最大のepoch数
n_epochs_decay=0
iter_freq=2000 # どの程度の間隔の反復数で保存，テストするか．

# python train.py --dataroot ./datasets/luvt --name $name --model cycle_gan --n_epochs $n_epochs --n_epochs_decay $n_epochs_decay --save_latest_freq $iter_freq --save_by_iter && \
python test.py --dataroot ./datasets/luvt --name $name --model cycle_gan --phase train --num_test $test --no_dropout --load_iter $iter_freq