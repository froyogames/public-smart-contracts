pragma solidity >=0.4.25 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Froyo.sol";

contract TestFroyo {

  function testInitialBalanceUsingDeployedContract() public {
    Froyo froyo = Froyo(DeployedAddresses.Froyo());

    uint expected = 1000000000000000000000000000;

    Assert.equal(froyo.balanceOf(0xEcFcaB0A285d3380E488A39B4BB21e777f8A4EaC), expected, "Owner should have 1,000,000,000 Froyo initially");
  }

  function testInitialBalanceWithNewFroyo() public {
    Froyo froyo = new Froyo();

    uint expected = 1000000000000000000000000000;

    Assert.equal(froyo.balanceOf(0xEcFcaB0A285d3380E488A39B4BB21e777f8A4EaC), expected, "Owner should have 1,000,000,000 Froyo initially");
  }

}
