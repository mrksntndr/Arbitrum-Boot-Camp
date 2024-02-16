import { ethers } from "hardhat";

async function main() {
  const token = await ethers.deployContract("Chicoin", ["0x8D7822a84864D4531Aaf6Cc0A8236a4A9F6E7a25"]);

  await token.waitForDeployment();

  console.log(
    `Token deployed to ${token.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});