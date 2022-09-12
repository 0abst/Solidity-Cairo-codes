  const hre = require("hardhat");
  async function main() {
    const NFT = await hre.ethers.getContractFactory("MyToken6");
    const WALLET_ADDRESS = ""
    const CONTRACT_ADDRESS = ""

    const tokenID = 1

    const contract = NFT.attach(CONTRACT_ADDRESS);
    await contract.safeMint(WALLET_ADDRESS, tokenID);
    console.log("NFT minted:", contract);
  }
  main().then(() => process.exit(0)).catch(error => {
    console.error(error);
    process.exit(1);
  });

  