const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("CTF contracts deployment", function () {
    let Level_0_Solution, Level_1_Solution, Level_2_Solution, Level_3_Solution, Level_4_Solution;

    before(async function () {
        [Level_0_Solution, Level_1_Solution, Level_2_Solution, Level_3_Solution, Level_4_Solution] = await Promise.all([
            ethers.getContractFactory("Level_0_Solution"),
            ethers.getContractFactory("Level_1_Solution"),
            ethers.getContractFactory("Level_2_Solution"),
            ethers.getContractFactory("Level_3_Solution"),
            ethers.getContractFactory("Level_4_Solution"),
        ]);
    });

    it("Should deploy Level_0_Solution", async function () {
        const level_0_Solution = await Level_0_Solution.deploy();
        console.log("Contract 0 deployed to address:", level_0_Solution.address);
    });

    it("Should deploy Level_1_Solution", async function () {
        const level_1_Solution = await Level_1_Solution.deploy();
        console.log("Contract 1 deployed to address:", level_1_Solution.address);
    });

    it("Should deploy Level_2_Solution", async function () {
        const level_2_Solution = await Level_2_Solution.deploy();
        console.log("Contract 2 deployed to address:", level_2_Solution.address);
    });

    it("Should deploy Level_3_Solution", async function () {
        const level_3_Solution = await Level_3_Solution.deploy();
        console.log("Contract 3 deployed to address:", level_3_Solution.address);
    });

    it("Should deploy Level_4_Solution", async function () {
        const level_4_Solution = await Level_4_Solution.deploy();
        console.log("Contract 4 deployed to address:", level_4_Solution.address);
    });
});
