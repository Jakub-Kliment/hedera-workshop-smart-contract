# Hedera Workshop 2

Welcome to the second Hedera workshop, whose goal is to prepare you for the Privacy & Verifiability Hackathon organized by the Blockchain Student Association. The goal of this workshop is to get hands-on experience with the Hedera JavaScript SDK. In this workshop we will create a Solidity smart contract for a Piggy Bank which we will then deploy to the Hedera Testnet and interact with it by adding funds to it and retrieving the balance.

## Prerequisites

1. Node.js:
    1. To check if installed run node -v
    2. If not install it here: https://nodejs.org/en

2. Hedera Testnet Account: we will create one during the workshop, but you can also register in advance using the link (https://portal.hedera.com/register).

3. Create a .env file with your testnet account ID and HEX encoded private key (as shown in the .env.example file).
    1. Note: Storing private keys in a .env file is not best practice for development but works for testing accounts.

## Running the code

1. Clone this repository
``` bash
git clone https://github.com/Jakub-Kliment/hedera-workshop-smart-contract.git
cd hedera-workshop-smart-contract
```

2. Install all dependencies
``` bash
npm install
```

3. Don't forget to add your .env file !
    1. Note: Before publishing the code on GitHub or anywhere else, please make sure to verify that your .env file is in .gitignore so that you don't accidentally publish you private key.

4. Run the script
``` bash
node deployContract.js
```

## Resources

To learn more about the Hedera SDK visit docs: https://docs.hedera.com/hedera
