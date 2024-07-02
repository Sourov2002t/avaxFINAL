# Project Title : ERC20 Smart Contract: DegenGamingToken.

# Description :

A Solidity-built token for gaming apps, the {DegenGamingToken} complies with ERC20 standards. The contract owner can mint more tokens with this token, which also has configurable decimals and initially issues 1,000 tokens to the deployer. In order to lower their token balance, users can either use the `burn` function or the `redeem` function, which may be expanded to allow for in-game item trades. Conventional token transfers between users are made possible via the `transferTokens` function. Strong functionality and access control are provided by the contract through the use of OpenZeppelin's `ERC20} and `Ownable} kits.

## Key Features :

*ERC20 Compliant:* Conforms to the ERC20 standard, ensuring compatibility with various wallets and exchanges.

*Custom Decimals:* Allows setting of custom decimal places, enabling flexibility in token representation.

*Initial Minting:* Mints an initial supply of 1,000 tokens to the contract deployer upon deployment.

*Minting Control:* Only the contract owner can mint new tokens, ensuring controlled token issuance.

*Burn Functionality:*

  * Redeem: Allows users to burn tokens, potentially for in-game items or other benefits.
  * 
  * Burn: Enables any user to burn their tokens, reducing the overall supply.
    
*Token Transfers:* Facilitates the transfer of tokens between users with a dedicated transfer function.

*Security and Ownership:* Utilizes OpenZeppelin's Ownable for ownership control, enhancing security and administrative capabilities.

# Execution Instructions :

Open Remix IDE, choose New File, Paste Code, Compile the Contract using Solidity, and then select "Deploy & Run Transactions" to launch the contract and use its functionalities to mint, burn, redeem, and transfer tokens. This is how to construct a DegenGamingToken contract.

## Step-by-Step Instructions for Remix IDE :

1. Open Remix IDE :
    
     * Navigate to Remix IDE in your web browser.
       
2. Create a New Solidity File :
 
     * In the File Explorer, click the "+" button to create a new file.
       
     * Name the file avax.sol.
       
3. Add the Smart Contract Code :
   
     * Copy the DegenGamingToken code and paste it into avax.sol:- 

4. Compile the Contract :

    * Click the "Solidity Compiler" tab.
      
    * Ensure the compiler version is set to 0.8.26 by selecting it from the dropdown list.
      
    * Click the "Compile avax.sol" button. If successful, a green checkmark will appear.
      
5. Deploy the Contract :
   
     * Click the "Deploy & Run Transactions" tab.
       
     * Ensure the "Environment" is set to "Injected Provider - MetaMask" or "Remix VM" if you want to use a local environment.
       
     * Select DegenGamingToken from the contract dropdown list.
       
     * Enter the desired decimal places in the _decimals field.
       
     * Click the "Deploy" button. Confirm the transaction in MetaMask if prompted.
       
6. Interact with the Deployed Contract :
   
     * After deployment, your contract will appear under "Deployed Contracts."
       
  ** Expand your contract's section to access its functions:

     mint: Enter the recipient's address and the amount of tokens to mint.
     
     redeem: Enter the amount of tokens to redeem (burn).
     
     burn: Enter the amount of tokens to burn.
     
     transferTokens: Enter the recipient's address and the amount of tokens to transfer.
     
   * Use the "decimals" and other read-only functions to view contract details.

 7. Test and Verify

    * Use Remix's transaction log and console to monitor contract interactions and debug if necessary.

    * Ensure you have sufficient ETH for gas fees to execute transactions.

# Authors :

  => Sourov Kumar Nandi

   Github : https://github.com/Sourov2002t

   LinkedIn : https://www.linkedin.com/in/sourov-kumar-nandi-77292924b

# LICENSE :

   This Project is licensed under the MIT License - see the link (  ) for details.
