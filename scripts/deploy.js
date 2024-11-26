const hre = require("hardhat");

async function main() {
    const MyERC20Token = await hre.ethers.getContractFactory("MyERC20Token");
    const token = await MyERC20Token.deploy();

    await token.deployed();

    console.log(`Token deployed to: ${token.address}`);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
