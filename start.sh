git clone https://github.com/fireice-uk/xmr-stak.git
mkdir xmr-stak/build
cd xmr-stak/build
cmake .. -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF
make install

cp /etc/config.txt /xmr-stak/build/config.txt

./bin/xmr-stak  --currency monero7 -u 45ZacSit94ViVbE4suy5z544WNrzeKdnU3hRzxzw2Yab6e5kfRojEUMWbwaVe4vUMveKAzAiA4j8xgUi29TpKXpm43Ffqss -p worker:mail@alexisvincent.io --url pool.supportxmr.com:3333
