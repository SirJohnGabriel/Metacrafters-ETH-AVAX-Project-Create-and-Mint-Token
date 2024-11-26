# Metacrafters-ETH-AVAX-Project-Create-and-Mint

---

## **Overview**

**CreateAndMint** is a custom ERC20 token contract built on the Ethereum blockchain using the OpenZeppelin library. It implements basic token functionalities, including minting, burning, and the standard ERC20 features like transferring tokens between accounts.  

The token is named **"JohnGabrielPagtalunan"** with the symbol **"JGP"** and follows the standard ERC20 token conventions.

---

## **Features**

1. **Initial Token Supply**:
   - On deployment, the contract mints 100 tokens (adjusted for decimals) to the deployer's address.

2. **Minting**:
   - The `mint` function allows tokens to be minted and assigned to a specific address.  
   - **Access**: Callable by anyone.

3. **Burning**:
   - The `burn` function enables token holders to destroy (burn) their own tokens.
   - **Access**: Callable by token holders for their own tokens.

4. **ERC20 Standards**:
   - Supports all standard ERC20 token functions, including `transfer`, `approve`, and `transferFrom`.

---

## **Contract Details**

- **Token Name**: `JohnGabrielPagtalunan`
- **Token Symbol**: `JGP`
- **Decimals**: `18` (default for ERC20 tokens)
- **Initial Supply**: `100 JGP`

---

## **Getting Started**

### **Prerequisites**

1. A blockchain development environment like:
   - **Remix IDE**: https://remix.ethereum.org/
   - **HardHat** or **Truffle** for local or test network deployments.

2. A funded Ethereum wallet (like MetaMask) for test network transactions.

3. Access to a testnet such as Goerli, Sepolia, or your local Ethereum environment.

---

### **Deployment**

#### Using Remix
1. Open the contract in Remix.
2. Compile the contract using Solidity version `^0.8.9`.
3. Deploy the contract using the `Injected Web3` environment (MetaMask required).
4. Confirm the transaction in your wallet to deploy the contract.

#### Using HardHat
1. Install HardHat and dependencies:
   ```bash
   npm install --save-dev hardhat @openzeppelin/contracts
   ```
2. Write a deployment script:
   ```javascript
   const hre = require("hardhat");

   async function main() {
       const CreateAndMint = await hre.ethers.getContractFactory("CreateAndMint");
       const token = await CreateAndMint.deploy();
       await token.deployed();
       console.log(`Token deployed to: ${token.address}`);
   }

   main().catch((error) => {
       console.error(error);
       process.exitCode = 1;
   });
   ```
3. Run the deployment script:
   ```bash
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

---

## **Usage**

### **Minting Tokens**
- **Function**: `mint(address to, uint256 amount)`
- **Description**: Mints new tokens and assigns them to the specified address.
- **Example**:
   ```solidity
   token.mint("0xRecipientAddress", 100 * 10**18); // Mint 100 tokens
   ```

### **Burning Tokens**
- **Function**: `burn(uint256 amount)`
- **Description**: Destroys the specified amount of tokens from the caller's balance.
- **Example**:
   ```solidity
   token.burn(50 * 10**18); // Burn 50 tokens
   ```

### **Standard ERC20 Functions**
- **Transfer Tokens**:
   ```solidity
   token.transfer("0xRecipientAddress", 10 * 10**18);
   ```
- **Approve Allowance**:
   ```solidity
   token.approve("0xSpenderAddress", 20 * 10**18);
   ```
- **Transfer Using Allowance**:
   ```solidity
   token.transferFrom("0xOwnerAddress", "0xRecipientAddress", 5 * 10**18);
   ```

---

## **License**

This project is licensed under the [**MIT License**](LICENSE).

---

## **Contact**

For any inquiries or issues regarding this contract, please contact:
- **Developer**: John Gabriel Pagtalunan
- **Email**: [j.g.pagtalunan14@gmail.com](mailto:j.g.pagtalunan14@gmail.com)
- **Email**: [202120016@fit.edu.ph](mailto:202120016@fit.edu.ph)
- **Email**: [johngabrielpagtalunan@hotmail.com](mailto:johngabrielpagtalunan@hotmail.com)
