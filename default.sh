docker run --rm -it -v $(pwd):/work -w /work yokohide0317/alphacutter:latest \
    python /app/AlphaCutter_v111.py \
    --loop_min 20 \
    --helix_min 30 \
    --fragment_min 5 \
    --domain_min 0 \
    --pLDDT_min 0 \
    --local_contact_range 5 \
    --single_out \
    --domain_out
