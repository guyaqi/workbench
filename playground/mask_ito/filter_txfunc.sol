contract disassembler {

    // transfer transferFrom
    function main() public return ()
    {
        mstore(0x40,0x80);
        if ((msg.data.length < 0x4)) 
        {
            revert(0x0,0x0);
        }
        else
        {
            // function id
            var0 = SHR(0xE0,msg.data(0x0));

            if ((0x4E71D92D == var0)) 
            {
                require(!msg.value);

                //ISSUE:WARNING:Block timestamp is referred.
                if ((sload(0x6) < block.timestamp)) 
                {
                    var2 = 0x0;
                    var3 = 0x0;
                                                                //-> label_00000B6E:
                    if ((sload(0x8) < var3)) 
                    {
                        if ((var2 > 0x0)) 
                        {
                            var3 = ((SHL(0xA0,0x1) - 0x1) & sload(0xA));
                            var5 = ((SHL(0xA0,0x1) - 0x1) & sload(0xA));
                            var7 = msg.sender;
                            var8 = var2;
                            var9 = var2;
                            mstore(0x80,SHL(0xE0,0x70A08231));
                            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & this.address)));
                            var17 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xA)));
                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xA)))));
                            if (delegatecall(gasleft,var17,0x80,0x24,0x80,0x20)) 
                            {
                                require((0x20 < returndatasize));
                                temp14 = mload(0x80);
                                if ((var9 < temp14)) 
                                {
                                    mstore(0xA4,(var7 & (SHL(0xA0,0x1) - 0x1)));
                                    mstore(0xC4,var8);
                                    mstore(0x80,0x44);
                                    mstore(0x40,0xE4);
                                    temp15 = mload(0xA0);
                                    mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp15)));
                                    mstore(0x40,0x124);
                                    mstore(0xE4,0x20);
                                    mstore(0x104,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                    throw();
                                }
                                else
                                {
                                    // Balance not enough
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x12);
                                    mstore(0xC4,SHL(0x73,0x84C2D8C2DCC6CA40DCDEE840CADCDEEACED));
                                    revert(0x80,0x64);
                                }
                            }
                            else
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                        }
                        else
                        {
                            // Nothing to claim
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x10);
                            mstore(0xC4,SHL(0x80,0x4E6F7468696E6720746F20636C61696D));
                            revert(0x80,0x64);
                        }
                    }
                    else
                    {
                        var8 = var3;
                        assert((var3 < sload(0x8)));
                        mstore(0x0,0x8);
                        temp16 = keccak256(0x0,0x20);
                        var5 = mapping_0x3[sload((var8 + temp16))].member_0x7[msg.sender];
                        if (mapping_0x3[sload((var8 + temp16))].member_0x7[msg.sender]) 
                        {
                            var6 = func_0000277C(var2,var5);
                            mapping_0x3[sload((var8 + temp16))].member_0x7[msg.sender] = 0x0;
                            var2 = var6;
                                                                //-> label_00000BE8:
                            var3 = (0x1 + var3);
                            goto label_00000B6E;
                        }
                        else
                        {
                            goto label_00000BE8;
                        }
                    }
                }
                else
                {
                    // Not released yet
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x10);
                    mstore(0xC4,SHL(0x82,0x139BDD081C995B19585CD959081E595D));
                    revert(0x80,0x64);
                }
            }

        }
    }

}
