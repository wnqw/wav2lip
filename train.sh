# inference
python inference.py --checkpoint_path checkpoints/wav2lip.pth --face data/ctq.mp4 --audio data/ctq.wav 

# preprocess dataset (LRS2)
# python preprocess.py --data_root data_root/main --preprocessed_root lrs2_preprocessed/

# train expert discriminator
# python color_syncnet_train.py --data_root lrs2_preprocessed/ --checkpoint_dir <folder_to_save_checkpoints>

# train wav2lip models
# python wav2lip_train.py --data_root lrs2_preprocessed/ --checkpoint_dir <folder_to_save_checkpoints> --syncnet_checkpoint_path <path_to_expert_disc_checkpoint>


# tmux new-session -d -s <session_name>  # create a tmux session
# tmux attach -t <session_name>  # attach the tmux session


# TimeID=$(date +"%Y%m%d-%H%M%S")
# echo "started: $(date +"%Y-%m-%d %H:%M:%S")" >> model_times.txt
