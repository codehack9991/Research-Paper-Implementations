CUDA_VISIBLE_DEVICES=0 \
python train.py \
--images_path data/celeba_hq/ \
--train_img_A_path data/lists_hq/brownhair_train.txt \
--train_img_B_path data/lists_hq/not_brownhair_train.txt \
--test_img_A_path data/lists_hq/brownhair_test.txt \
--test_img_B_path data/lists_hq/not_brownhair_test.txt \
--input_transform flip,scale \
--experiment_name celebahq_256p_brownhair \
--batch_size 16 \
--img_size 256 \
--model_type cyclegan \
--kernel_size 4 \
--mse_loss_weight 25. \
--mse_loss_type l1 \
--gen_num_channels 32 \
--gen_max_channels 256 \
--gen_latent_size 32 \
--gen_num_res_blocks 7 \
--gen_norm_layer none \
--dis_input_sizes 256,128,64,32,16 \
--dis_input_num_channels 64,128,256,512,512 \
--dis_output_sizes 8,4,1 \
--dis_num_channels 64 \
--dis_max_channels 256 \
--dis_adv_loss_type lsgan \
--dis_use_encoder \
--dis_kernel_size_io 3 \
--enc_type vgg19_pytorch \
--num_epoch 50 \
--epoch_len 1000 \
--pretrained_gen_path runs/celebahq_256p_pretrain/checkpoints/