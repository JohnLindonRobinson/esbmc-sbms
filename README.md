# esbmc-sbms
A benchmark system for the ESBMC (Efficient SMT-Based Bounded Model Checker) Solidity Frontend

## How It Works
ESBMC-SBMS is a benchmark system for the ESBMC Solidity Frontend. It is composed of a set of Solidity smart contracts, a set of properties to be checked, and a set of scripts to run the benchmarks.

ESBMC-SBMS uses the [SWC Registry](https://swcregistry.io/) as a source of potential vulnerabilities to be tested. The SWC Registry is a curated list of known vulnerabilities in smart contracts. The SWC Registry is maintained by the [Smart Contract Security Group](https://smartcontractsecurity.github.io/).

For each vulnerability supported, ESBMC-SBMS contains a set of Solidity smart contracts that exhibit the vulnerability. Each smart contract is accompanied by a set of properties to be checked. ESBMC is then used to check the properties of the smart contracts. The results of the checks are stored in a CSV file.
