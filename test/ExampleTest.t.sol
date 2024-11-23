// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Example.sol";

contract ExampleTest is Test {
    Example public example;

    function setUp() public {
        example = new Example();
    }

    function testSetNumber() public {
        example.setNumber(42);
        assertEq(example.number(), 42);
    }
}
