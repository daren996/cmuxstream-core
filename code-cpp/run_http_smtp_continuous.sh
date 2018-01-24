make clean
make optimized
K=100
C=100
D=10
N=100000 # scoring interval
I=180173 # 25%
./xstream --input ../data/http_smtp_continuous.csv\
  --k $K --c $C --d $D\
  --fixed\
  --nwindows 0\
  --initsample $I\
  --scoringbatch $N\
  > ../results/scores_http_smtp_continuous_k"$K"_c"$C"_d"$D"_n"$N"_i"$I".txt

python ap_over_time.py ../data/http_smtp_continuous.csv\
  ../results/scores_http_smtp_continuous_k"$K"_c"$C"_d"$D"_n"$N"_i"$I".txt\
  > ../results/ap_http_smtp_continuous_k"$K"_c"$C"_d"$D"_n"$N"_i"$I".txt