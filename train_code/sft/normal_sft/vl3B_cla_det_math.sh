NPROC_PER_NODE=8 CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 MAX_PIXELS=401408 swift sft \
    --model_type qwen2_5_vl \
    --model /mnt/tenant-home_speed/AIM/model/Qwen2.5-VL-3B-Instruct \
    --dataset /mnt/tenant-home_speed/dhl/RL_VL3B/sft_data/cla_det_math/train_cla_det_math_.jsonl \
    --val_dataset /mnt/tenant-home_speed/dhl/RL_VL3B/sft_data/cla_det_math/val_cla_det_math_.jsonl \
    --train_type full \
    --torch_dtype bfloat16 \
    --max_steps 2100 \
    --num_train_epochs 3 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --attn_impl flash_attn \
    --learning_rate 1e-6 \
    --freeze_vit true \
    --gradient_accumulation_steps 4 \
    --eval_steps 100 \
    --save_steps 100 \
    --save_only_model true \
    --save_total_limit 25 \
    --logging_steps 5 \
    --max_length 8192 \
    --output_dir /mnt/tenant-home_speed/dhl/RL_VL3B/sft_data/ \
    --warmup_ratio 0.05 \
    --system 'You are a helpful assistant' \
    --deepspeed zero3 \
