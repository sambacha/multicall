#!/bin/bash
npm ci
rm -rf artifacts/
./node_modules/solc-0.8.0/solcjs
./node_modules/solc-0.8.0/solcjs --abi --bin src/Multicall3.sol
mv src_Multi* artifacts/
./node_modules/solc-0.5.17/solcjs --abi --bin src/Multicall.sol
mv src_Multicall_sol_Multicall2.* artifacts/
