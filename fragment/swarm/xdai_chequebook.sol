contract disassembler {

    function FUNC_0D5F2659() public return () // cashChequeBeneficiary(address,uint256,bytes)	
    {
        // Please refer to main() for the functionality, Function Hash: 0D5F2659 
    }

    function FUNC_12101021() public return () // defaultHardDepositTimeout()
    {
        return();
    }

    function totalPaidOut() public return ()
    {
        return();
    }

    function FUNC_15C3343F() public return () // CHEQUE_TYPEHASH()
    {
        return();
    }

    function issuer() public return ()
    {
        return();
    }

    function FUNC_338F3FED() public return () // increaseHardDeposit(address,uint256)
    {
        // Please refer to main() for the functionality, Function Hash: 338F3FED 
    }

    function FUNC_488B017C() public return () // CASHOUT_TYPEHASH()
    {
        return();
    }

    function FUNC_81F03FCB() public return () // 	paidOut(address)
    {
        // Please refer to main() for the functionality, Function Hash: 81F03FCB 
    }

    function FUNC_946F46A2() public return () // decreaseHardDeposit(address)
    {
        // Please refer to main() for the functionality, Function Hash: 946F46A2 
    }

    function FUNC_B6343B0D() public return () // hardDeposits(address)
    {
        // Please refer to main() for the functionality, Function Hash: B6343B0D 
    }

    function FUNC_B648B417() public return () // bounced()	
    {
        return();
    }

    function balance() public return ()
    {
        mstore(0x80,SHL(0xE0,0x70A08231));
        var28 = func_0000152B(this.address,0x84);
        var31 = (var28 - 0x80);
        var33 = ((SHL(0xA0,0x1) - 0x1) & sload(0x1));
        var34 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0x1))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0x1))));
        if (delegatecall(gasleft,var33,0x80,var31,0x80,0x20)) 
        {
            mstore(0x40,(0x80 + ((returndatasize + 0x1F) & ~0x1F)));
            var26 = func_000014F8((0x80 + returndatasize),0x80);
            return();
        }
        else
        {
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
    }

    function FUNC_B7998907() public return () // CUSTOMDECREASETIMEOUT_TYPEHASH()	
    {
        return();
    }

    function FUNC_B7EC1A33() public return () // liquidBalance()
    {
        balance();
        var22 = func_00000EE0(0x89B,sload(0x5));
        return();
    }

    function EIP712DOMAIN_TYPEHASH() public return ()
    {
        return();
    }

    function FUNC_E0BCF13A() public return () // totalHardDeposit()	
    {
        return();
    }

    function token() public return ()
    {
        return();
    }

    function func_000012CD( uint256 arg0) private return (var0)
    {
        var10 = msg.data(arg0);
        require((msg.data(arg0) == (msg.data(arg0) & (SHL(0xA0,0x1) - 0x1))));
        return(var10);
    }

    function func_000012E4( uint256 arg0,uint256 arg1) private return (var0)
    {
        require(SLT((arg1 + 0x1F),arg0));
        var13 = msg.data(arg1);
        assert((0xFFFFFFFFFFFFFFFF > msg.data(arg1)));
        var16 = (0x20 + (0x80 + (~0x1F & (var13 + 0x1F))));
        assert(!(((0x20 + (0x80 + (~0x1F & (var13 + 0x1F)))) < 0x80) | ((0x20 + (0x80 + (~0x1F & (var13 + 0x1F)))) > 0xFFFFFFFFFFFFFFFF)));
        mstore(0x40,var16);
        mstore(0x80,var13);
        require(((0x20 + (var13 + arg1)) < arg0));
        calldatacopy(0xA0,(arg1 + 0x20),var13);
        mstore((0x20 + (0x80 + var13)),0x0);
        return(0x80);
    }

    function func_000009C9( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) private return (var0)
    {
        var6 = arg0;
        var7 = arg1;
        var8 = arg2;
        var9 = arg3;
        if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x6)))) 
        {
            var12 = func_00000EE0(arg2,mapping_0x2[(arg0 & (SHL(0xA0,0x1) - 0x1))]);
            var11 = var12;
            var15 = func_000008C5(arg0);
            var13 = func_00000FCE(var12,var15);
            var12 = var13;
            var14 = func_00000FCE(var13,mapping_0x4[(arg0 & (SHL(0xA0,0x1) - 0x1))]);
            var13 = var14;
            if ((arg3 < var13)) 
            {
                if (var13) 
                {
                    var14 = func_00000EE0(mapping_0x4[(arg0 & (SHL(0xA0,0x1) - 0x1))],var13);
                    mapping_0x4[(arg0 & (SHL(0xA0,0x1) - 0x1))] = var14;
                    var14 = func_00000EE0(sload(0x5),var13);
                    sstore(0x5,var14);
                    var14 = func_00000E7F(mapping_0x2[(arg0 & (SHL(0xA0,0x1) - 0x1))],var12);
                    goto label_00000B10;
                }
                else
                {
                    var14 = func_00000E7F(mapping_0x2[(arg0 & (SHL(0xA0,0x1) - 0x1))],var12);
                                                  label_00000B10:
                    mapping_0x2[(var6 & (SHL(0xA0,0x1) - 0x1))] = var14;
                    var14 = func_00000E7F(sload(0x3),var12);
                    sstore(0x3,var14);
                    if ((var12 == var11)) 
                    {
                        if (var9) 
                        {
                                                  label_00000B84:
                            mstore(0x80,SHL(0xE0,0xA9059CBB));
                            var16 = func_0000153F(msg.sender,var9,0x84);
                            var19 = (var16 - 0x80);
                            var22 = (sload(0x1) & (SHL(0xA0,0x1) - 0x1));
                            require(extcodesize((sload(0x1) & (SHL(0xA0,0x1) - 0x1))));
                            var17 = var22.call(0x80,var19,0x80,0x20);
                            var17 = (var17 == 0);
                            if (var17) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                mstore(0x40,(0x80 + ((returndatasize + 0x1F) & ~0x1F)));
                                var14 = func_000014C0((0x80 + returndatasize),0x80);
                                if (var14) 
                                {
                                    var17 = func_00000EE0(var12,var9);
                                    temp16 = mload(0x40);
                                    mstore(temp16,SHL(0xE0,0xA9059CBB));
                                    var16 = func_0000153F(var7,var17,(0x4 + temp16));
                                    var18 = mload(0x40);
                                    var19 = (var16 - var18);
                                    var20 = var18;
                                    var22 = ((SHL(0xA0,0x1) - 0x1) & sload(0x1));
                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0x1))));
                                    var17 = var22.call(var20,var19,var18,0x20);
                                    var17 = (var17 == 0);
                                    if (var17) 
                                    {
                                        returndatacopy(0x0,0x0,returndatasize);
                                        revert(0x0,returndatasize);
                                    }
                                    else
                                    {
                                        var14 = mload(0x40);
                                        mstore(0x40,(var14 + ((returndatasize + 0x1F) & ~0x1F)));
                                        var14 = func_000014C0((var14 + returndatasize),var14);
                                        if (var14) 
                                        {
                                            goto label_00000D6F;
                                        }
                                        else
                                        {
                                            temp20 = mload(0x40);
                                            mstore(temp20,SHL(0xE5,0x461BCD));
                                            var15 = (0x4 + temp20);
                                            var14 = 0x34E;
                                            goto label_0000180C;
                                        }
                                    }
                                }
                                else
                                {
                                    temp21 = mload(0x40);
                                    mstore(temp21,SHL(0xE5,0x461BCD));
                                    var15 = (0x4 + temp21);
                                    var14 = 0x34E;
                                    goto label_0000180C;
                                }
                            }
                        }
                        else
                        {
                                                  label_00000CCF:
                            mstore(0x80,SHL(0xE0,0xA9059CBB));
                            var16 = func_0000153F(var7,var12,0x84);
                            var19 = (var16 - 0x80);
                            var22 = (sload(0x1) & (SHL(0xA0,0x1) - 0x1));
                            require(extcodesize((sload(0x1) & (SHL(0xA0,0x1) - 0x1))));
                            var17 = var22.call(0x80,var19,0x80,0x20);
                            var17 = (var17 == 0);
                            if (var17) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                mstore(0x40,(0x80 + ((returndatasize + 0x1F) & ~0x1F)));
                                var14 = func_000014C0((0x80 + returndatasize),0x80);
                                if (var14) 
                                {
                                                  label_00000D6F:
                                    temp8 = mload(0x40);
                                    var18 = func_00001835(var12,var8,var9,temp8);
                                    temp9 = mload(0x40);
                                    temp10 = (var18 - temp9);
                                    log(temp9,temp10,0x950494FC3642FAE5221B6C32E0E45765C95EBB382A04A71B160DB0843E74C99F,((SHL(0xA0,0x1) - 0x1) & var6),((SHL(0xA0,0x1) - 0x1) & var7),((SHL(0xA0,0x1) - 0x1) & msg.sender));
                                    return(var4);
                                }
                                else
                                {
                                    temp11 = mload(0x40);
                                    mstore(temp11,SHL(0xE5,0x461BCD));
                                    var15 = (0x4 + temp11);
                                                  label_0000180C:
                                    mstore(var15,0x20);
                                    mstore((var15 + 0x20),0xF);
                                    mstore((var15 + 0x40),SHL(0x8A,0x1D1C985B9CD9995C8819985A5B1959));
                                    temp12 = (0x60 + var15);
                                    var14 = temp12;
                                                  label_0000034E:
                                    temp13 = mload(0x40);
                                    temp14 = (var14 - temp13);
                                    revert(temp13,temp14);
                                }
                            }
                        }
                    }
                    else
                    {
                        sstore(0x6,(SHL(0xA0,0x1) | (~SHL(0xA0,0xFF) & sload(0x6))));
                        log(0x80,0x0,0x3F4449C047E11092EC54DC0751B6B4817A9162745DE856C893A26E611D18FFC4);
                        if (var9) 
                        {
                            goto label_00000B84;
                        }
                        else
                        {
                            goto label_00000CCF;
                        }
                    }
                }
            }
            else
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x1D);
                mstore(0xC4,0x53696D706C65537761703A2063616E6E6F74207061792063616C6C6572000000);
                var14 = 0xE4;
                goto label_0000034E;
            }
        }
        else
        {
            var12 = func_00000F95(this.address,arg0,arg2);
            var18 = func_000012AC();
            mstore(0x40,0x220);
            mstore(0x1E0,0xA);
            mstore(0x200,SHL(0xB0,0x436865717565626F6F6B));
            mstore(0x180,0x1E0);
            mstore(0x40,0x260);
            mstore(0x220,0x3);
            mstore(0x240,SHL(0xEC,0x312E3));
            mstore(0x1A0,0x220);
            throw();
        }
    }

    function func_00000EE0( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x1E);
            mstore(0xC4,0x536166654D6174683A207375627472616374696F6E206F766572666C6F770000);
            revert(0x80,0x64);
        }
    }

    function func_000008C5( uint256 arg0) private return (var0)
    {
        FUNC_B7EC1A33();
        var18 = func_00000E7F(0x8EA,mapping_0x4[(arg0 & (SHL(0xA0,0x1) - 0x1))]);
        return(var18);
    }

    function func_0000152B( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(arg1,((SHL(0xA0,0x1) - 0x1) & arg0));
        return((0x20 + arg1));
    }

    function func_000014F8( uint256 arg0,uint256 arg1) private return (var0)
    {
        require(!SLT((arg0 - arg1),0x20));
        temp2 = mload(arg1);
        return(temp2);
    }

    function func_00000E7F( uint256 arg0,uint256 arg1) private return (var0)
    {
        var22 = (arg1 + arg0);
        if ((arg0 < (arg1 + arg0))) 
        {
            return(var22);
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

    function func_00000FCE( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg0 < arg1)) 
        {
            return(arg0);
        }
        else
        {
            return(arg1);
        }
    }

    function func_0000153F( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        mstore(arg2,((SHL(0xA0,0x1) - 0x1) & arg0));
        mstore((arg2 + 0x20),arg1);
        return((0x40 + arg2));
    }

    function func_000014C0( uint256 arg0,uint256 arg1) private return (var0)
    {
        require(!SLT((arg0 - arg1),0x20));
        var18 = mload(arg1);
        require((var18 == var18));
        return(var18);
    }

    function func_00001835( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) private return (var0)
    {
        mstore(arg3,arg0);
        mstore((arg3 + 0x20),arg1);
        mstore((arg3 + 0x40),arg2);
        return((0x60 + arg3));
    }

    function func_00000F95( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        mstore(0xA0,0x48EBE6DEFF4A5EE645C01506A026031E2A945D6F41F1F4E5098AD65347492C12);
        mstore(0xC0,((SHL(0xA0,0x1) - 0x1) & arg0));
        mstore(0xE0,((SHL(0xA0,0x1) - 0x1) & arg1));
        mstore(0x100,arg2);
        mstore(0x80,0x80);
        mstore(0x40,0x120);
        temp25 = mload(0x80);
        temp26 = keccak256(0xA0,temp25);
        return(temp26);
    }

    function func_000012AC() private return (var0)
    {
        mstore(0x40,0x180);
        mstore(0x120,0x60);
        mstore(0x140,0x60);
        mstore(0x160,0x0);
        return(0x120);
    }

    function func_000002C5( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var4 = func_000009C9(msg.sender,arg0,arg1,0x0,arg2);
        return(var0);
    }

    function func_00001563( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(arg1,arg0);
        return((0x20 + arg1));
    }

    function func_00000DD2( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) private return (var0)
    {
        var16 = func_00001591(0x7D824962DD0F01520922EA1766C987B1DB570CD5DB90BDBA5CCF5E3206079502,arg0,arg1,arg2,arg3,arg4,0xA0);
        mstore(0x80,((var16 - 0x80) - 0x20));
        mstore(0x40,var16);
        temp28 = mload(0x80);
        temp29 = keccak256(0xA0,temp28);
        return(temp29);
    }

    function func_00001591( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4,uint256 arg5,uint256 arg6) private return (var0)
    {
        mstore(arg6,arg0);
        mstore((arg6 + 0x20),((SHL(0xA0,0x1) - 0x1) & arg1));
        mstore((arg6 + 0x40),((SHL(0xA0,0x1) - 0x1) & arg2));
        mstore((arg6 + 0x60),arg3);
        mstore((arg6 + 0x80),((SHL(0xA0,0x1) - 0x1) & arg4));
        mstore((arg6 + 0xA0),arg5);
        return((0xC0 + arg6));
    }

    function func_000006D0( uint256 arg0) private return (var0)
    {
        return(mapping_0x4[arg0].member_0x3);
    }

    function func_00000F3D( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var11 = func_0000156C(0xE95F353750F192082DF064CA5142D3A2D6F0BEF0F3FFAD66D80D8AF86B7A749A,arg0,arg1,arg2,0xA0);
        mstore(0x80,((var11 - 0x80) - 0x20));
        mstore(0x40,var11);
        temp48 = mload(0x80);
        temp49 = keccak256(0xA0,temp48);
        return(temp49);
    }

    function func_0000156C( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) private return (var0)
    {
        mstore(arg4,arg0);
        mstore((arg4 + 0x20),((SHL(0xA0,0x1) - 0x1) & arg1));
        mstore((arg4 + 0x40),((SHL(0xA0,0x1) - 0x1) & arg2));
        mstore((arg4 + 0x60),arg3);
        return((0x80 + arg4));
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        var0 = msg.value;
        require(!msg.value); // require no value
        if ((msg.data.length < 0x4))  // require selector
        {
                                                  label_0000014D:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));
            if ((0x946F46A2 > SHR(0xE0,msg.data(0x0)))) 
            {
                if ((0x1D143848 > var0)) 
                {

                    //ISSUE:COMMENT: Function FUNC_0D5F2659()
                    if ((0xD5F2659 == var0)) //	cashChequeBeneficiary(address,uint256,bytes)
                    {
                        var3 = msg.data.length;
                        require(!SLT((msg.data.length - 0x4),0x60));
                        var8 = func_000012CD(0x4);
                        var5 = var8;
                        var6 = msg.data(0x24);
                        var8 = msg.data(0x44);
                        require((0xFFFFFFFFFFFFFFFF > msg.data(0x44)));
                        var9 = func_000012E4(var3,(0x4 + var8));
                        var0 = func_000002C5(var5,var6,var9);
                                                  label_00000165:
                        stop();
                    }

                    //ISSUE:COMMENT: Function FUNC_12101021()
                    else if ((0x12101021 == var0)) // defaultHardDepositTimeout()	
                    {
                        FUNC_12101021();
                                                  label_0000016F:
                        var2 = func_00001563(var2,0x80);
                                                  label_0000017C:
                        temp27 = (var2 - 0x80);
                        RETURN(0x80,temp27);
                    }

                    //ISSUE:COMMENT: Function totalPaidOut()
                    else if ((0x1357E1DC == var0)) 
                    {
                        var1 = 0x16F;
                        totalPaidOut();
                        goto label_0000016F;
                    }

                    //ISSUE:COMMENT: Function FUNC_15C3343F()
                    else if ((0x15C3343F == var0)) 
                    {
                        var1 = 0x16F;
                        FUNC_15C3343F();
                        goto label_0000016F;
                    }

                    //ISSUE:COMMENT: Function FUNC_1633FB1D()
                    else if ((0x1633FB1D == var0)) 
                    {
                        var3 = msg.data.length;
                        require(!SLT((msg.data.length - 0x4),0xC0));
                        var11 = func_000012CD(0x4);
                        var11 = func_000012CD(0x24);
                        var11 = msg.data(0x64);
                        require((0xFFFFFFFFFFFFFFFF > msg.data(0x64)));
                        var13 = func_000012E4(var3,(0x4 + var11));
                        var8 = var13;
                        var9 = msg.data(0x84);
                        var11 = msg.data(0xA4);
                        require((0xFFFFFFFFFFFFFFFF > msg.data(0xA4)));
                        var12 = func_000012E4(var3,(0x4 + var11));
                        var7 = var12;
                        var6 = var9;
                        var5 = var8;
                        var2 = var5;
                        var8 = 0x31E;
                        var9 = func_00000DD2(this.address,msg.sender,var7,var6,var9);
                        var15 = func_000012AC();
                        var16 = mload(0x40);
                        mstore(0x40,(var16 + 0xA0));
                        mstore((var16 + 0x60),0xA);
                        mstore((var16 + 0x80),SHL(0xB0,0x436865717565626F6F6B));
                        mstore(var16,(var16 + 0x60));
                        temp31 = mload(0x40);
                        mstore(0x40,(0x40 + temp31));
                        mstore(temp31,0x3);
                        mstore((0x20 + temp31),SHL(0xEC,0x312E3));
                        mstore((var16 + 0x20),temp31);
                        throw();
                    }
                    else
                    {
                        goto label_0000014D;
                    }
                }

                //ISSUE:COMMENT: Function issuer()
                else if ((0x1D143848 == var0)) 
                {
                    issuer();
                                                  label_000001B0:
                    var2 = func_0000152B(var2,0x80);
                    goto label_0000017C;
                }

                //ISSUE:COMMENT: Function withdraw()
                else if ((0x2E1A7D4D == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x20));
                    var2 = msg.data(0x4);
                    if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x6)))) 
                    {
                        FUNC_B7EC1A33();
                        if ((0x3AD > var2)) 
                        {
                            mstore(0x80,SHL(0xE0,0xA9059CBB));
                            var5 = func_0000153F(((SHL(0xA0,0x1) - 0x1) & sload(0x6)),var2,0x84);
                            var8 = (var5 - 0x80);
                            var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0x1));
                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0x1))));
                            var6 = var11.call(0x80,var8,0x80,0x20);
                            var6 = (var6 == 0);
                            if (var6) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                mstore(0x40,(0x80 + ((returndatasize + 0x1F) & ~0x1F)));
                                var3 = func_000014C0((0x80 + returndatasize),0x80);
                                if (var3) 
                                {
                                    goto label_00000165;
                                }
                                else
                                {
                                    temp33 = mload(0x40);
                                    mstore(temp33,SHL(0xE5,0x461BCD));
                                    mstore((0x4 + temp33),0x20);
                                    mstore(((0x4 + temp33) + 0x20),0xF);
                                    mstore(((0x4 + temp33) + 0x40),SHL(0x8A,0x1D1C985B9CD9995C8819985A5B1959));
                                    var3 = (0x60 + (0x4 + temp33));
                                                  label_0000034E:
                                    temp34 = mload(0x40);
                                    temp35 = (var3 - temp34);
                                    revert(temp34,temp35);
                                }
                            }
                        }
                        else
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x1C);
                            mstore(0xC4,0x6C697175696442616C616E6365206E6F742073756666696369656E7400000000);
                            var3 = 0xE4;
                            goto label_0000034E;
                        }
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0xA);
                        mstore(0xC4,SHL(0xB1,0x3737BA1034B9B9BAB2B9));
                        var3 = 0xE4;
                        goto label_0000034E;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_338F3FED()
                else if ((0x338F3FED == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x40));
                    var7 = func_000012CD(0x4);
                    var2 = var7;
                    var3 = msg.data(0x24);
                    if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x6)))) 
                    {
                        balance();
                        var5 = func_00000E7F(sload(0x5),var3);
                        if ((0x4A5 > var5)) 
                        {
                            var5 = func_00000E7F(mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))],var3);
                            mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))] = var5;
                            var5 = func_00000E7F(sload(0x5),var3);
                            sstore(0x5,var5);
                            mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))].member_0x3 = 0x0;
                            var7 = func_00001563(mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))],0x80);
                            temp37 = (var7 - 0x80);
                            log(0x80,temp37,0x2506C43272DED05D095B91DBBA876E66E46888157D3E078DB5691496E96C5FAD,(var2 & (SHL(0xA0,0x1) - 0x1)));
                            goto label_00000165;
                        }
                        else
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x1C);
                            mstore(0xC4,0x68617264206465706F73697420657863656564732062616C616E636500000000);
                            goto label_0000034E;
                        }
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        var5 = 0x84;
                                                  label_00001665:
                        mstore(var5,0x20);
                        mstore((var5 + 0x20),0x16);
                        mstore((var5 + 0x40),SHL(0x51,0x29B4B6B83632A9BBB0B81D103737BA1034B9B9BAB2B9));
                        temp38 = (0x60 + var5);
                        goto label_0000034E;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_488B017C()
                else if ((0x488B017C == var0)) 
                {
                    var1 = 0x16F;
                    FUNC_488B017C();
                    goto label_0000016F;
                }

                //ISSUE:COMMENT: Function FUNC_81F03FCB()
                else if ((0x81F03FCB == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x20));
                    var6 = func_000012CD(0x4);
                    var2 = func_00001563(mapping_0x2[var6],0x80);
                                                  label_0000017C:
                    temp40 = (var2 - 0x80);
                    RETURN(0x80,temp40);
                }

                //ISSUE:COMMENT: Function init()
                else if ((0x86863EC6 == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x60));
                    var8 = func_000012CD(0x4);
                    var8 = func_000012CD(0x24);
                    var4 = msg.data(0x44);
                    var3 = var8;
                    var2 = var8;
                    if ((var8 & (SHL(0xA0,0x1) - 0x1))) 
                    {
                        if (((SHL(0xA0,0x1) - 0x1) & sload(0x6))) 
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x13);
                            mstore(0xC4,SHL(0x6A,0x185B1C9958591E481A5B9A5D1A585B1A5E9959));
                            goto label_0000034E;
                        }
                        else
                        {
                            sstore(0x6,((~(SHL(0xA0,0x1) - 0x1) & sload(0x6)) | ((SHL(0xA0,0x1) - 0x1) & var2)));
                            temp41 = ((SHL(0xA0,0x1) - 0x1) & var3);
                            sstore(0x1,((sload(0x1) & ~(SHL(0xA0,0x1) - 0x1)) | temp41));
                            sstore(0x0,var4);
                            goto label_00000165;
                        }
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0xE);
                        mstore(0xC4,SHL(0x91,0x34B73B30B634B21034B9B9BAB2B9));
                        goto label_0000034E;
                    }
                }
                else
                {
                    goto label_0000014D;
                }
            }
            else if ((0xB7EC1A33 > var0)) 
            {

                //ISSUE:COMMENT: Function FUNC_946F46A2()
                if ((0x946F46A2 == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x20));
                    var6 = func_000012CD(0x4);
                    var2 = var6;

                    //ISSUE:WARNING:Block timestamp is referred.
                    var4 = (mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x3 < block.timestamp);

                    //ISSUE:WARNING:Block timestamp is referred.
                    if ((block.timestamp < mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x3)) 
                    {
                        if (var4) 
                        {
                                                  label_0000065B:
                            var4 = func_00000EE0(mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))],mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x1);
                            mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))] = var4;
                            mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x3 = 0x0;
                            var4 = func_00000EE0(sload(0x5),mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x1);
                            sstore(0x5,var4);
                            var6 = func_00001563(mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))],0x80);
                            temp43 = (var6 - 0x80);
                            log(0x80,temp43,0x2506C43272DED05D095B91DBBA876E66E46888157D3E078DB5691496E96C5FAD,(var2 & (SHL(0xA0,0x1) - 0x1)));
                            goto label_00000165;
                        }
                        else
                        {
                                                  label_00000644:
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x19);
                            mstore(0xC4,0x6465706F736974206E6F74207965742074696D6564206F757400000000000000);
                            var4 = 0xE4;
                            goto label_0000034E;
                        }
                    }
                    else if (mapping_0x4[(var6 & (SHL(0xA0,0x1) - 0x1))].member_0x3) 
                    {
                        goto label_0000065B;
                    }
                    else
                    {
                        goto label_00000644;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_B6343B0D()
                else if ((0xB6343B0D == var0)) 
                {
                    var3 = msg.data.length;
                    require(!SLT((msg.data.length - 0x4),0x20));
                    var6 = func_000012CD(0x4);
                    var5 = func_000006D0(var6);
                    mstore(0x80,var6);
                    mstore(0xA0,var3);
                    mstore(0xC0,var4);
                    mstore(0xE0,var5);
                    var2 = 0x100;
                    goto label_0000017C;
                }

                //ISSUE:COMMENT: Function FUNC_B648B417()
                else if ((0xB648B417 == var0)) 
                {
                    FUNC_B648B417();
                    mstore(0x80,var2);
                    var2 = 0xA0;
                    goto label_0000017C;
                }

                //ISSUE:COMMENT: Function balance()
                else if ((0xB69EF8A8 == var0)) 
                {
                    var1 = 0x16F;
                    balance();
                                                  label_0000016F:
                    var1 = func_00001563(var1,0x80);
                    temp45 = (var1 - 0x80);
                    RETURN(0x80,temp45);
                }

                //ISSUE:COMMENT: Function FUNC_B7770350()
                else if ((0xB7770350 == var0)) 
                {
                    require(!SLT((msg.data.length - 0x4),0x40));
                    var7 = func_000012CD(0x4);
                    var2 = var7;
                    var3 = msg.data(0x24);
                    if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x6)))) 
                    {
                        if ((mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))] > var3)) 
                        {
                            if ((0x0 == mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))].member_0x2)) 
                            {
                                var6 = sload(0x0);
                                                  label_0000080C:

                                //ISSUE:WARNING:Block timestamp is referred.
                                mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))].member_0x3 = (var6 + block.timestamp);
                                mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))].member_0x1 = var3;
                                var8 = func_00001563(var3,0x80);
                                temp47 = (var8 - 0x80);
                                log(0x80,temp47,0xC8305077B495025EC4C1D977B176A762C350BB18CAD4666CE1EE85C32B78698A,(var2 & (SHL(0xA0,0x1) - 0x1)));
                                goto label_00000165;
                            }
                            else
                            {
                                var6 = mapping_0x4[(var2 & (SHL(0xA0,0x1) - 0x1))].member_0x2;
                                goto label_0000080C;
                            }
                        }
                        else
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x1B);
                            mstore(0xC4,0x68617264206465706F736974206E6F742073756666696369656E740000000000);
                            goto label_0000034E;
                        }
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        var5 = 0x84;
                        goto label_00001665;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_B7998907()
                else if ((0xB7998907 == var0)) 
                {
                    var1 = 0x16F;
                    FUNC_B7998907();
                    goto label_0000016F;
                }
                else
                {
                    goto label_0000014D;
                }
            }

            //ISSUE:COMMENT: Function FUNC_B7EC1A33()
            else if ((0xB7EC1A33 == var0)) 
            {
                var1 = 0x16F;
                FUNC_B7EC1A33();
                goto label_0000016F;
            }

            //ISSUE:COMMENT: Function EIP712DOMAIN_TYPEHASH()
            else if ((0xC49F91D3 == var0)) 
            {
                var1 = 0x16F;
                EIP712DOMAIN_TYPEHASH();
                goto label_0000016F;
            }

            //ISSUE:COMMENT: Function FUNC_C76A4D31()
            else if ((0xC76A4D31 == var0)) 
            {
                require(!SLT((msg.data.length - 0x4),0x20));
                var6 = func_000012CD(0x4);
                var1 = func_000008C5(var6);
                goto label_0000016F;
            }

            //ISSUE:COMMENT: Function FUNC_D4C9A8E8()
            else if ((0xD4C9A8E8 == var0)) 
            {
                var3 = msg.data.length;
                require(!SLT((msg.data.length - 0x4),0x60));
                var8 = func_000012CD(0x4);
                var5 = var8;
                var6 = msg.data(0x24);
                var8 = msg.data(0x44);
                require((0xFFFFFFFFFFFFFFFF > msg.data(0x44)));
                var9 = func_000012E4(var3,(0x4 + var8));
                var4 = var9;
                var3 = var6;
                var2 = var5;
                if ((msg.sender == ((SHL(0xA0,0x1) - 0x1) & sload(0x6)))) 
                {
                    var6 = func_00000F3D(this.address,var2,var3);
                    var12 = func_000012AC();
                    var13 = mload(0x40);
                    mstore(0x40,(var13 + 0xA0));
                    mstore((var13 + 0x60),0xA);
                    mstore((var13 + 0x80),SHL(0xB0,0x436865717565626F6F6B));
                    mstore(var13,(var13 + 0x60));
                    temp51 = mload(0x40);
                    mstore(0x40,(0x40 + temp51));
                    mstore(temp51,0x3);
                    mstore((0x20 + temp51),SHL(0xEC,0x312E3));
                    mstore((var13 + 0x20),temp51);
                    throw();
                }
                else
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0xA);
                    mstore(0xC4,SHL(0xB1,0x3737BA1034B9B9BAB2B9));
                    goto label_0000034E;
                }
            }

            //ISSUE:COMMENT: Function FUNC_E0BCF13A()
            else if ((0xE0BCF13A == var0)) 
            {
                var1 = 0x16F;
                FUNC_E0BCF13A();
                goto label_0000016F;
            }

            //ISSUE:COMMENT: Function token()
            else if ((0xFC0C546A == var0)) 
            {
                token();
                goto label_000001B0;
            }
            else
            {
                goto label_0000014D;
            }
        }
    }

}
