HelloWorld = artifacts.require("HelloWorld.sol");

contract("HelloWorld", function() {
  describe("Deploy", () => {
    it("HelloWorld contract was deployed successfully", async function() {
      const helloworld = await HelloWorld.deployed();
      assert(helloworld, "contract was not deployed");
    });
  });
});
