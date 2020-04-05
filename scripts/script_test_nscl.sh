GPU_ID=$1
jac-crun ${GPU_ID} scripts/trainval_tube.py --desc clevrer/desc_nscl_derender_clevrer.py\
    --training-target derender --curriculum all\
    --dataset clevrer --data-dir ../clevrer\
    --batch-size 8 --epoch 100 --validation-interval 5\
    --save-interval 5 --data-split 0.95 --data-workers 0 \
    --normalized_boxes 1 --frm_img_num 12 --even_smp_flag 1\
    --rel_box_flag 0 --evaluate \
    --dynamic_ftr_flag 1 --version v4 \
    --scene_supervision_flag 1\
    --tube_prp_path ../clevrer/tubeProposalsGt\
    --box_only_for_collision_flag 0 \
    --scene_supervision_flag 1\
    #--load dumps/clevrer/desc_nscl_derender_clevrer/derender_norm_box_even_smp6_col_box_ftr_v5_gt/checkpoints/epoch_16.pth \
    #--load dumps/clevrer/desc_nscl_derender_clevrer/derender_norm_box_even_smp6_col_box_ftr_v5_gt/epoch_16.pth --debug \

