# Degen Token

This Solidity smart contract, named "DegenToken," implements an ERC20 token with minting, burning, and transfer functionalities, specifically designed for a tax-free shopping concept in Japan. Users can redeem their DGN tokens for various items like "Ichiran Ramen - NFT" or "Matcha Kitkat - NFT," with each item having a unique cost in tokens and a redemption status. Additionally, the contract includes functions for checking token balances, transferring tokens, and displaying available store items.

## Functions

Minting new tokens
- The platform allows for the creation of new tokens to be distributed to users as rewards for shopping. Only the owner can mint tokens.

Transferring tokens
- Users can transfer their tokens to others, facilitating easy sharing and gifting of rewards.

Redeeming tokens
- Users can redeem their tokens for various tax-free items in the store, such as "Ichiran Ramen - NFT" or "Matcha Kitkat - NFT."

Checking token balance
- Users can check their token balance at any time to keep track of their available rewards.

Burning tokens
- Users can burn their own tokens that are no longer needed, ensuring a flexible and user-controlled token lifecycle.

## Getting Started

### Installing

- First, initialize on Github Desktop the forked repository

![image](https://github.com/user-attachments/assets/83ea0825-615b-4ca2-931c-d7ff1619a8a1)

- Accessed the repository through Visual Studio Code 

![image](https://github.com/user-attachments/assets/b162b64b-86c5-4764-b676-2abf26db2d86)

- Under the terminal tab in VS Code, launch a new command prompt and input the code "npm install -g @remix-project/remixd"
- Following such you will input "remixd", in order to access the repo in remix

![image](https://github.com/user-attachments/assets/e244ca6a-c12b-43e9-ab95-31378fe9d08e)

- Proceed to Remix (https://remix.ethereum.org/), then under "Workspaces" click "Connect to Localhost"

![image](https://github.com/user-attachments/assets/b5d79f11-27f5-44f1-9da4-1968e54dcd39)


### Executing program

- To execute, first initialize your Metamask wallet to have an amount set for 2 account to request AVAX
- Now, under the left tab of the Execution we change the environment to "Injected Provide - MetaMask"

![image](https://github.com/user-attachments/assets/1fafc8f9-d076-445a-bd25-725d4beabe88)

- After such select that wallet that has the AVAX currency in it and deploy such.

![image](https://github.com/user-attachments/assets/2ee64717-0abe-42fc-97ac-85b420a182eb)

- Now you are able to Mint, Transfer, Redeem, Check Balance and Burn Tokens.
- To track the history proceed Snowtrace Testnet and paste the contract address. (https://testnet.snowtrace.io/)


## Authors

Metacrafter Student Adam LinkedIn: www.linkedin.com/in/adam-buenaventura.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
