export CUDA_VISIBLE_DEVICES=0

printf "\ntranslate cipher test\n"
./scripts/translate.sh $1 data/yelp_decipher/yelp_decipher1.0/decipher.test.1 data/yelp_decipher/yelp_decipher1.0/test_1.attr transfer_plain.txt

path=$1transfer_plain.txt
./multi-bleu.perl data/yelp_decipher/yelp_decipher1.0/decipher.test.0 < $path