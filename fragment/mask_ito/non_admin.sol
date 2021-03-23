// 需要使用 msg.sender, block.number/timestamp

contract disassembler {


    // !!!!!!!!!!!!!!! MARK
    // 非管理员
    function FUNC_6BFDAECE( uint256 arg0) public return ()
    {
        var10 = (0x4 + temp125);
        var11 = func_00002621(mapping_0x3[arg0].member_0x1,0x0,0x80);
        var13 = func_00002621(mapping_0x3[arg0],0xC8,0x1C);

        //ISSUE:WARNING:Block timestamp is referred.
        var12 = (block.timestamp > (var13 + sload(0x1)));
        var14 = func_00002621(mapping_0x3[arg0].member_0x0,0xE4,0x1C);

        //ISSUE:WARNING:Block timestamp is referred.
        var13 = (block.timestamp > (var14 + sload(0x1)));
        var14 = mapping_0x3[arg0].member_0x7[((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & msg.sender))];
        var15 = (0x5 + temp125);
        mstore(0x40,(0x80 + (0x20 + (0x20 * mapping_0x3[arg0].member_0x4))));
        var16 = 0x80;
        mstore(0x80,mapping_0x3[arg0].member_0x4);
        var20 = (0x4 + temp125);
        var21 = mapping_0x3[arg0].member_0x4;
        if (mapping_0x3[arg0].member_0x4) 
        {
            temp132 = (0xA0 + (0x20 * var21));
            var19 = temp132;
            mstore(0x0,var20);
            temp133 = keccak256(0x0,0x20);
            var21 = 0xA0;
            var20 = temp133;
                                                                 //-> label_000015CE:
            mstore(var21,((SHL(0xA0,0x1) - 0x1) & sload(var20)));
            var20 = (var20 + 0x1);
            var21 = (0x20 + var21);
            if ((var19 > var21)) 
            {
                goto label_000015CE;
            }
            else
            {
                goto label_000015EC;
            }
        }
        else
        {
                                                                 //-> label_000015EC:
            var10 = var16;
            temp127 = mload(0x40);
            mstore(0x40,(temp127 + (0x20 + (0x20 * sload(var15)))));
            var16 = temp127;
            mstore(temp127,sload(var15));
            var19 = (0x20 + temp127);
            var20 = var15;
            var21 = sload(var15);
            if (sload(var15)) 
            {
                temp128 = (var19 + (0x20 * var21));
                var19 = temp128;
                mstore(0x0,var20);
                temp129 = keccak256(0x0,0x20);
                var20 = temp129;
                var22 = var19;
                var21 = 0x0;
                                                                 //-> label_0000162D:
                mstore(var22,((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (sload(var20) / EXP(0x100,var21)))));
                temp130 = (0x20 + var22);
                var22 = temp130;
                temp131 = (0x10 + var21);
                var20 = (((0xF + temp131) / 0x20) + var20);
                var21 = (temp131 * (0x1 - ((0xF + temp131) / 0x20)));
                if ((var19 > temp130)) 
                {
                    goto label_0000162D;
                }
                else
                {
                    return();
                }
            }
            else
            {
                return();
            }
        }
    }

    // has transfer
    // msg.sender == ((SHL(0xA0,0x1) - 0x1) & mapping_0x3[arg0].member_0x2
    function FUNC_CC0CAB4C( uint256 arg0) public return ()
    {
        var2 = arg0;
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & mapping_0x3[arg0].member_0x2))) 
        {
            var5 = func_00002621(mapping_0x3[arg0].member_0x0,0x0,0xA0);
            var4 = var5;
            var7 = func_00002621(mapping_0x3[arg0].member_0x0,0xE4,0x1C);
            var7 = func_00002621(mapping_0x3[arg0].member_0x1,0x0,0x80);
            var6 = var7;

            //ISSUE:WARNING:Block timestamp is referred.
            var7 = (block.timestamp > (var7 + sload(0x1)));
            if (var7) 
            {
                if (var7) // else revert: Not expired yet
                {
                                                                 //-> label_000020FC:
                    if (var6) 
                    {
                        var8 = var4;
                        var10 = msg.sender;
                        var11 = var6;
                        var12 = var6;
                        mstore(0x80,SHL(0xE0,0x70A08231));
                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & this.address)));
                        var20 = ((SHL(0xA0,0x1) - 0x1) & var4);
                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var4)));
                        if (delegatecall(gasleft,var20,0x80,0x24,0x80,0x20)) 
                        {
                            require((0x20 < returndatasize));
                            temp212 = mload(0x80);
                            if ((var12 < temp212)) 
                            {
                                mstore(0xA4,(var10 & (SHL(0xA0,0x1) - 0x1)));
                                mstore(0xC4,var11);
                                mstore(0x80,0x44);
                                mstore(0x40,0xE4);
                                temp213 = mload(0xA0);
                                mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp213)));
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
                        var7 = 0x0;
                                                                 //-> label_00002111:
                        if ((mapping_0x3[arg0].member_0x4 < var7)) 
                        {
                            mstore(0x80,var2);
                            mstore(0xA0,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & var4)));
                            mstore(0xC0,var6);
                            mstore(0xE0,0x80);
                            var15 = (0x5 + var3);
                            mstore(0x100,mapping_0x3[arg0].member_0x5);
                            var16 = mapping_0x3[arg0].member_0x5;
                            if (mapping_0x3[arg0].member_0x5) 
                            {
                                temp196 = (0x120 + (0x20 * var16));
                                var14 = temp196;
                                mstore(0x0,var15);
                                temp197 = keccak256(0x0,0x20);
                                var15 = temp197;
                                var17 = 0x120;
                                var16 = 0x0;
                                                                 //-> label_0000230A:
                                mstore(var17,((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (sload(var15) / EXP(0x100,var16)))));
                                temp198 = (0x20 + var17);
                                var17 = temp198;
                                temp199 = (0x10 + var16);
                                var15 = (((0xF + temp199) / 0x20) + var15);
                                var16 = (temp199 * (0x1 - ((0xF + temp199) / 0x20)));
                                if ((var14 > temp198)) 
                                {
                                    goto label_0000230A;
                                }
                                else
                                {
                                    log(0x80,(var14 - 0x80),var7);
                                    var7 = 0x0;
                                    mapping_0x3[arg0] = 0x0;
                                    mapping_0x3[arg0].member_0x1 = 0x0;
                                    mapping_0x3[arg0].member_0x2 = ((sload(0x5) & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & mapping_0x3[arg0].member_0x2));
                                    if ((mapping_0x3[arg0].member_0x4 < 0x0)) 
                                    {
                                        goto label_000024D2;
                                    }
                                    else
                                    {
                                        goto label_0000239C;
                                    }
                                }
                            }
                            else
                            {
                                log(0x80,0xA0,0x1A1FD9D8A4231D7BD8926CE16B753BA03E0310E0A776F13EBA8E0C3CBA7EA89);
                                var7 = 0x0;
                                mapping_0x3[arg0] = 0x0;
                                mapping_0x3[arg0].member_0x1 = 0x0;
                                mapping_0x3[arg0].member_0x2 = ((sload(0x5) & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & mapping_0x3[arg0].member_0x2));
                                                                 //-> label_0000238F:
                                if ((mapping_0x3[arg0].member_0x4 < var7)) 
                                {
                                                                 //-> label_000024D2:
                                    return();
                                }
                                else
                                {
                                                                 //-> label_0000239C:
                                    var9 = (var3 + 0x4);
                                    var8 = (sload(0x5) & (SHL(0xA0,0x1) - 0x1));
                                    var10 = var7;
                                    assert((var7 < mapping_0x3[arg0].member_0x4));
                                    mstore(0x0,var9);
                                    temp182 = keccak256(0x0,0x20);
                                    temp183 = (((SHL(0xA0,0x1) - 0x1) & var8) | (~(SHL(0xA0,0x1) - 0x1) & sload((temp182 + var10))));
                                    temp184 = (temp182 + var10);
                                    sstore(temp184,temp183);
                                    var9 = (0x5 + var3);
                                    var10 = var7;
                                    assert((var7 < mapping_0x3[arg0].member_0x5));
                                    mstore(0x0,var9);
                                    temp185 = keccak256(0x0,0x20);
                                    temp186 = EXP(0x100,(0x10 * MOD(var10,0x2)));
                                    temp187 = ((0x0 * temp186) | (~((SHL(0x80,0x1) - 0x1) * temp186) & sload(((var10 / 0x2) + temp185))));
                                    temp188 = ((var10 / 0x2) + temp185);
                                    sstore(temp188,temp187);
                                    var9 = (0x6 + var3);
                                    var10 = (0x2 * var7);
                                    assert(((0x2 * var7) < mapping_0x3[arg0].member_0x6));
                                    mstore(0x0,var9);
                                    temp189 = keccak256(0x0,0x20);
                                    temp190 = EXP(0x100,(0x10 * MOD(var10,0x2)));
                                    temp191 = ((0x0 * temp190) | (~((SHL(0x80,0x1) - 0x1) * temp190) & sload(((var10 / 0x2) + temp189))));
                                    temp192 = ((var10 / 0x2) + temp189);
                                    sstore(temp192,temp191);
                                    var9 = (0x6 + var3);
                                    var10 = (0x1 + (0x2 * var7));
                                    assert(((0x1 + (0x2 * var7)) < mapping_0x3[arg0].member_0x6));
                                    mstore(0x0,var9);
                                    temp193 = keccak256(0x0,0x20);
                                    temp194 = ((var10 / 0x2) + temp193);
                                    temp195 = ((~((SHL(0x80,0x1) - 0x1) * EXP(0x100,((0x1 & var10) * 0x10))) & sload(temp194)) | (EXP(0x100,((0x1 & var10) * 0x10)) * 0x0));
                                    sstore(temp194,temp195);
                                    var7 = (0x1 + var7);
                                    goto label_0000238F;
                                }
                            }
                        }
                        else
                        {
                            var9 = (0x5 + var3);
                            var10 = var7;
                            assert((var7 < mapping_0x3[arg0].member_0x5));
                            mstore(0x0,var9);
                            temp200 = keccak256(0x0,0x20);
                            temp201 = sload(((var10 / 0x2) + temp200));
                            if ((0x0 > ((SHL(0x80,0x1) - 0x1) & temp201))) 
                            {
                                var7 = (0x1 + var7);
                                goto label_00002111;
                            }
                            else
                            {
                                var9 = (var3 + 0x4);
                                var8 = (sload(0x5) & (SHL(0xA0,0x1) - 0x1));
                                var10 = var7;
                                assert((var7 < mapping_0x3[arg0].member_0x4));
                                mstore(0x0,var9);
                                temp202 = keccak256(0x0,0x20);
                                if ((((SHL(0xA0,0x1) - 0x1) & sload((temp202 + var10))) == var8)) 
                                {
                                    var8 = ((SHL(0xA0,0x1) - 0x1) & msg.sender);
                                    var10 = (0x5 + var3);
                                    var11 = var7;
                                    assert((var7 < mapping_0x3[arg0].member_0x5));
                                    mstore(0x0,var10);
                                    temp203 = keccak256(0x0,0x20);
                                    temp204 = (0x10 * MOD(var11,0x2));
                                    temp205 = sload(((var11 / 0x2) + temp203));
                                    var12 = var8.call.gas(((((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (temp205 / EXP(0x100,temp204)))) == 0) * 0x8FC)).value(((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (temp205 / EXP(0x100,temp204)))))(0x80,0x0);
                                    if (var12) 
                                    {
                                        var7 = (0x1 + var7);
                                        goto label_00002111;
                                    }
                                    else
                                    {
                                        returndatacopy(0x0,0x0,returndatasize);
                                        revert(0x0,returndatasize);
                                    }
                                }
                                else
                                {
                                    var9 = (0x4 + var3);
                                    var10 = var7;
                                    assert((var7 < mapping_0x3[arg0].member_0x4));
                                    mstore(0x0,var9);
                                    temp206 = keccak256(0x0,0x20);
                                    temp207 = sload((temp206 + var10));
                                    var9 = ((SHL(0xA0,0x1) - 0x1) & temp207);
                                    var10 = this.address;
                                    var11 = msg.sender;
                                    var12 = (0x5 + var3);
                                    var13 = var7;
                                    assert((var7 < mapping_0x3[arg0].member_0x5));
                                    mstore(0x0,var12);
                                    temp208 = keccak256(0x0,0x20);
                                    temp209 = sload(((var13 / 0x2) + temp208));
                                    var12 = ((SHL(0x80,0x1) - 0x1) & temp209);
                                    var13 = ((SHL(0x80,0x1) - 0x1) & temp209);
                                    mstore(0x80,SHL(0xE0,0x70A08231));
                                    mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & var10)));
                                    var21 = ((SHL(0xA0,0x1) - 0x1) & var9);
                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var9)));
                                    if (delegatecall(gasleft,var21,0x80,0x24,0x80,0x20)) 
                                    {
                                        require((0x20 < returndatasize));
                                        temp210 = mload(0x80);
                                        if ((var13 < temp210)) 
                                        {
                                            var14 = (var9 & (SHL(0xA0,0x1) - 0x1));
                                            var15 = var11;
                                            var16 = var12;
                                            mstore(0xA4,(var11 & (SHL(0xA0,0x1) - 0x1)));
                                            mstore(0xC4,var12);
                                            mstore(0x80,0x44);
                                            mstore(0x40,0xE4);
                                            temp211 = mload(0xA0);
                                            mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp211)));
                                            var17 = 0x261C;
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
                            }
                        }
                    }
                }
                else
                {
                                                                 //-> label_000020BE:
                    // Not expired yet
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0xF);
                    mstore(0xC4,SHL(0x8A,0x139BDD08195E1C1A5C9959081E595D));
                    revert(0x80,0x64);
                }
            }
            else if (var6) 
            {
                goto label_000020BE;
            }
            else
            {
                goto label_000020FC;
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x23);
            callcodecopy(0xC4,0x2F14,0x23);
            revert(0x80,0x84);
        }
    }

}
