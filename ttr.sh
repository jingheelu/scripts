CURRENT_PWD=$PWD
cd ~/dev-root/debesys
./run python t_trader/tt/ttrader/t_trader.py --stdout --disable-bookie --disable-admin-server
cd $CURRENT_PWD
