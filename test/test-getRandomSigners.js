// import { ethers } from 'ethers'

// export const randomSigners = (amount) => {
//   const signers = []
//   for (let i = 0; i < amount; i++) {
//     signers.push(ethers.Wallet.createRandom())
//   }
//   /*
// Using ethers.Wallet.createRandom() from François Guyot this is 
// how I managed to get many Signers for my tests.

// ctx is your contract instance and addr1 is one of the Signer
//  you got by calling await ethers.getSigners();

//   */
// //   for( let i=0; i < nb; i++){
// //     // Get a new wallet
// //     wallet = ethers.Wallet.createRandom();
// //     // add the provider from Hardhat
// //     wallet =  wallet.connect(ethers.provider);
// //     // send ETH to the new wallet so it can perform a tx
// //     await addr1.sendTransaction({to: wallet.address, value: ethers.utils.parseEther("1")});
    
// //     await ctx.connect(wallet).CallYouContract()
// //     }   
//   return signers
// }