device=0
data=data/data_so/fold1/
batch=1
n_head=1
n_layers=1
d_model=32
d_rnn=64
d_inner=100
d_k=32
d_v=32
dropout=0
lr=8e-3
smooth=0
epoch=100
log=debug_log_bs1_no_sch_mle_loss_lr8e-3_layer1.txt

CUDA_DEVICE_ORDER=PCI_BUS_ID CUDA_VISIBLE_DEVICES=$device python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log
echo "Press 'q' to exit"
count=0
while : ; do
read -n 1 k <&1
if [[ $k = q ]] ; then
printf "\nQuitting from the program\n"
break
else
((count=$count+1))
printf "\nIterate for $count times\n"
echo "Press 'q' to exit"
fi
done
