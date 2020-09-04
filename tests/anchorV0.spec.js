const { accounts, contract, web3 } = require("@openzeppelin/test-environment");

const Anchor = contract.fromArtifact("Anchor");

describe("anchorV0", () => {
  describe("initialize", () => {
    it("ex1", async () => {
      expect.assertions(1);
      const [anchorOwner] = accounts;

      const anchor = await Anchor.new("RIGHT");

      const res = await anchor.name.call({ from: anchorOwner });
      expect(res).toStrictEqual("WRONG");
    });
  });
});
