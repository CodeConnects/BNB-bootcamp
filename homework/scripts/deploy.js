const { deploy } = require('hardhat');

async function main() {
  // Get the contracts to deploy
  const Level_0_Solution = await ethers.getContractFactory("Level_0_Solution");
  const level_0_Solution = await Level_0_Solution.deploy();

  const Level_1_Solution = await ethers.getContractFactory("Level_1_Solution");
  const level_1_Solution = await Level_1_Solution.deploy();

  const Level_2_Solution = await ethers.getContractFactory("Level_2_Solution");
  const level_2_Solution = await Level_2_Solution.deploy();

  const Level_3_Solution = await ethers.getContractFactory("Level_3_Solution");
  const level_3_Solution = await Level_3_Solution.deploy();

  const Level_4_Solution = await ethers.getContractFactory("Level_4_Solution");
  const level_4_Solution = await Level_4_Solution.deploy();

  console.log("Contract 0 deployed to address:", level_0_Solution.address);
  console.log("Contract 1 deployed to address:", level_1_Solution.address);
  console.log("Contract 2 deployed to address:", level_2_Solution.address);
  console.log("Contract 3 deployed to address:", level_3_Solution.address);
  console.log("Contract 4 deployed to address:", level_4_Solution.address);

  // Report gas usage
  //const { gasUsed0 } = await level_0_Solution.deployTransaction.wait();
  //console.log("Gas used for 0:", gasUsed0.toString());

  //const { gasUsed1 } = await level_1_Solution.deployTransaction.wait();
  //console.log("Gas used for 1:", gasUsed1.toString());

  //const { gasUsed2 } = await level_2_Solution.deployTransaction.wait();
  //console.log("Gas used for 2:", gasUsed2.toString());

  //const { gasUsed3 } = await level_3_Solution.deployTransaction.wait();
  //console.log("Gas used for 3:", gasUsed3.toString());

  //const { gasUsed4 } = await level_4_Solution.deployTransaction.wait();
  //console.log("Gas used for 4:", gasUsed4.toString());
}

main();