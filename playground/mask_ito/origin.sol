contract disassembler {

    function withdraw( bytes32 arg0,uint256 arg1) public return ()
    {
        var2 = arg0;
        var3 = arg1;
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & mapping_0x3[arg0].member_0x2))) 
        {
            var6 = (0x5 + var4);
            assert((arg1 < mapping_0x3[arg0].member_0x5));
            mstore(0x0,var6);
            temp1 = keccak256(0x0,0x20);
            var5 = ((SHL(0x80,0x1) - 0x1) & (sload(((arg1 / 0x2) + temp1)) / EXP(0x100,(0x10 * (arg1 & 0x1)))));
            if (((SHL(0x80,0x1) - 0x1) & (sload(((arg1 / 0x2) + temp1)) / EXP(0x100,(0x10 * (arg1 & 0x1)))))) 
            {
                var8 = func_00002621(mapping_0x3[arg0].member_0x0,0xE4,0x1C);
                var8 = func_00002621(mapping_0x3[arg0].member_0x1,0x0,0x80);
                var7 = var8;

                //ISSUE:WARNING:Block timestamp is referred.
                var8 = (block.timestamp > (var8 + sload(0x1)));
                if (var8) 
                {
                    if (var8) 
                    {
                                                                 //-> label_000008B8:
                        var9 = (0x4 + var4);
                        var10 = var3;
                        assert((var3 < mapping_0x3[arg0].member_0x4));
                        mstore(0x0,var9);
                        temp3 = keccak256(0x0,0x20);
                        var8 = ((SHL(0xA0,0x1) - 0x1) & sload((temp3 + var10)));
                        temp4 = ((SHL(0xA0,0x1) - 0x1) & sload((temp3 + var10)));
                        if ((temp4 == (sload(0x5) & (SHL(0xA0,0x1) - 0x1)))) 
                        {
                            var13 = msg.sender.call.gas((0x8FC * (var5 == 0))).value(var5)(0x80,0x0);
                            if (var13) 
                            {
                                var10 = (0x5 + var4);
                                var11 = var3;
                                assert((var3 < mapping_0x3[arg0].member_0x5));
                                mstore(0x0,var10);
                                temp5 = keccak256(0x0,0x20);
                                temp6 = EXP(0x100,(0x10 * MOD(var11,0x2)));
                                temp7 = ((0x0 * temp6) | (~((SHL(0x80,0x1) - 0x1) * temp6) & sload(((var11 / 0x2) + temp5))));
                                temp8 = ((var11 / 0x2) + temp5);
                                sstore(temp8,temp7);
                                mstore(0x80,var2);
                                mstore(0xA0,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & var8)));
                                mstore(0xC0,var5);
                                log(0x80,0x60,0xAB5315D16EF405A1F4E8C34017AF486F59F27097E003D2A1981AE682C2F36731);
                                return();
                            }
                            else
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                        }
                        else
                        {
                            var10 = var8;
                            var12 = msg.sender;
                            var13 = var5;
                            var14 = var5;
                            mstore(0x80,SHL(0xE0,0x70A08231));
                            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & this.address)));
                            var22 = ((SHL(0xA0,0x1) - 0x1) & var8);
                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var8)));
                            if (delegatecall(gasleft,var22,0x80,0x24,0x80,0x20)) 
                            {
                                require((0x20 < returndatasize));
                                temp9 = mload(0x80);
                                if ((var14 < temp9)) 
                                {
                                    mstore(0xA4,(var12 & (SHL(0xA0,0x1) - 0x1)));
                                    mstore(0xC4,var13);
                                    mstore(0x80,0x44);
                                    mstore(0x40,0xE4);
                                    temp10 = mload(0xA0);
                                    mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp10)));
                                    mstore(0x40,0x124);
                                    mstore(0xE4,0x20);
                                    mstore(0x104,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                    throw();
                                }
                                else
                                {
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
                    else
                    {
                                                                 //-> label_0000087A:
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0xF);
                        mstore(0xC4,SHL(0x8A,0x139BDD08195E1C1A5C9959081E595D));
                        revert(0x80,0x64);
                    }
                }
                else if (var7) 
                {
                    goto label_0000087A;
                }
                else
                {
                    goto label_000008B8;
                }
            }
            else
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x17);
                mstore(0xC4,0x4E6F6E65206F66207468697320746F6B656E206C656674000000000000000000);
                revert(0x80,0x64);
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x23);
            callcodecopy(0xC4,0x3068,0x23);
            revert(0x80,0x84);
        }
    }

    function FUNC_3EBF8962() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xA)));
    }

    uint256 public getUnlockTime;

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

    function setAdmin( address arg0) public return ()
    {
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
        {
            mapping_0x7[((SHL(0xA0,0x1) - 0x1) & arg0)] = 0x1;
            return();
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x15);
            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
            revert(0x80,0x64);
        }
    }

    function FUNC_8B4CB0EC( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4,uint256 arg5) public return (var0)
    {
        var2 = arg0;
        var6 = arg4;
        var7 = arg5;
        var10 = func_00002E86();
        var10 = 0xC0;
        mstore(0x40,0x100);
        mstore(0xC0,mapping_0x3[arg0]);
        mstore(0xE0,mapping_0x3[arg0].member_0x1);
        var13 = func_00002621(mapping_0x3[arg0],0xC8,0x1C);

        //ISSUE:WARNING:Block timestamp is referred.
        if (((var13 + sload(0x1)) < block.timestamp)) 
        {
            temp147 = mload(0xC0);
            var13 = func_00002621(temp147,0xE4,0x1C);

            //ISSUE:WARNING:Block timestamp is referred.
            if (((var13 + sload(0x1)) > block.timestamp)) 
            {
                temp148 = mload(0xE0);
                var12 = func_00002621(temp148,0x0,0x80);
                var11 = var12;
                if ((var12 > 0x0)) 
                {
                    mstore(0x100,SHL(0xE0,0x823B69F7));
                    mstore(0x104,msg.sender);
                    var19 = (mapping_0x3[arg0].member_0x3 & (SHL(0xA0,0x1) - 0x1));
                    require(extcodesize((mapping_0x3[arg0].member_0x3 & (SHL(0xA0,0x1) - 0x1))));
                    if (delegatecall(gasleft,var19,0x100,0x24,0x100,0x20)) 
                    {
                        require((0x20 < returndatasize));
                        temp149 = mload(0x100);
                        if ((0x1 == temp149)) 
                        {
                            temp150 = mload(0xC0);
                            var12 = func_00002621(temp150,0xA0,0x28);
                            mstore(0x120,var12);
                            mstore(0x140,SHL(0x60,msg.sender));
                            mstore(0x100,0x34);
                            mstore(0x40,0x154);
                            temp151 = mload(0x100);
                            temp152 = keccak256(0x120,temp151);
                            if ((arg1 == temp152)) 
                            {
                                mstore(0x174,SHL(0x60,msg.sender));
                                mstore(0x154,0x14);
                                mstore(0x40,0x188);
                                temp153 = mload(0x154);
                                temp154 = keccak256(0x174,temp153);
                                if ((arg3 == temp154)) 
                                {
                                    var13 = (0x4 + var9);
                                    assert((arg4 < mapping_0x3[arg0].member_0x4));
                                    mstore(0x0,var13);
                                    temp155 = keccak256(0x0,0x20);
                                    var12 = (sload((temp155 + arg4)) & (SHL(0xA0,0x1) - 0x1));
                                    var14 = (var9 + 0x6);
                                    var15 = (arg4 * 0x2);
                                    assert(((arg4 * 0x2) < mapping_0x3[arg0].member_0x6));
                                    mstore(0x0,var14);
                                    temp156 = keccak256(0x0,0x20);
                                    temp157 = (0x10 * MOD(var15,0x2));
                                    temp158 = sload(((var15 / 0x2) + temp156));
                                    var13 = ((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (temp158 / EXP(0x100,temp157))));
                                    var15 = (0x6 + var9);
                                    var16 = (0x1 + (0x2 * arg4));
                                    assert(((0x1 + (0x2 * arg4)) < mapping_0x3[arg0].member_0x6));
                                    mstore(0x0,var15);
                                    temp159 = keccak256(0x0,0x20);
                                    temp160 = sload(((var16 / 0x2) + temp159));
                                    temp161 = ((SHL(0x80,0x1) - 0x1) & (temp160 / EXP(0x100,(0x10 * (var16 & 0x1)))));
                                    var14 = temp161;
                                    if (((var12 & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & sload(0x5)))) 
                                    {
                                        if ((msg.value == ((SHL(0x80,0x1) - 0x1) & arg5))) 
                                        {
                                            goto label_00001BD6;
                                        }
                                        else
                                        {
                                            mstore(0x188,SHL(0xE5,0x461BCD));
                                            mstore(0x18C,0x20);
                                            mstore(0x1AC,0x10);
                                            mstore(0x1CC,SHL(0x81,0x27379032B737BAB3B41032BA3432B917));
                                            revert(0x188,0x64);
                                        }
                                    }
                                    else
                                    {
                                        mstore(0x188,SHL(0xE1,0x6EB1769F));
                                        mstore(0x18C,msg.sender);
                                        mstore(0x1AC,this.address);
                                        var23 = (var12 & (SHL(0xA0,0x1) - 0x1));
                                        require(extcodesize((var12 & (SHL(0xA0,0x1) - 0x1))));
                                        if (delegatecall(gasleft,var23,0x188,0x44,0x188,0x20)) 
                                        {
                                            require((0x20 < returndatasize));
                                            temp162 = mload(0x188);
                                            if (((arg5 & (SHL(0x80,0x1) - 0x1)) < temp162)) 
                                            {
                                                                 //-> label_00001BD6:
                                                var17 = func_00002914(((SHL(0x80,0x1) - 0x1) & var7),var14);
                                                var16 = func_00002853(var17,var13);
                                                var15 = var16;
                                                if ((var16 > 0x0)) 
                                                {
                                                    temp163 = mload((0x20 + var10));
                                                    var17 = func_00002621(temp163,0x80,0x80);
                                                    var16 = var17;
                                                    if ((var17 > var15)) 
                                                    {
                                                        if ((var11 > var15)) 
                                                        {
                                                            if ((var16 > var15)) 
                                                            {
                                                                 //-> label_00001C90:
                                                                var18 = (0x5 + var9);
                                                                var19 = var6;
                                                                assert((var6 < mapping_0x3[arg0].member_0x5));
                                                                mstore(0x0,var18);
                                                                temp164 = keccak256(0x0,0x20);
                                                                temp165 = (0x10 * MOD(var19,0x2));
                                                                temp166 = sload(((var19 / 0x2) + temp164));
                                                                var17 = func_0000277C(((SHL(0x80,0x1) - 0x1) & ((SHL(0x80,0x1) - 0x1) & (temp166 / EXP(0x100,temp165)))),((SHL(0x80,0x1) - 0x1) & var7));
                                                                var18 = (0x5 + var9);
                                                                var19 = var6;
                                                                assert((var6 < mapping_0x3[arg0].member_0x5));
                                                                mstore(0x0,var18);
                                                                temp167 = keccak256(0x0,0x20);
                                                                temp168 = EXP(0x100,(0x10 * MOD(var19,0x2)));
                                                                temp169 = ((((SHL(0x80,0x1) - 0x1) & var17) * temp168) | (~((SHL(0x80,0x1) - 0x1) * temp168) & sload(((var19 / 0x2) + temp167))));
                                                                temp170 = ((var19 / 0x2) + temp167);
                                                                sstore(temp170,temp169);
                                                                if ((0x0 == mapping_0x3[arg0].member_0x7[((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & msg.sender))])) 
                                                                {
                                                                    temp172 = mload((0x20 + var10));
                                                                    var21 = func_0000296D(var11,var15);
                                                                    var17 = func_000029CA(temp172,0x0,0x80,var21);
                                                                    mapping_0x3[arg0].member_0x1 = var17;
                                                                    mapping_0x3[arg0].member_0x7[msg.sender] = var15;
                                                                    if (((sload(0x5) & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & var12))) 
                                                                    {
                                                                        temp174 = mload((0x0 + var10));
                                                                        var21 = func_00002621(temp174,0x0,0xA0);
                                                                        mstore(0x188,var2);
                                                                        mstore(0x1A8,((SHL(0xA0,0x1) - 0x1) & msg.sender));
                                                                        mstore(0x1C8,((SHL(0xA0,0x1) - 0x1) & var12));
                                                                        mstore(0x1E8,((SHL(0xA0,0x1) - 0x1) & var21));
                                                                        mstore(0x208,(var7 & (SHL(0x80,0x1) - 0x1)));
                                                                        mstore(0x228,var15);
                                                                        log(0x188,0xC0,0xA6A9350E3CB78AB6117FF3F716716CB2A1C40E92008DF3C4F60E976EE6D56EDC);
                                                                        return(temp175);
                                                                    }
                                                                    else
                                                                    {
                                                                        mstore(0x1AC,(msg.sender & (SHL(0xA0,0x1) - 0x1)));
                                                                        mstore(0x1CC,(this.address & (SHL(0xA0,0x1) - 0x1)));
                                                                        mstore(0x1EC,(var7 & (SHL(0x80,0x1) - 0x1)));
                                                                        mstore(0x188,0x64);
                                                                        mstore(0x40,0x20C);
                                                                        temp176 = mload(0x1A8);
                                                                        mstore(0x1A8,(SHL(0xE0,0x23B872DD) | ((SHL(0xE0,0x1) - 0x1) & temp176)));
                                                                        mstore(0x40,0x24C);
                                                                        mstore(0x20C,0x20);
                                                                        mstore(0x22C,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                                                        throw();
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    mstore(0x188,SHL(0xE5,0x461BCD));
                                                                    mstore(0x18C,0x20);
                                                                    mstore(0x1AC,0xF);
                                                                    mstore(0x1CC,SHL(0x8A,0x105B1C9958591E481CDDD85C1C1959));
                                                                    revert(0x188,0x64);
                                                                }
                                                            }
                                                            else
                                                            {
                                                                 //-> label_00001C8C:
                                                                revert(0x0,0x0);
                                                            }
                                                        }
                                                        else
                                                        {
                                                            var15 = var11;
                                                            var18 = func_00002914(var11,var13);
                                                            var17 = func_00002853(var18,var14);
                                                            var7 = var17;
                                                                 //-> label_00001C83:
                                                            if ((var16 > var15)) 
                                                            {
                                                                goto label_00001C90;
                                                            }
                                                            else
                                                            {
                                                                goto label_00001C8C;
                                                            }
                                                        }
                                                    }
                                                    else
                                                    {
                                                        var15 = var16;
                                                        var18 = func_00002914(var16,var13);
                                                        var17 = func_00002853(var18,var14);
                                                        var7 = var17;
                                                        goto label_00001C83;
                                                    }
                                                }
                                                else
                                                {
                                                    mstore(0x188,SHL(0xE5,0x461BCD));
                                                    mstore(0x18C,0x20);
                                                    mstore(0x1AC,0x22);
                                                    callcodecopy(0x1CC,0x2EF2,0x22);
                                                    revert(0x188,0x84);
                                                }
                                            }
                                            else
                                            {
                                                mstore(0x188,SHL(0xE5,0x461BCD));
                                                mstore(0x18C,0x20);
                                                mstore(0x1AC,0x14);
                                                mstore(0x1CC,SHL(0x61,0x27379032B737BAB3B41030B63637BBB0B731B297));
                                                revert(0x188,0x64);
                                            }
                                        }
                                        else
                                        {
                                            returndatacopy(0x0,0x0,returndatasize);
                                            revert(0x0,returndatasize);
                                        }
                                    }
                                }
                                else
                                {
                                    mstore(0x188,SHL(0xE5,0x461BCD));
                                    mstore(0x18C,0x20);
                                    mstore(0x1AC,0x11);
                                    mstore(0x1CC,SHL(0x7A,0x15985B1A59185D1A5BDB8811985A5B1959));
                                    revert(0x188,0x64);
                                }
                            }
                            else
                            {
                                mstore(0x154,SHL(0xE5,0x461BCD));
                                mstore(0x158,0x20);
                                mstore(0x178,0xE);
                                mstore(0x198,SHL(0x92,0x15DC9BDB99C814185CDCDDDBDC99));
                                revert(0x154,0x64);
                            }
                        }
                        else
                        {
                            mstore(0x100,SHL(0xE5,0x461BCD));
                            mstore(0x104,0x20);
                            mstore(0x124,0xD);
                            mstore(0x144,SHL(0x9A,0x139BDD08145D585B1A599A5959));
                            revert(0x100,0x64);
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
                    mstore(0x100,SHL(0xE5,0x461BCD));
                    mstore(0x104,0x20);
                    mstore(0x124,0xC);
                    mstore(0x144,SHL(0xA0,0x4F7574206F662053746F636B));
                    revert(0x100,0x64);
                }
            }
            else
            {
                mstore(0x100,SHL(0xE5,0x461BCD));
                mstore(0x104,0x20);
                mstore(0x124,0x8);
                mstore(0x144,SHL(0xC1,0x22BC3834B932B217));
                revert(0x100,0x64);
            }
        }
        else
        {
            mstore(0x100,SHL(0xE5,0x461BCD));
            mstore(0x104,0x20);
            mstore(0x124,0xC);
            mstore(0x144,SHL(0xA1,0x2737BA1039BA30B93A32B217));
            revert(0x100,0x64);
        }
    }

    function FUNC_90E8F7C9() public return (var0)
    {
        var2 = 0x0;
        var3 = 0x0;
                                                                 //-> label_00001E97:
        if ((sload(0x8) < var3)) 
        {
            return(var2);
        }
        else
        {
            var8 = var3;
            assert((var3 < sload(0x8)));
            mstore(0x0,0x8);
            temp177 = keccak256(0x0,0x20);
            var5 = func_0000277C(var2,mapping_0x3[sload((temp177 + var8))].member_0x7[((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & msg.sender))]);
            var2 = var5;
            var3 = (0x1 + var3);
            goto label_00001E97;
        }
    }

    function FUNC_AE9F7034( uint256 arg0) public return ()
    {
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
        {
            sstore(0xA,(((SHL(0xA0,0x1) - 0x1) & arg0) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xA))));
            return();
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x15);
            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
            revert(0x80,0x64);
        }
    }

    function FUNC_B1CCC564( uint256 arg0) public return ()
    {
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
        {
            sstore(0x9,(((SHL(0xA0,0x1) - 0x1) & arg0) | (~(SHL(0xA0,0x1) - 0x1) & sload(0x9))));
            return();
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x15);
            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
            revert(0x80,0x64);
        }
    }

    function FUNC_BF5C2920() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0x2)));
    }

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
                if (var7) 
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

    function FUNC_D299F55F() public return (var0,var1)
    {
        mstore(0x40,(0x80 + (0x20 + (0x20 * sload(0x8)))));
        var3 = 0x80;
        mstore(0x80,sload(0x8));
        var8 = sload(0x8);
        if (sload(0x8)) 
        {
            temp214 = (0xA0 + (0x20 * var8));
            var6 = temp214;
            mstore(0x0,0x8);
            temp215 = keccak256(0x0,0x20);
            var8 = 0xA0;
            var7 = temp215;
                                                                 //-> label_00002514:
            mstore(var8,sload(var7));
            temp216 = (0x20 + var8);
            var8 = temp216;
            var7 = (0x1 + var7);
            if ((var6 > temp216)) 
            {
                goto label_00002514;
            }
            else
            {
                goto label_00002528;
            }
        }
        else
        {
                                                                 //-> label_00002528:
            return(var0,var3);
        }
    }

    function setUnlockTime( uint256 arg0) public return ()
    {
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
        {
            getUnlockTime = arg0;
            return();
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x15);
            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
            revert(0x80,0x64);
        }
    }

    function FUNC_FC369A30( uint256 arg0,uint256 arg1) public return ()
    {
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
        {
            if ((arg1 < 0x0)) 
            {
                return();
            }
            else
            {
                assert((0x0 < arg1));
                var6 = ((SHL(0xA0,0x1) - 0x1) & msg.data((0x0 + arg0)));
                if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
                {
                    if (((sload(0x5) & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & var6))) 
                    {
                        throw();
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE0,0x70A08231));
                        mstore(0x84,this.address);
                        var15 = (var6 & (SHL(0xA0,0x1) - 0x1));
                        require(extcodesize((var6 & (SHL(0xA0,0x1) - 0x1))));
                        if (delegatecall(gasleft,var15,0x80,0x24,0x80,0x20)) 
                        {
                            require((0x20 < returndatasize));
                            temp226 = mload(0x80);
                            var9 = var6;
                            var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0x2));
                            var12 = temp226;
                            var13 = temp226;
                            mstore(0x80,SHL(0xE0,0x70A08231));
                            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & this.address)));
                            var21 = ((SHL(0xA0,0x1) - 0x1) & var6);
                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var6)));
                            if (delegatecall(gasleft,var21,0x80,0x24,0x80,0x20)) 
                            {
                                require((0x20 < returndatasize));
                                temp227 = mload(0x80);
                                if ((var13 < temp227)) 
                                {
                                    mstore(0xA4,(var11 & (SHL(0xA0,0x1) - 0x1)));
                                    mstore(0xC4,var12);
                                    mstore(0x80,0x44);
                                    mstore(0x40,0xE4);
                                    temp228 = mload(0xA0);
                                    mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp228)));
                                    mstore(0x40,0x124);
                                    mstore(0xE4,0x20);
                                    mstore(0x104,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                    throw();
                                }
                                else
                                {
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
                            returndatacopy(0x0,0x0,returndatasize);
                            revert(0x0,returndatasize);
                        }
                    }
                }
                else
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x15);
                    mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
                    revert(0x80,0x64);
                }
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x15);
            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
            revert(0x80,0x64);
        }
    }


    //// private

    // return (arg0 >> arg1) & ((1 << arg2) + 1)
    function func_00002621( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var13 = func_000029E1(0x100,arg0);
        if (var13) // always true
        {
            return SHR(arg1,arg0) & (SHL(arg2,0x1) + ~0x0);
        }
        else
        {
            // "Value out of range UNBOX"
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x18);
            mstore(0xC4,0x56616C7565206F7574206F662072616E676520554E424F580000000000000000);
            revert(0x80,0x64);
        }
    }

    // return arg0*2>arg1 || arg0 == 256
    function func_000029E1( uint256 arg0,uint256 arg1) private return (var0)
    {
        return (SHL(arg0,0x1) > arg1) | (arg0 == 0x100);
    }

    function func_0000277C( uint256 arg0,uint256 arg1) private return (var0)
    {
        var10 = (arg1 + arg0);
        if ((arg0 < (arg1 + arg0))) 
        {
            return(var10);
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x1B);
            mstore(0xC4,0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            revert(0x80,0x64);
        }
    }

    function func_000027DF( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) private return (var0)
    {
        var22 = func_00002A42(0x0,0xA0,(arg0 & (SHL(0xA0,0x1) - 0x1)));
        var22 = func_00002A42(0xA0,0x28,SHR(0xD8,arg1));
        var22 = func_00002A42(0xC8,0x1C,arg2);
        var22 = func_00002A42(0xE4,0x1C,arg3);
        return((var22 | (var22 | (var22 | var22))));
    }

    function func_00002A42( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var27 = func_000029E1(arg1,arg2);
        if (var27) 
        {
            return(SHL(arg0,arg2));
        }
        else
        {
            temp45 = mload(0x40);
            mstore(temp45,SHL(0xE5,0x461BCD));
            mstore((temp45 + 0x4),0x20);
            mstore((temp45 + 0x24),0x16);
            mstore((temp45 + 0x44),SHL(0x53,0xACC2D8EACA40DEEAE840DECC40E4C2DCCECA40849EB));
            temp46 = mload(0x40);
            revert(temp46,(0x64 + (temp45 - temp46)));
        }
    }

    function func_0000282F( uint256 arg0,uint256 arg1) private return (var0)
    {
        var20 = func_00002A42(0x0,0x80,arg0);
        var20 = func_00002A42(0x80,0x80,arg1);
        return((var20 | var20));
    }

    function func_00002D71( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var16 = arg0;
        sstore(arg0,arg2);
        mstore(0x0,arg0);
        temp48 = keccak256(0x0,0x20);
        var19 = temp48;
        if (arg2) 
        {
            var18 = arg1;
            var20 = (arg1 + (0x20 * arg2));
                                                                 //-> label_00002D91:
            if ((var18 > var20)) 
            {
                goto label_00002DC6;
            }
            else
            {
                temp49 = mload(var18);
                sstore(var19,((temp49 & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & sload(var19))));
                var18 = (var18 + 0x20);
                var19 = (var19 + 0x1);
                goto label_00002D91;
            }
        }
        else
        {
                                                                 //-> label_00002DC6:
            var17 = 0x1F0B;
            var20 = var19;
            var19 = var17;
                                                                 //-> label_00002EA6:
            if ((var20 > var19)) 
            {
                return(var16);
            }
            else
            {
                sstore(var20,(~(SHL(0xA0,0x1) - 0x1) & sload(var20)));
                var20 = (0x1 + var20);
                goto label_00002EA6;
            }
        }
    }

    function func_00002DD2( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var16 = arg0;
        sstore(arg0,arg2);
        mstore(0x0,arg0);
        temp53 = keccak256(0x0,0x20);
        var19 = temp53;
        if (arg2) 
        {
            var18 = arg1;
            var20 = (arg1 + (0x20 * arg2));
            var21 = 0x0;
                                                                 //-> label_00002DFB:
            if ((var18 > var20)) 
            {
                                                                 //-> label_00002E45:
                if (var21) 
                {
                    sstore(var19,(~((SHL(0x80,0x1) - 0x1) * EXP(0x100,var21)) & sload(var19)));
                    temp54 = (0x10 + var21);
                    var19 = (((0xF + temp54) / 0x20) + var19);
                    var21 = ((0x1 - ((0xF + temp54) / 0x20)) * temp54);
                    goto label_00002E45;
                }
                else
                {
                    var17 = 0x1F0B;
                    var18 = var17;
                    goto label_00002EC4;
                }
            }
            else
            {
                temp55 = mload(var18);
                sstore(var19,((((SHL(0x80,0x1) - 0x1) & temp55) * EXP(0x100,var21)) | (~((SHL(0x80,0x1) - 0x1) * EXP(0x100,var21)) & sload(var19))));
                var18 = (0x20 + var18);
                temp56 = (0x10 + var21);
                var19 = (((0xF + temp56) / 0x20) + var19);
                var21 = ((0x1 - ((0xF + temp56) / 0x20)) * temp56);
                goto label_00002DFB;
            }
        }
        else
        {
            var17 = 0x1F0B;
                                                                 //-> label_00002EC4:
            var18 = 0xC98;
            var20 = var19;
            var19 = var18;
                                                                 //-> label_00002ECA:
            if ((var20 > var19)) 
            {
                return(var16);
            }
            else
            {
                sstore(var20,0x0);
                var20 = (0x1 + var20);
                goto label_00002ECA;
            }
        }
    }

    function func_00002853( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg1 > 0x0)) 
        {
            assert(arg1);
            return((arg0 / arg1));
        }
        else
        {
            temp67 = mload(0x40);
            mstore(temp67,SHL(0xE5,0x461BCD));
            mstore((temp67 + 0x4),0x20);
            mstore((temp67 + 0x24),0x1A);
            mstore((temp67 + 0x44),0x536166654D6174683A206469766973696F6E206279207A65726F000000000000);
            temp68 = mload(0x40);
            revert(temp68,(0x64 + (temp67 - temp68)));
        }
    }

    function func_00002E86() private return (var0)
    {
        mstore(0x40,0xC0);
        mstore(0x80,0x0);
        mstore(0xA0,0x0);
        return(0x80);
    }

    function func_00002914( uint256 arg0,uint256 arg1) private return (var0)
    {
        if (arg0) 
        {
            var21 = (arg1 * arg0);
            var24 = (arg1 * arg0);
            assert(arg0);
            if (((var24 / arg0) == arg1)) 
            {
                var20 = var21;
                                                                 //-> label_000027D9:
                return(var20);
            }
            else
            {
                mstore(0x188,SHL(0xE5,0x461BCD));
                mstore(0x18C,0x20);
                mstore(0x1AC,0x21);
                callcodecopy(0x1CC,0x2FE4,0x21);
                revert(0x188,0x84);
            }
        }
        else
        {
            var20 = 0x0;
            goto label_000027D9;
        }
    }

    function func_0000296D( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            mstore(0x188,SHL(0xE5,0x461BCD));
            mstore(0x18C,0x20);
            mstore(0x1AC,0x1E);
            mstore(0x1CC,0x536166654D6174683A207375627472616374696F6E206F766572666C6F770000);
            revert(0x188,0x64);
        }
    }

    function func_000029CA( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) private return (var0)
    {
        return(((~SHL(arg1,(~0x0 + SHL(arg2,0x1))) & arg0) | SHL(arg1,arg3)));
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        if ((msg.data.length < 0x4)) 
        {
                                                                 //-> label_000000FE:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));
            if ((0x8B4CB0EC > SHR(0xE0,msg.data(0x0)))) 
            {
                if ((0x602BC62B > var0)) 
                {

                    //ISSUE:COMMENT: Function withdraw()
                    if ((0x40CF020 == var0)) 
                    {
                        require(!msg.value);
                        require((0x40 < (msg.data.length - 0x4)));
                        withdraw(msg.data(0x4),msg.data(0x24));
                                                                 //-> label_00000133:
                        stop();
                    }

                    //ISSUE:COMMENT: Function FUNC_38A6FC32()
                    else if ((0x38A6FC32 == var0)) 
                    {
                        require(!msg.value);
                        require((0x20 < (msg.data.length - 0x4)));
                        var2 = ((SHL(0xA0,0x1) - 0x1) & msg.data(0x4));
                        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x2)))) 
                        {
                            if (((sload(0x5) & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & var2))) 
                            {
                                throw();
                            }
                            else
                            {
                                mstore(0x80,SHL(0xE0,0x70A08231));
                                mstore(0x84,this.address);
                                var11 = (var2 & (SHL(0xA0,0x1) - 0x1));
                                require(extcodesize((var2 & (SHL(0xA0,0x1) - 0x1))));
                                if (delegatecall(gasleft,var11,0x80,0x24,0x80,0x20)) 
                                {
                                    require((0x20 < returndatasize));
                                    temp11 = mload(0x80);
                                    var5 = var2;
                                    var7 = ((SHL(0xA0,0x1) - 0x1) & sload(0x2));
                                    var8 = temp11;
                                    var9 = temp11;
                                    mstore(0x80,SHL(0xE0,0x70A08231));
                                    mstore(0x84,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & this.address)));
                                    var17 = ((SHL(0xA0,0x1) - 0x1) & var2);
                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var2)));
                                    if (delegatecall(gasleft,var17,0x80,0x24,0x80,0x20)) 
                                    {
                                        require((0x20 < returndatasize));
                                        temp12 = mload(0x80);
                                        if ((var9 < temp12)) 
                                        {
                                            mstore(0xA4,(var7 & (SHL(0xA0,0x1) - 0x1)));
                                            mstore(0xC4,var8);
                                            mstore(0x80,0x44);
                                            mstore(0x40,0xE4);
                                            temp13 = mload(0xA0);
                                            mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp13)));
                                            mstore(0x40,0x124);
                                            mstore(0xE4,0x20);
                                            mstore(0x104,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                            throw();
                                        }
                                        else
                                        {
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
                                    returndatacopy(0x0,0x0,returndatasize);
                                    revert(0x0,returndatasize);
                                }
                            }
                        }
                        else
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x15);
                            mstore(0xC4,SHL(0x58,0x436F6E74726163742043726561746F72204F6E6C79));
                            revert(0x80,0x64);
                        }
                    }

                    //ISSUE:COMMENT: Function FUNC_3EBF8962()
                    else if ((0x3EBF8962 == var0)) 
                    {
                        require(!msg.value);
                        var2 = FUNC_3EBF8962();
                                                                 //-> label_0000017D:
                        mstore(0x80,(var2 & (SHL(0xA0,0x1) - 0x1)));
                        RETURN(0x80,0x20);
                    }

                    //ISSUE:COMMENT: Function claim()
                    else if ((0x4E71D92D == var0)) 
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
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x10);
                            mstore(0xC4,SHL(0x82,0x139BDD081C995B19585CD959081E595D));
                            revert(0x80,0x64);
                        }
                    }
                    else
                    {
                        goto label_000000FE;
                    }
                }

                //ISSUE:COMMENT: Function getUnlockTime()
                else if ((0x602BC62B == var0)) 
                {
                    require(!msg.value);
                    var1 = getUnlockTime();
                                                                 //-> label_000001AE:
                    mstore(0x80,var1);
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function FUNC_639F8079()
                else if ((0x639F8079 == var0)) 
                {
                    require((0x160 < (msg.data.length - 0x4)));
                    var3 = msg.data(0x24);
                    var4 = msg.data(0x44);
                    var5 = (0x4 + var3);
                    var8 = msg.data(0x64);
                    require((SHL(0x20,0x1) > msg.data(0x64)));
                    var8 = (0x4 + var8);
                    require((var5 > (var8 + 0x20)));
                    var8 = msg.data(var8);
                    var7 = (0x20 + var8);
                    require(!((var8 > SHL(0x20,0x1)) | (((0x20 + var8) + var8) > var5)));
                    mstore(0x40,(0x80 + (0x20 + (((0x1F + var8) / 0x20) * 0x20))));
                    mstore(0x80,var8);
                    calldatacopy(0xA0,var7,var8);
                    mstore((0xA0 + var8),0x0);
                    var5 = 0x80;
                    var6 = var5;
                    var9 = msg.data(0x84);
                    require((SHL(0x20,0x1) > msg.data(0x84)));
                    var9 = (0x4 + var9);
                    require((var6 > (var9 + 0x20)));
                    var9 = msg.data(var9);
                    var8 = (0x20 + var9);
                    require(!((var9 > SHL(0x20,0x1)) | (((0x20 + var9) + var9) > var6)));
                    temp24 = mload(0x40);
                    mstore(0x40,(temp24 + (0x20 + (((0x1F + var9) / 0x20) * 0x20))));
                    mstore(temp24,var9);
                    calldatacopy((0x20 + temp24),var8,var9);
                    mstore(((0x20 + temp24) + var9),0x0);
                    var6 = temp24;
                    var7 = var6;
                    var10 = msg.data(0xA4);
                    require((SHL(0x20,0x1) > msg.data(0xA4)));
                    var10 = (0x4 + var10);
                    require((var7 > (var10 + 0x20)));
                    var10 = msg.data(var10);
                    var9 = (0x20 + var10);
                    require(!((var10 > SHL(0x20,0x1)) | (((0x20 + var10) + (var10 * 0x20)) > var7)));
                    temp27 = mload(0x40);
                    mstore(0x40,(temp27 + (0x20 + (0x20 * var10))));
                    mstore(temp27,var10);
                    calldatacopy((0x20 + temp27),var9,(0x20 * var10));
                    mstore(((0x20 + temp27) + (0x20 * var10)),0x0);
                    var7 = temp27;
                    var8 = var7;
                    var11 = msg.data(0xC4);
                    require((SHL(0x20,0x1) > msg.data(0xC4)));
                    var11 = (0x4 + var11);
                    require((var8 > (var11 + 0x20)));
                    var11 = msg.data(var11);
                    var10 = (0x20 + var11);
                    require(!((var11 > SHL(0x20,0x1)) | (((0x20 + var11) + (var11 * 0x20)) > var8)));
                    temp30 = mload(0x40);
                    mstore(0x40,(temp30 + (0x20 + (0x20 * var11))));
                    mstore(temp30,var11);
                    calldatacopy((0x20 + temp30),var10,(0x20 * var11));
                    mstore(((0x20 + temp30) + (0x20 * var11)),0x0);
                    var8 = temp30;
                    var9 = ((SHL(0xA0,0x1) - 0x1) & msg.data(0xE4));
                    var10 = msg.data(0x104);
                    var11 = msg.data(0x124);
                    var12 = (msg.data(0x144) & (SHL(0xA0,0x1) - 0x1));
                    if ((0x1 == uint8(mapping_0x7[msg.sender]))) 
                    {
                        sstore(0x0,uint32((uint32(sload(0x0)) + 0x1)));
                        temp32 = mload(0x40);
                        mstore((temp32 + 0x20),SHL(0x60,msg.sender));

                        //ISSUE:WARNING:Block timestamp is referred.
                        mstore((temp32 + 0x34),block.timestamp);
                        mstore((temp32 + 0x54),(~(SHL(0xE0,0x1) - 0x1) & SHL(0xE0,uint32((uint32(sload(0x0)) + 0x1)))));
                        mstore((temp32 + 0x58),sload(0x4));
                        temp33 = mload(0x40);
                        mstore(temp33,(0x58 + (temp32 - temp33)));
                        mstore(0x40,(0x78 + temp32));
                        temp34 = mload(temp33);
                        var13 = keccak256((0x20 + temp33),temp34);
                        if ((var3 < var4)) 
                        {
                            if ((var10 > var11)) 
                            {
                                if ((var10 < SHL(0x80,0x1))) 
                                {
                                    temp35 = mload(0x40);
                                    mstore(temp35,SHL(0xE1,0x6EB1769F));
                                    mstore((temp35 + 0x4),msg.sender);
                                    mstore((temp35 + 0x24),this.address);
                                    temp36 = mload(0x40);
                                    var14 = var10;
                                    var19 = temp36;
                                    var20 = ((temp35 - temp36) + 0x44);
                                    var21 = temp36;
                                    var22 = (var9 & (SHL(0xA0,0x1) - 0x1));
                                    require(extcodesize((var9 & (SHL(0xA0,0x1) - 0x1))));
                                    if (delegatecall(gasleft,var22,var21,var20,var19,0x20)) 
                                    {
                                        var15 = mload(0x40);
                                        require((0x20 < returndatasize));
                                        temp37 = mload(var15);
                                        if ((var14 < temp37)) 
                                        {
                                            temp38 = mload(var7);
                                            if ((temp38 > 0x0)) 
                                            {
                                                temp39 = mload(var7);
                                                temp40 = mload(var8);
                                                if ((temp40 == (0x2 * temp39))) 
                                                {
                                                    mstore(0x0,var13);
                                                    mstore(0x20,0x3);
                                                    temp43 = keccak256(0x0,0x40);
                                                    temp41 = mload(0x40);
                                                    mstore(temp41,SHL(0xE2,0x1B53398F));
                                                    temp42 = mload(0x40);
                                                    var14 = temp43;
                                                    var19 = temp42;
                                                    var20 = ((temp41 - temp42) + 0x4);
                                                    var21 = temp42;
                                                    var22 = (sload(0x9) & (SHL(0xA0,0x1) - 0x1));
                                                    require(extcodesize((sload(0x9) & (SHL(0xA0,0x1) - 0x1))));
                                                    if (delegatecall(gasleft,var22,var21,var20,var19,0x20)) 
                                                    {
                                                        var15 = mload(0x40);
                                                        require((0x20 < returndatasize));
                                                        temp44 = mload(var15);
                                                        var15 = func_000027DF(var9,temp44,var3,var4);
                                                        mapping_0x3[var13] = var15;
                                                        var15 = func_0000282F(var10,var11);
                                                        mapping_0x3[var13].member_0x1 = var15;
                                                        mapping_0x3[var13].member_0x2 = (msg.sender | (~(SHL(0xA0,0x1) - 0x1) & mapping_0x3[var13].member_0x2));
                                                        temp47 = mload(var7);
                                                        var15 = func_00002D71((var14 + 0x4),(var7 + 0x20),temp47);
                                                        mapping_0x3[var13].member_0x3 = ((var12 & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & mapping_0x3[var13].member_0x3));
                                                        var15 = 0x0;
                                                                 //-> label_0000104E:
                                                        temp50 = mload(var7);
                                                        if ((temp50 < var15)) 
                                                        {
                                                            var15 = 0x0;
                                                                 //-> label_0000118B:
                                                            temp51 = mload(var8);
                                                            if ((temp51 < var15)) 
                                                            {
                                                                temp52 = mload(var8);
                                                                var15 = func_00002DD2((var14 + 0x6),(var8 + 0x20),temp52);
                                                                var15 = 0x1385;
                                                                temp57 = mload(0x40);
                                                                mstore((temp57 + 0x24),(msg.sender & (SHL(0xA0,0x1) - 0x1)));
                                                                mstore((temp57 + 0x44),(this.address & (SHL(0xA0,0x1) - 0x1)));
                                                                mstore((temp57 + 0x64),var10);
                                                                temp58 = mload(0x40);
                                                                mstore(temp58,(0x64 + (temp57 - temp58)));
                                                                mstore(0x40,(temp57 + 0x84));
                                                                temp59 = mload((temp58 + 0x20));
                                                                mstore((temp58 + 0x20),(SHL(0xE0,0x23B872DD) | ((SHL(0xE0,0x1) - 0x1) & temp59)));
                                                                temp60 = mload(0x40);
                                                                mstore(0x40,(0x40 + temp60));
                                                                mstore(temp60,0x20);
                                                                mstore((0x20 + temp60),0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                                                throw();
                                                            }
                                                            else
                                                            {
                                                                var18 = var8;
                                                                var19 = var15;
                                                                temp61 = mload(var8);
                                                                assert((var15 < temp61));
                                                                temp62 = (0x20 + (0x20 * var19));
                                                                temp63 = mload((temp62 + var18));
                                                                var18 = ((SHL(0x80,0x1) - 0x1) & temp63);
                                                                var19 = var8;
                                                                var20 = (0x1 + var15);
                                                                temp64 = mload(var8);
                                                                assert(((0x1 + var15) < temp64));
                                                                temp65 = (0x20 + (0x20 * var20));
                                                                temp66 = mload((temp65 + var19));
                                                                var17 = func_00002853(var18,((SHL(0x80,0x1) - 0x1) & temp66));
                                                                var16 = var17;
                                                                var19 = var8;
                                                                var20 = (0x1 + var15);
                                                                temp69 = mload(var8);
                                                                assert(((0x1 + var15) < temp69));
                                                                temp70 = (0x20 + (0x20 * var20));
                                                                temp71 = mload((temp70 + var19));
                                                                var19 = ((SHL(0x80,0x1) - 0x1) & temp71);
                                                                var20 = var8;
                                                                var21 = var15;
                                                                temp72 = mload(var8);
                                                                assert((var15 < temp72));
                                                                temp73 = (0x20 + (0x20 * var21));
                                                                temp74 = mload((temp73 + var20));
                                                                var18 = func_00002853(var19,((SHL(0x80,0x1) - 0x1) & temp74));
                                                                var17 = var18;
                                                                var18 = var8;
                                                                var19 = var15;
                                                                temp75 = mload(var8);
                                                                assert((var15 < temp75));
                                                                temp76 = (0x20 + (0x20 * var19));
                                                                temp77 = mload((temp76 + var18));
                                                                if ((0x1 == ((SHL(0x80,0x1) - 0x1) & temp77))) 
                                                                {
                                                                    var18 = var8;
                                                                    var19 = (0x1 + var15);
                                                                    temp96 = mload(var8);
                                                                    assert(((0x1 + var15) < temp96));
                                                                    temp97 = (0x20 + (0x20 * var19));
                                                                    temp98 = mload((temp97 + var18));
                                                                    require((var17 == ((SHL(0x80,0x1) - 0x1) & temp98)));
                                                                    goto label_00001260;
                                                                }
                                                                else
                                                                {
                                                                    var18 = var8;
                                                                    var19 = (0x1 + var15);
                                                                    temp78 = mload(var8);
                                                                    assert(((0x1 + var15) < temp78));
                                                                    temp79 = (0x20 + (0x20 * var19));
                                                                    temp80 = mload((temp79 + var18));
                                                                    if ((0x1 == ((SHL(0x80,0x1) - 0x1) & temp80))) 
                                                                    {
                                                                        var18 = var8;
                                                                        var19 = var15;
                                                                        temp93 = mload(var8);
                                                                        assert((var15 < temp93));
                                                                        temp94 = (0x20 + (0x20 * var19));
                                                                        temp95 = mload((temp94 + var18));
                                                                        require((var16 == ((SHL(0x80,0x1) - 0x1) & temp95)));
                                                                 //-> label_00001260:
                                                                        goto label_00001349;
                                                                    }
                                                                    else
                                                                    {
                                                                        var18 = var8;
                                                                        var19 = var15;
                                                                        temp81 = mload(var8);
                                                                        assert((var15 < temp81));
                                                                        temp82 = (0x20 + (0x20 * var19));
                                                                        temp83 = mload((temp82 + var18));
                                                                        var18 = ((SHL(0x80,0x1) - 0x1) & temp83);
                                                                        var19 = var8;
                                                                        var20 = (0x1 + var15);
                                                                        temp84 = mload(var8);
                                                                        assert(((0x1 + var15) < temp84));
                                                                        temp85 = (0x20 + (0x20 * var20));
                                                                        temp86 = mload((temp85 + var19));
                                                                        require(!((var16 * ((SHL(0x80,0x1) - 0x1) & temp86)) == var18));
                                                                        var18 = var8;
                                                                        var19 = (0x1 + var15);
                                                                        temp87 = mload(var8);
                                                                        assert(((0x1 + var15) < temp87));
                                                                        temp88 = (0x20 + (0x20 * var19));
                                                                        temp89 = mload((temp88 + var18));
                                                                        var18 = ((SHL(0x80,0x1) - 0x1) & temp89);
                                                                        var19 = var8;
                                                                        var20 = var15;
                                                                        temp90 = mload(var8);
                                                                        assert((var15 < temp90));
                                                                        temp91 = (0x20 + (0x20 * var20));
                                                                        temp92 = mload((temp91 + var19));
                                                                        require(!((var17 * ((SHL(0x80,0x1) - 0x1) & temp92)) == var18));
                                                                 //-> label_00001349:
                                                                        var15 = (0x2 + var15);
                                                                        goto label_0000118B;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        else
                                                        {
                                                            temp99 = mload(var7);
                                                            var16 = (sload(0x5) & (SHL(0xA0,0x1) - 0x1));
                                                            var17 = var7;
                                                            var18 = var15;
                                                            assert((var15 < temp99));
                                                            temp100 = (0x20 + (0x20 * var18));
                                                            temp101 = mload((temp100 + var17));
                                                            if ((((SHL(0xA0,0x1) - 0x1) & temp101) == var16)) 
                                                            {
                                                                 //-> label_0000114A:
                                                                mapping_0x3[var13].member_0x5 = (mapping_0x3[var13].member_0x5 + 0x1);
                                                                mstore(0x0,(var14 + 0x5));
                                                                temp102 = keccak256(0x0,0x20);
                                                                sstore(((mapping_0x3[var13].member_0x5 / 0x2) + temp102),(sload(((mapping_0x3[var13].member_0x5 / 0x2) + temp102)) & ~((SHL(0x80,0x1) - 0x1) * EXP(0x100,(0x10 * (0x1 & sload((var14 + 0x5))))))));
                                                                var15 = (0x1 + var15);
                                                                goto label_0000104E;
                                                            }
                                                            else
                                                            {
                                                                var17 = var7;
                                                                var18 = var15;
                                                                temp103 = mload(var7);
                                                                assert((var15 < temp103));
                                                                temp104 = (0x20 + (0x20 * var18));
                                                                temp105 = mload((temp104 + var17));
                                                                temp106 = mload(0x40);
                                                                mstore(temp106,SHL(0xE0,0x18160DDD));
                                                                var21 = mload(0x40);
                                                                var22 = ((0x4 + temp106) - var21);
                                                                var23 = var21;
                                                                var24 = ((SHL(0xA0,0x1) - 0x1) & temp105);
                                                                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & temp105)));
                                                                if (delegatecall(gasleft,var24,var23,var22,var21,0x20)) 
                                                                {
                                                                    var17 = mload(0x40);
                                                                    require((0x20 < returndatasize));
                                                                    temp108 = mload(var17);
                                                                    if ((temp108 > 0x0)) 
                                                                    {
                                                                        goto label_0000114A;
                                                                    }
                                                                    else
                                                                    {
                                                                        temp109 = mload(0x40);
                                                                        mstore(temp109,SHL(0xE5,0x461BCD));
                                                                        mstore((temp109 + 0x4),0x20);
                                                                        mstore((temp109 + 0x24),0x11);
                                                                        mstore((temp109 + 0x44),SHL(0x7C,0x4E6F7420612076616C696420455243323));
                                                                        temp110 = mload(0x40);
                                                                        revert(temp110,(0x64 + (temp109 - temp110)));
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
                                                    else
                                                    {
                                                        returndatacopy(0x0,0x0,returndatasize);
                                                        revert(0x0,returndatasize);
                                                    }
                                                }
                                                else
                                                {
                                                    temp111 = mload(0x40);
                                                    mstore(temp111,SHL(0xE5,0x461BCD));
                                                    mstore((0x4 + temp111),0x20);
                                                    mstore((0x20 + (0x4 + temp111)),0x2B);
                                                    callcodecopy((0x20 + (0x20 + (0x4 + temp111))),0x3005,0x2B);
                                                    temp112 = mload(0x40);
                                                    revert(temp112,((0x40 + (0x20 + (0x20 + (0x4 + temp111)))) - temp112));
                                                }
                                            }
                                            else
                                            {
                                                temp113 = mload(0x40);
                                                mstore(temp113,SHL(0xE5,0x461BCD));
                                                mstore((0x4 + temp113),0x20);
                                                mstore((0x20 + (0x4 + temp113)),0x27);
                                                callcodecopy((0x20 + (0x20 + (0x4 + temp113))),0x2F37,0x27);
                                                temp114 = mload(0x40);
                                                revert(temp114,((0x40 + (0x20 + (0x20 + (0x4 + temp113)))) - temp114));
                                            }
                                        }
                                        else
                                        {
                                            temp115 = mload(0x40);
                                            mstore(temp115,SHL(0xE5,0x461BCD));
                                            mstore((temp115 + 0x4),0x20);
                                            mstore((temp115 + 0x24),0x15);
                                            mstore((temp115 + 0x44),SHL(0x58,0x496E737566666369656E7420616C6C6F77616E6365));
                                            temp116 = mload(0x40);
                                            revert(temp116,(0x64 + (temp115 - temp116)));
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
                                    temp117 = mload(0x40);
                                    mstore(temp117,SHL(0xE5,0x461BCD));
                                    mstore((0x4 + temp117),0x20);
                                    mstore((0x20 + (0x4 + temp117)),0x35);
                                    callcodecopy((0x20 + (0x20 + (0x4 + temp117))),0x2F5E,0x35);
                                    temp118 = mload(0x40);
                                    revert(temp118,((0x40 + (0x20 + (0x20 + (0x4 + temp117)))) - temp118));
                                }
                            }
                            else
                            {
                                temp119 = mload(0x40);
                                mstore(temp119,SHL(0xE5,0x461BCD));
                                mstore((0x4 + temp119),0x20);
                                mstore((0x20 + (0x4 + temp119)),0x38);
                                callcodecopy((0x20 + (0x20 + (0x4 + temp119))),0x3030,0x38);
                                temp120 = mload(0x40);
                                revert(temp120,((0x40 + (0x20 + (0x20 + (0x4 + temp119)))) - temp120));
                            }
                        }
                        else
                        {
                            temp121 = mload(0x40);
                            mstore(temp121,SHL(0xE5,0x461BCD));
                            mstore((0x4 + temp121),0x20);
                            mstore((0x20 + (0x4 + temp121)),0x2B);
                            callcodecopy((0x20 + (0x20 + (0x4 + temp121))),0x2F93,0x2B);
                            temp122 = mload(0x40);
                            revert(temp122,((0x40 + (0x20 + (0x20 + (0x4 + temp121)))) - temp122));
                        }
                    }
                    else
                    {
                        temp123 = mload(0x40);
                        mstore(temp123,SHL(0xE5,0x461BCD));
                        mstore((temp123 + 0x4),0x20);
                        mstore((temp123 + 0x24),0xE);
                        mstore((temp123 + 0x44),SHL(0x92,0x139BDD08105D5D1A1BDC9A5E9959));
                        temp124 = mload(0x40);
                        revert(temp124,(0x64 + (temp123 - temp124)));
                    }
                }

                //ISSUE:COMMENT: Function FUNC_6BFDAECE()
                else if ((0x6BFDAECE == var0)) 
                {
                    require(!msg.value);
                    var3 = (msg.data.length - 0x4);
                    require((0x20 < (msg.data.length - 0x4)));
                    FUNC_6BFDAECE(msg.data(0x4));
                    var7 = mload(0x40);
                    mstore((0x20 + var7),msg.data(0x4));
                    mstore((0x20 + (0x20 + var7)),var3);
                    mstore((0x20 + (0x20 + (0x20 + var7))),var4);
                    mstore((0x20 + (0x20 + (0x20 + (0x20 + var7)))),var5);
                    var9 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var7)))));
                    mstore(var7,((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var7)))))) - var7));
                    temp136 = mload(0x45D);
                    mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var7)))))),temp136);
                    var10 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + var7)))))));
                    temp137 = mload(0x45D);
                    var12 = (0x20 * temp137);
                    var13 = (0x20 * temp137);
                    var16 = 0x0;
                                                                 //-> label_000004A9:
                    if ((var13 < var16)) 
                    {
                        temp138 = (var12 + var10);
                        mstore(var9,(temp138 - var7));
                        temp139 = mload(var6);
                        mstore(temp138,temp139);
                        var10 = (0x20 + temp138);
                        temp140 = mload(var6);
                        var12 = (0x20 * temp140);
                        var13 = (0x20 * temp140);
                        var14 = (0x20 + temp138);
                        var15 = (0x20 + var6);
                        var16 = 0x0;
                                                                 //-> label_000004E8:
                        if ((var13 < var16)) 
                        {
                            temp141 = (var12 + var10);
                            temp142 = mload(0x40);
                            RETURN(temp142,(temp141 - temp142));
                        }
                        else
                        {
                            temp143 = mload((var16 + var15));
                            mstore((var16 + var14),temp143);
                            var16 = (0x20 + var16);
                            goto label_000004E8;
                        }
                    }
                    else
                    {
                        temp144 = mload((var16 + var15));
                        mstore((var16 + var14),temp144);
                        var16 = (0x20 + var16);
                        goto label_000004A9;
                    }
                }

                //ISSUE:COMMENT: Function setAdmin()
                else if ((0x704B6C02 == var0)) 
                {
                    require(!msg.value);
                    require((0x20 < (msg.data.length - 0x4)));
                    setAdmin(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)));
                    goto label_00000133;
                }
                else
                {
                    goto label_000000FE;
                }
            }
            else if ((0xBF5C2920 > var0)) 
            {

                //ISSUE:COMMENT: Function FUNC_8B4CB0EC()
                if ((0x8B4CB0EC == var0)) 
                {
                    require((0xC0 < (msg.data.length - 0x4)));
                    var1 = FUNC_8B4CB0EC(msg.data(0x4),msg.data(0x24),msg.data(0x44),msg.data(0x64),msg.data(0x84),((SHL(0x80,0x1) - 0x1) & msg.data(0xA4)));
                    goto label_000001AE;
                }

                //ISSUE:COMMENT: Function FUNC_90E8F7C9()
                else if ((0x90E8F7C9 == var0)) 
                {
                    require(!msg.value);
                    var1 = FUNC_90E8F7C9();
                    goto label_000001AE;
                }

                //ISSUE:COMMENT: Function FUNC_AE9F7034()
                else if ((0xAE9F7034 == var0)) 
                {
                    require(!msg.value);
                    require((0x20 < (msg.data.length - 0x4)));
                    FUNC_AE9F7034(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)));
                    goto label_00000133;
                }

                //ISSUE:COMMENT: Function FUNC_B1CCC564()
                else if ((0xB1CCC564 == var0)) 
                {
                    require(!msg.value);
                    require((0x20 < (msg.data.length - 0x4)));
                    FUNC_B1CCC564(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)));
                    goto label_00000133;
                }
                else
                {
                    goto label_000000FE;
                }
            }

            //ISSUE:COMMENT: Function FUNC_BF5C2920()
            else if ((0xBF5C2920 == var0)) 
            {
                require(!msg.value);
                var2 = FUNC_BF5C2920();
                goto label_0000017D;
            }

            //ISSUE:COMMENT: Function FUNC_CC0CAB4C()
            else if ((0xCC0CAB4C == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                FUNC_CC0CAB4C(msg.data(0x4));
                goto label_00000133;
            }

            //ISSUE:COMMENT: Function FUNC_D299F55F()
            else if ((0xD299F55F == var0)) 
            {
                require(!msg.value);
                (var0,var1) = FUNC_D299F55F();
                temp217 = mload(0x40);
                mstore(temp217,0x20);
                temp218 = mload(var1);
                mstore((temp217 + 0x20),temp218);
                temp219 = mload(var1);
                var4 = (temp217 + 0x40);
                var6 = (temp219 * 0x20);
                var7 = (temp219 * 0x20);
                var8 = (temp217 + 0x40);
                var9 = (0x20 + var1);
                var10 = 0x0;
                                                                 //-> label_00000684:
                if ((var7 < var10)) 
                {
                    temp220 = (var6 + var4);
                    temp221 = mload(0x40);
                    RETURN(temp221,(temp220 - temp221));
                }
                else
                {
                    temp222 = mload((var10 + var9));
                    mstore((var10 + var8),temp222);
                    var10 = (0x20 + var10);
                    goto label_00000684;
                }
            }

            //ISSUE:COMMENT: Function setUnlockTime()
            else if ((0xDACE4557 == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                setUnlockTime(msg.data(0x4));
                goto label_00000133;
            }

            //ISSUE:COMMENT: Function FUNC_FC369A30()
            else if ((0xFC369A30 == var0)) 
            {
                require(!msg.value);
                var3 = (msg.data.length - 0x4);
                require((0x20 < (msg.data.length - 0x4)));
                temp223 = (0x4 + var3);
                var2 = temp223;
                var5 = msg.data(0x4);
                require((SHL(0x20,0x1) > msg.data(0x4)));
                var5 = (0x4 + var5);
                require((var2 > (var5 + 0x20)));
                var5 = msg.data(var5);
                var4 = (0x20 + var5);
                require(!((var5 > SHL(0x20,0x1)) | (((0x20 + var5) + (var5 * 0x20)) > var2)));
                FUNC_FC369A30(var4,var5);
                goto label_00000133;
            }
            else
            {
                goto label_000000FE;
            }
        }
    }

}
