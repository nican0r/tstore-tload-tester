## Tester for tstore/tload opcodes

This repo is meant to be a tester for the tstore/tload opcodes in the latest version of echidna (2.2.4) introduced in the Cancun hard fork created using Create Chimera App. 

This version of echidna only adds support for these opcodes but still lacks support for other new opcodes introduced in cancun so the recommendation is to use solc 0.8.24 or older.

The example contract is taken from [this](https://soliditylang.org/blog/2024/01/26/transient-storage/) section of the solidity documentation and meant to be a minimum working example.