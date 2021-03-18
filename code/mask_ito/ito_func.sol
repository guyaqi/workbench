

// arg0: 轮次相关
// arg1: revert: "Wrong Password"
// arg2: unused
// arg3: revert: "Validation Failed"
// arg4: 
// arg5: No enough ether. // No enough allowance
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

                        // var12 = (mapping_0x3[arg0] >> 0xA0) & ((1 << 0x28) + 1)
                        var12 = func_00002621(temp150,0xA0,0x28);

                        mstore(0x120,var12);
                        mstore(0x140,SHL(0x60,msg.sender));
                        mstore(0x100,0x34);
                        mstore(0x40,0x154);
                        temp151 = mload(0x100);
                        // hash from 0x120 to 0x220
                        // 0x120
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