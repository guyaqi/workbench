contract disassembler {

    function FUNC_0255F99E( uint256 arg0,uint256 arg1) public return (var0)
    {
        var2 = arg0;
        var3 = arg1;
        var5 = ((sload(0xD0) & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & arg0));
        if (((sload(0xD0) & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & arg0))) 
        {
            if (var5) 
            {
                                                                     //-> label_00000697:
                var4 = var3;
                goto label_00000805;
            }
            else
            {
                                                                     //-> label_0000069D:
                if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (var2 & (SHL(0xA0,0x1) - 0x1)))) 
                {
                    mstore(0x80,SHL(0xE3,0x15AB88C9));
                    var13 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                    if (delegatecall(gasleft,var13,0x80,0x4,0x80,0x20)) 
                    {
                        require((0x20 < returndatasize));
                        temp34 = mload(0x80);
                        var5 = FUNC_B9FB4121(temp34,((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var3);
                        var4 = var5;
                        goto label_00000805;
                    }
                    else
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                }
                else
                {
                    var6 = FUNC_B9FB4121(var2,((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var3);
                    var5 = var6;
                    if (var6) 
                    {
                        return(var5);
                    }
                    else
                    {
                        var7 = var2;
                        mstore(0xE0,SHL(0xE0,0xAD5C4648));
                        var15 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xC9)));
                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xC9)))));
                        if (delegatecall(gasleft,var15,0xE0,0x4,0xE0,0x20)) 
                        {
                            require((0x20 < returndatasize));
                            temp16 = mload(0xE0);
                            var6 = FUNC_60BA10DF(var7,temp16,((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var3);
                            var4 = var6;
                                                                     //-> label_00000805:
                            return(var4);
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
        else if (arg1) 
        {
            goto label_0000069D;
        }
        else
        {
            goto label_00000697;
        }
    }

    function FUNC_0457DAD2() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCC)));
    }

    function FUNC_07C97FFB() public return ()
    {
        var2 = func_00002651();
        var3 = owner();
        temp35 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp35 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
        {
            var2 = paused();
            if (var2) 
            {
                var1 = func_00002655();
                return();
            }
            else
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x14);
                mstore(0xC4,SHL(0x62,0x14185D5CD8589B194E881B9BDD081C185D5CD959));
                revert(0x80,0x64);
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp37 = mload(0x0);
            callcodecopy(0x0,0x36B3,0x20);
            temp36 = mload(0x0);
            mstore(0x0,temp37);
            mstore(0xC4,temp36);
            revert(0x80,0x64);
        }
    }

    function FUNC_1E2720FF( uint256 arg0) public return ()
    {
        var3 = paused();
        if (var3) 
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x10);
            mstore(0xC4,SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
            revert(0x80,0x64);
        }
        else if ((sload(0x97) == 0x2)) 
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x1F);
            temp57 = mload(0x0);
            callcodecopy(0x0,0x361E,0x20);
            temp56 = mload(0x0);
            mstore(0x0,temp57);
            mstore(0xC4,temp56);
            revert(0x80,0x64);
        }
        else
        {
            sstore(0x97,0x2);
            var6 = func_00002651();
            mstore(0x80,SHL(0xE0,0x70A08231));
            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var6));
            var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0xD0));
            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xD0))));
            if (delegatecall(gasleft,var11,0x80,0x24,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                temp38 = mload(0x80);
                if ((arg0 < temp38)) 
                {
                    var4 = func_00002651();
                    var2 = func_000026F5(((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var4,this.address,arg0);
                    mstore(0x144,SHL(0xE0,0xB9F8A92D));
                    mstore(0x148,var2);
                    var11 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                    require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                    var6 = var11.call(0x144,0x24);
                    var6 = (var6 == 0);
                    if (var6) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        sstore(0x97,0x1);
                        return();
                    }
                }
                else
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x5);
                    mstore(0xC4,SHL(0xD8,0x44523A2031));
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

    // 买保险
    function FUNC_347489AE( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) public return ()
    {
        var2 = arg0;
        var3 = arg1;
        var4 = arg2;
        var5 = arg3;
        var6 = arg4;
        var7 = paused();
        if (var7) 
        {
            temp237 = mload(0x40);
            mstore(temp237,SHL(0xE5,0x461BCD));
            mstore((temp237 + 0x4),0x20);
            mstore((temp237 + 0x24),0x10);
            mstore((temp237 + 0x44),SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
            temp238 = mload(0x40);
            revert(temp238,(0x64 + (temp237 - temp238)));
        }
        else if ((sload(0x97) == 0x2)) 
        {
            temp233 = mload(0x40);
            mstore(temp233,SHL(0xE5,0x461BCD));
            mstore((temp233 + 0x4),0x20);
            mstore((temp233 + 0x24),0x1F);
            temp235 = mload(0x0);
            callcodecopy(0x0,0x361E,0x20);
            temp234 = mload(0x0);
            mstore(0x0,temp235);
            mstore((temp233 + 0x44),temp234);
            temp236 = mload(0x40);
            revert(temp236,(0x64 + (temp233 - temp236)));
        }
        else
        {
            sstore(0x97,0x2);
            temp68 = mload(arg1);
            temp67 = mload(arg0);
            if ((temp67 == temp68)) 
            {
                temp70 = mload(arg2);
                temp69 = mload(arg0);
                if ((temp69 == temp70)) 
                {
                    if ((arg4 & (SHL(0xA0,0x1) - 0x1))) 
                    {
                        var7 = 0x0;
                        var8 = 0x0;
                        var9 = 0x0;
                                                                     //-> label_00000C16:
                        temp71 = mload(var2);
                        if ((temp71 < var9)) 
                        {
                            temp72 = mload(0x40);
                            mstore(temp72,SHL(0xE0,0x76136817));
                            mstore((temp72 + 0x4),var7);
                            mstore((temp72 + 0x24),((SHL(0xA0,0x1) - 0x1) & var6));
                            temp73 = mload(0x40);
                            var13 = temp73;
                            var14 = ((temp72 - temp73) + 0x44);
                            var15 = temp73;
                            var16 = (sload(0xCE) & (SHL(0xA0,0x1) - 0x1));
                            require(extcodesize((sload(0xCE) & (SHL(0xA0,0x1) - 0x1))));
                            if (delegatecall(gasleft,var16,var15,var14,var13,0x20)) 
                            {
                                var9 = mload(0x40);
                                require((0x20 < returndatasize));
                                if (temp74) 
                                {
                                    var10 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCD)));
                                    var13 = var3;
                                    var14 = var4;
                                    temp75 = mload(0x40);
                                    mstore(temp75,SHL(0xE0,0xFC2F5C0D));
                                    var16 = (0x4 + temp75);
                                    var18 = (0x20 + (0x4 + temp75));
                                    var19 = (0x20 + (0x20 + (0x4 + temp75)));
                                    mstore((0x20 + (0x20 + (0x20 + (0x4 + temp75)))),((SHL(0xA0,0x1) - 0x1) & var6));
                                    mstore((0x4 + temp75),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))) - (0x4 + temp75)));
                                    temp76 = mload(var2);
                                    mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))),temp76);
                                    var20 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))));
                                    temp77 = mload(var2);
                                    var22 = (0x20 * temp77);
                                    var23 = (0x20 * temp77);
                                    var26 = 0x0;
                                                                     //-> label_00000F60:
                                    if ((var23 < var26)) 
                                    {
                                        temp78 = (var22 + var20);
                                        mstore(var18,(temp78 - var16));
                                        temp79 = mload(var13);
                                        mstore(temp78,temp79);
                                        var20 = (0x20 + temp78);
                                        temp80 = mload(var13);
                                        var22 = (0x20 * temp80);
                                        var23 = (0x20 * temp80);
                                        var26 = 0x0;
                                                                     //-> label_00000F9F:
                                        if ((var23 < var26)) 
                                        {
                                            temp81 = (var22 + var20);
                                            mstore(var19,(temp81 - var16));
                                            temp82 = mload(var14);
                                            mstore(temp81,temp82);
                                            var20 = (0x20 + temp81);
                                            temp83 = mload(var14);
                                            var22 = (0x20 * temp83);
                                            var23 = (0x20 * temp83);
                                            var24 = (0x20 + temp81);
                                            var25 = (0x20 + var14);
                                            var26 = 0x0;
                                                                     //-> label_00000FDE:
                                            if ((var23 < var26)) 
                                            {
                                                temp84 = (var22 + var20);
                                                var14 = mload(0x40);
                                                var15 = (temp84 - var14);
                                                var16 = var14;
                                                var17 = var10;
                                                require(extcodesize(var10));
                                                if (delegatecall(gasleft,var17,var16,var15,var14,0x40)) 
                                                {
                                                    var10 = mload(0x40);
                                                    require((0x40 < returndatasize));
                                                    temp86 = mload(var10);
                                                    var9 = temp86;
                                                    if (temp86) 
                                                    {
                                                        if ((var5 > var9)) 
                                                        {
                                                            var11 = func_00002651();
                                                            var10 = var11;
                                                            if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (var6 & (SHL(0xA0,0x1) - 0x1)))) 
                                                            {
                                                                if ((msg.value > var9)) 
                                                                {
                                                                    temp187 = mload(0x40);
                                                                    mstore(temp187,SHL(0xE0,0x2AED081D));
                                                                    mstore((temp187 + 0x4),((SHL(0xA0,0x1) - 0x1) & var6));
                                                                    mstore((temp187 + 0x24),var9);
                                                                    temp188 = mload(0x40);
                                                                    var16 = temp188;
                                                                    var17 = ((temp187 - temp188) + 0x44);
                                                                    var18 = temp188;
                                                                    var19 = var9;
                                                                    var20 = (sload(0xCF) & (SHL(0xA0,0x1) - 0x1));
                                                                    require(extcodesize((sload(0xCF) & (SHL(0xA0,0x1) - 0x1))));
                                                                    var15 = var20.call.value(var19)(var18,var17);
                                                                    var15 = (var15 == 0);
                                                                    if (var15) 
                                                                    {
                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                        revert(0x0,returndatasize);
                                                                    }
                                                                    else
                                                                    {
                                                                        goto label_000013B5;
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    temp190 = mload(0x40);
                                                                    mstore(temp190,SHL(0xE5,0x461BCD));
                                                                    mstore((temp190 + 0x4),0x20);
                                                                    mstore((temp190 + 0x24),0x5);
                                                                    mstore((temp190 + 0x44),SHL(0xD9,0x21219D101B));
                                                                    temp191 = mload(0x40);
                                                                    revert(temp191,(0x64 + (temp190 - temp191)));
                                                                }
                                                            }
                                                            else
                                                            {
                                                                var11 = var9;
                                                                temp87 = mload(0x40);
                                                                mstore(temp87,SHL(0xE0,0x70A08231));
                                                                mstore((0x4 + temp87),((SHL(0xA0,0x1) - 0x1) & var10));
                                                                var16 = mload(0x40);
                                                                var17 = ((0x20 + (0x4 + temp87)) - var16);
                                                                var18 = var16;
                                                                var19 = ((SHL(0xA0,0x1) - 0x1) & var6);
                                                                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var6)));
                                                                if (delegatecall(gasleft,var19,var18,var17,var16,0x20)) 
                                                                {
                                                                    var12 = mload(0x40);
                                                                    require((0x20 < returndatasize));
                                                                    temp89 = mload(var12);
                                                                    if ((var11 < temp89)) 
                                                                    {
                                                                        temp90 = mload(0x40);
                                                                        mstore(temp90,SHL(0xE1,0x6EB1769F));
                                                                        mstore((temp90 + 0x4),((SHL(0xA0,0x1) - 0x1) & var10));
                                                                        mstore((temp90 + 0x24),this.address);
                                                                        temp91 = mload(0x40);
                                                                        var16 = temp91;
                                                                        var17 = ((temp90 - temp91) + 0x44);
                                                                        var18 = temp91;
                                                                        var19 = (var6 & (SHL(0xA0,0x1) - 0x1));
                                                                        require(extcodesize((var6 & (SHL(0xA0,0x1) - 0x1))));
                                                                        if (delegatecall(gasleft,var19,var18,var17,var16,0x20)) 
                                                                        {
                                                                            var12 = mload(0x40);
                                                                            require((0x20 < returndatasize));
                                                                            temp92 = mload(var12);
                                                                            if ((var9 < temp92)) 
                                                                            {
                                                                                var11 = func_000026F5((var6 & (SHL(0xA0,0x1) - 0x1)),var10,this.address,var9);
                                                                                var11 = func_00002808(((SHL(0xA0,0x1) - 0x1) & var6),(sload(0xCF) & (SHL(0xA0,0x1) - 0x1)),var9);
                                                                                temp96 = mload(0x40);
                                                                                mstore(temp96,SHL(0xE0,0x2AED081D));
                                                                                mstore((temp96 + 0x4),((SHL(0xA0,0x1) - 0x1) & var6));
                                                                                mstore((temp96 + 0x24),var9);
                                                                                temp97 = mload(0x40);
                                                                                var16 = temp97;
                                                                                var17 = ((temp96 - temp97) + 0x44);
                                                                                var18 = temp97;
                                                                                var20 = (sload(0xCF) & (SHL(0xA0,0x1) - 0x1));
                                                                                require(extcodesize((sload(0xCF) & (SHL(0xA0,0x1) - 0x1))));
                                                                                var15 = var20.call(var18,var17);
                                                                                var15 = (var15 == 0);
                                                                                if (var15) 
                                                                                {
                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                    revert(0x0,returndatasize);
                                                                                }
                                                                                else
                                                                                {
                                                                     //-> label_000013B5:
                                                                                    var12 = FUNC_E1133C3D(var6,var9);
                                                                                    var11 = var12;
                                                                                    if (var12) 
                                                                                    {
                                                                                        temp177 = mload(0x40);
                                                                                        mstore(temp177,SHL(0xE0,0x9F44FF8D));
                                                                                        mstore((temp177 + 0x4),var11);
                                                                                        temp178 = mload(0x40);
                                                                                        var16 = temp178;
                                                                                        var17 = ((temp177 - temp178) + 0x24);
                                                                                        var18 = temp178;
                                                                                        var20 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                                                        require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                                                        var15 = var20.call(var18,var17);
                                                                                        var15 = (var15 == 0);
                                                                                        if (var15) 
                                                                                        {
                                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                                            revert(0x0,returndatasize);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            temp180 = mload(0x40);
                                                                                            mstore(temp180,SHL(0xE0,0xCFA9E65F));
                                                                                            mstore((temp180 + 0x4),((SHL(0xA0,0x1) - 0x1) & var10));
                                                                                            mstore((temp180 + 0x24),var11);
                                                                                            temp181 = mload(0x40);
                                                                                            var16 = temp181;
                                                                                            var17 = ((temp180 - temp181) + 0x44);
                                                                                            var18 = temp181;
                                                                                            var20 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                                                            require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                                                            var15 = var20.call(var18,var17);
                                                                                            var15 = (var15 == 0);
                                                                                            if (var15) 
                                                                                            {
                                                                                                returndatacopy(0x0,0x0,returndatasize);
                                                                                                revert(0x0,returndatasize);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                var11 = func_0000285F(var10,var6,var8,var9,var2,var3,var4);
                                                                                                goto label_000014AB;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        var11 = func_0000285F(var10,var6,var8,var9,var2,var3,var4);
                                                                     //-> label_000014AB:
                                                                                        temp171 = mload(0x40);
                                                                                        mstore(temp171,SHL(0xE1,0x6A677889));
                                                                                        mstore((temp171 + 0x4),((SHL(0xA0,0x1) - 0x1) & var10));
                                                                                        temp172 = mload(0x40);
                                                                                        var16 = temp172;
                                                                                        var17 = ((temp171 - temp172) + 0x24);
                                                                                        var18 = temp172;
                                                                                        var19 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                                                        require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                                                        if (delegatecall(gasleft,var19,var18,var17,var16,0x20)) 
                                                                                        {
                                                                                            var12 = mload(0x40);
                                                                                            var13 = returndatasize;
                                                                                            require((0x20 < returndatasize));
                                                                                            if (temp173) 
                                                                                            {
                                                                                                sstore(0x97,0x1);
                                                                                                return();
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                temp174 = mload(0x40);
                                                                                                mstore(temp174,SHL(0xE0,0x4079B2B9));
                                                                                                mstore((temp174 + 0x4),((SHL(0xA0,0x1) - 0x1) & var10));
                                                                                                temp175 = mload(0x40);
                                                                                                var14 = (temp174 + 0x24);
                                                                                                var16 = temp175;
                                                                                                var17 = ((temp174 - temp175) + 0x24);
                                                                                                var18 = temp175;
                                                                                                var20 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                                                                require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                                                                var15 = var20.call(var18,var17);
                                                                                                var15 = (var15 == 0);
                                                                                                if (var15) 
                                                                                                {
                                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                                    revert(0x0,returndatasize);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    sstore(0x97,0x1);
                                                                                                    return();
                                                                                                }
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
                                                                                temp183 = mload(0x40);
                                                                                mstore(temp183,SHL(0xE5,0x461BCD));
                                                                                mstore((temp183 + 0x4),0x20);
                                                                                mstore((temp183 + 0x24),0x5);
                                                                                mstore((temp183 + 0x44),SHL(0xDB,0x848674407));
                                                                                temp184 = mload(0x40);
                                                                                revert(temp184,(0x64 + (temp183 - temp184)));
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
                                                                        temp185 = mload(0x40);
                                                                        mstore(temp185,SHL(0xE5,0x461BCD));
                                                                        mstore((temp185 + 0x4),0x20);
                                                                        mstore((temp185 + 0x24),0x5);
                                                                        mstore((temp185 + 0x44),SHL(0xD8,0x42433A2037));
                                                                        temp186 = mload(0x40);
                                                                        revert(temp186,(0x64 + (temp185 - temp186)));
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
                                                            temp192 = mload(0x40);
                                                            mstore(temp192,SHL(0xE5,0x461BCD));
                                                            mstore((temp192 + 0x4),0x20);
                                                            mstore((temp192 + 0x24),0x5);
                                                            mstore((temp192 + 0x44),SHL(0xD8,0x42433A2035));
                                                            temp193 = mload(0x40);
                                                            revert(temp193,(0x64 + (temp192 - temp193)));
                                                        }
                                                    }
                                                    else
                                                    {
                                                        temp194 = mload(0x40);
                                                        mstore(temp194,SHL(0xE5,0x461BCD));
                                                        mstore((temp194 + 0x4),0x20);
                                                        mstore((temp194 + 0x24),0x5);
                                                        mstore((temp194 + 0x44),SHL(0xDA,0x1090CE880D));
                                                        temp195 = mload(0x40);
                                                        revert(temp195,(0x64 + (temp194 - temp195)));
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
                                                temp196 = mload((var26 + var25));
                                                mstore((var26 + var24),temp196);
                                                var26 = (0x20 + var26);
                                                goto label_00000FDE;
                                            }
                                        }
                                        else
                                        {
                                            temp197 = mload((var26 + var25));
                                            mstore((var26 + var24),temp197);
                                            var26 = (0x20 + var26);
                                            goto label_00000F9F;
                                        }
                                    }
                                    else
                                    {
                                        temp198 = mload((var26 + var25));
                                        mstore((var26 + var24),temp198);
                                        var26 = (0x20 + var26);
                                        goto label_00000F60;
                                    }
                                }
                                else
                                {
                                    temp199 = mload(0x40);
                                    mstore(temp199,SHL(0xE5,0x461BCD));
                                    mstore((temp199 + 0x4),0x20);
                                    mstore((temp199 + 0x24),0x6);
                                    mstore((temp199 + 0x44),SHL(0xD1,0x21219D199699));
                                    temp200 = mload(0x40);
                                    revert(temp200,(0x64 + (temp199 - temp200)));
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
                            var11 = var4;
                            var12 = var9;
                            temp201 = mload(var4);
                            assert((var9 < temp201));
                            temp202 = (0x20 + (0x20 * var12));
                            temp203 = mload((temp202 + var11));
                            var10 = func_00002755(var7,temp203);
                            var7 = var10;
                            var12 = var3;
                            var13 = var9;
                            temp204 = mload(var3);
                            assert((var9 < temp204));
                            temp205 = (0x20 + (0x20 * var13));
                            var12 = mload((temp205 + var12));
                            var13 = var4;
                            var14 = var9;
                            temp206 = mload(var4);
                            assert((var9 < temp206));
                            temp207 = (0x20 + (0x20 * var14));
                            temp208 = mload((temp207 + var13));
                            var11 = func_000027AF(temp208,var12);
                            var10 = func_00002755(var8,var11);
                            temp209 = mload(var2);
                            var8 = var10;
                            var10 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCE));
                            var12 = var2;
                            var13 = var9;
                            assert((var9 < temp209));
                            temp210 = (0x20 + (0x20 * var13));
                            var12 = mload((temp210 + var12));
                            var13 = var4;
                            var14 = var9;
                            temp211 = mload(var4);
                            assert((var9 < temp211));
                            temp212 = (0x20 + (0x20 * var14));
                            temp214 = mload((temp212 + var13));
                            temp213 = mload(0x40);
                            mstore(temp213,SHL(0xE0,0x4400C176));
                            mstore((0x4 + temp213),var12);
                            mstore((0x20 + (0x4 + temp213)),temp214);
                            mstore((0x20 + (0x20 + (0x4 + temp213))),((SHL(0xA0,0x1) - 0x1) & var6));
                            var14 = mload(0x40);
                            var15 = ((0x20 + (0x20 + (0x20 + (0x4 + temp213)))) - var14);
                            var16 = var14;
                            var17 = var10;
                            require(extcodesize(var10));
                            if (delegatecall(gasleft,var17,var16,var15,var14,0x20)) 
                            {
                                var10 = mload(0x40);
                                require((0x20 < returndatasize));
                                if (temp216) 
                                {
                                    temp217 = mload(var2);
                                    var10 = (sload(0xCE) & (SHL(0xA0,0x1) - 0x1));
                                    var12 = var2;
                                    var13 = var9;
                                    assert((var9 < temp217));
                                    temp218 = (0x20 + (0x20 * var13));
                                    var12 = mload((temp218 + var12));
                                    var13 = var4;
                                    var14 = var9;
                                    temp219 = mload(var4);
                                    assert((var9 < temp219));
                                    temp220 = (0x20 + (0x20 * var14));
                                    temp222 = mload((temp220 + var13));
                                    temp221 = mload(0x40);
                                    mstore(temp221,SHL(0xE0,0x73EA4E2E));
                                    mstore((0x4 + temp221),var12);
                                    mstore((0x20 + (0x4 + temp221)),temp222);
                                    mstore((0x20 + (0x20 + (0x4 + temp221))),((SHL(0xA0,0x1) - 0x1) & var6));
                                    var14 = mload(0x40);
                                    var15 = ((0x20 + (0x20 + (0x20 + (0x4 + temp221)))) - var14);
                                    var16 = var14;
                                    var18 = var10;
                                    var19 = (extcodesize(var10) == 0);
                                    require(extcodesize(var10));
                                    var13 = var18.call(var16,var15);
                                    var13 = (var13 == 0);
                                    if (var13) 
                                    {
                                        returndatacopy(0x0,0x0,returndatasize);
                                        revert(0x0,returndatasize);
                                    }
                                    else
                                    {
                                        var9 = (var9 + 0x1);
                                        goto label_00000C16;
                                    }
                                }
                                else
                                {
                                    temp225 = mload(0x40);
                                    mstore(temp225,SHL(0xE5,0x461BCD));
                                    mstore((temp225 + 0x4),0x20);
                                    mstore((temp225 + 0x24),0x6);
                                    mstore((temp225 + 0x44),SHL(0xD0,0x42433A332D31));
                                    temp226 = mload(0x40);
                                    revert(temp226,(0x64 + (temp225 - temp226)));
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
                        temp227 = mload(0x40);
                        mstore(temp227,SHL(0xE5,0x461BCD));
                        mstore((temp227 + 0x4),0x20);
                        mstore((temp227 + 0x24),0x5);
                        mstore((temp227 + 0x44),SHL(0xD8,0x42433A2033));
                        temp228 = mload(0x40);
                        revert(temp228,(0x64 + (temp227 - temp228)));
                    }
                }
                else
                {
                    temp229 = mload(0x40);
                    mstore(temp229,SHL(0xE5,0x461BCD));
                    mstore((temp229 + 0x4),0x20);
                    mstore((temp229 + 0x24),0x5);
                    mstore((temp229 + 0x44),SHL(0xD9,0x21219D1019));
                    temp230 = mload(0x40);
                    revert(temp230,(0x64 + (temp229 - temp230)));
                }
            }
            else
            {
                temp231 = mload(0x40);
                mstore(temp231,SHL(0xE5,0x461BCD));
                mstore((temp231 + 0x4),0x20);
                mstore((temp231 + 0x24),0x5);
                mstore((temp231 + 0x44),SHL(0xD8,0x42433A2031));
                temp232 = mload(0x40);
                revert(temp232,(0x64 + (temp231 - temp232)));
            }
        }
    }

    function FUNC_4BA69FAA() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCF)));
    }

    function FUNC_523A3F08( uint256 arg0) public return ()
    {
        var2 = arg0;
        var6 = func_00002651();
        mstore(0x80,SHL(0xE0,0x2A1450EA));
        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & this.address));
        mstore(0xA4,((SHL(0xA0,0x1) - 0x1) & var6));
        var10 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCA));
        var11 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCA))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCA))));
        if (delegatecall(gasleft,var10,0x80,0x44,0x80,0x20)) 
        {
            require((0x20 < returndatasize));
            var3 = mload(0x80);
            if (var3) 
            {
                if (var3) 
                {
                                                                     //-> label_000016AD:
                    var3 = paused();
                    if (var3) 
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0x10);
                        mstore(0xC4,SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
                        revert(0x80,0x64);
                    }
                    else if ((sload(0x97) == 0x2)) 
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0x1F);
                        temp243 = mload(0x0);
                        callcodecopy(0x0,0x361E,0x20);
                        temp242 = mload(0x0);
                        mstore(0x0,temp243);
                        mstore(0xC4,temp242);
                        revert(0x80,0x64);
                    }
                    else
                    {
                        sstore(0x97,0x2);
                        mstore(0x80,SHL(0xE7,0x1EAA5D7));
                        var3 = var2;
                        var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCB));
                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCB))));
                        if (delegatecall(gasleft,var11,0x80,0x4,0x80,0x20)) 
                        {
                            require((0x20 < returndatasize));
                            temp240 = mload(0x80);
                            if ((var3 < temp240)) 
                            {
                                mstore(0x80,SHL(0xE0,0x9F44FF8D));
                                mstore(0x84,var2);
                                var11 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                var6 = var11.call(0x80,0x24);
                                var6 = (var6 == 0);
                                if (var6) 
                                {
                                    returndatacopy(0x0,0x0,returndatasize);
                                    revert(0x0,returndatasize);
                                }
                                else
                                {
                                    var4 = func_00002651();
                                    var2 = func_00002808(((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var4,var2);
                                    sstore(0x97,0x1);
                                    return();
                                }
                            }
                            else
                            {
                                mstore(0x80,SHL(0xE5,0x461BCD));
                                mstore(0x84,0x20);
                                mstore(0xA4,0x5);
                                mstore(0xC4,SHL(0xD8,0x57523A2031));
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
                                                                     //-> label_00001671:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0xD);
                    mstore(0xC4,SHL(0x99,0x30B63637BBB2B221B0B63632B9));
                    revert(0x80,0x64);
                }
            }
            else
            {
                var3 = owner();
                var4 = func_00002651();
                temp244 = ((SHL(0xA0,0x1) - 0x1) & var4);
                if ((temp244 == ((SHL(0xA0,0x1) - 0x1) & var3))) 
                {
                    goto label_000016AD;
                }
                else
                {
                    goto label_00001671;
                }
            }
        }
        else
        {
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
    }

    function FUNC_595C6A67() public return ()
    {
        var2 = func_00002651();
        var3 = owner();
        temp245 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp245 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
        {
            var2 = paused();
            if (var2) 
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x10);
                mstore(0xC4,SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
                revert(0x80,0x64);
            }
            else
            {
                var3 = paused();
                if (var3) 
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x10);
                    mstore(0xC4,SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
                    revert(0x80,0x64);
                }
                else
                {
                    paused = 0x1;
                    var4 = func_00002651();
                    mstore(0x80,(var4 & (SHL(0xA0,0x1) - 0x1)));
                    log(0x80,0x20,0x62E78CEA01BEE320CD4E420270B5EA74000D11B0C9F74754EBDBFC544B05A258);
                    return();
                }
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp247 = mload(0x0);
            callcodecopy(0x0,0x36B3,0x20);
            temp246 = mload(0x0);
            mstore(0x0,temp247);
            mstore(0xC4,temp246);
            revert(0x80,0x64);
        }
    }

    function FUNC_5BFB7508() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCE)));
    }

    uint8 public paused;

    function FUNC_60BA10DF( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) public return (var0)
    {
        mstore(0xE0,0x3);
        mstore(0x40,0x160);
        calldatacopy(0x100,msg.data.length,0x60);
        var12 = 0xE0;
        temp17 = mload(0xE0);
        assert((0x0 < temp17));
        mstore(0x100,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & arg0)));
        temp18 = mload(0xE0);
        assert((0x1 < temp18));
        mstore(0x120,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & arg1)));
        temp19 = mload(0xE0);
        assert((0x2 < temp19));
        mstore(0x140,((SHL(0xA0,0x1) - 0x1) & arg2));
        mstore(0x160,SHL(0xE0,0xD06CA61F));
        mstore(0x164,arg3);
        mstore(0x184,0x40);
        temp20 = mload(0xE0);
        mstore(0x1A4,temp20);
        temp21 = mload(0xE0);
        var13 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
        var19 = 0x1C4;
        var21 = (temp21 * 0x20);
        var22 = (temp21 * 0x20);
        var24 = 0x100;
        var25 = 0x0;
                                                                     //-> label_00001A3C:
        if ((var22 < var25)) 
        {
            temp22 = (var21 + var19);
            var18 = (temp22 - 0x160);
            var20 = var13;
            require(extcodesize(var13));
            if (delegatecall(gasleft,var20,0x160,var18,0x160,0x0)) 
            {
                returndatacopy(0x160,0x0,returndatasize);
                var14 = returndatasize;
                mstore(0x40,(0x160 + (~0x1F & (returndatasize + 0x1F))));
                require((0x20 < returndatasize));
                temp25 = (0x160 + var14);
                temp27 = mload(0x160);
                temp26 = mload(0x40);
                var13 = temp26;
                var14 = temp25;
                var17 = temp27;
                var18 = temp26;
                require((SHL(0x20,0x1) > temp27));
                var17 = (0x160 + var17);
                var19 = (var17 + 0x20);
                require((var14 > (var17 + 0x20)));
                var20 = mload(var17);
                require(!((var20 > SHL(0x20,0x1)) | ((var19 + (var20 * 0x20)) > var14)));
                mstore(var18,var20);
                temp30 = mload(var17);
                var17 = (0x20 + var18);
                var18 = (0x20 + var17);
                var19 = (0x20 * temp30);
                var20 = (0x20 * temp30);
                var21 = (0x20 + var18);
                var22 = (0x20 + var17);
                var23 = 0x0;
                                                                     //-> label_00001B10:
                if ((var20 < var23)) 
                {
                    temp31 = (var19 + var17);
                    mstore(0x40,temp31);
                    if (0x1) 
                    {
                        goto label_00001B41;
                    }
                    else
                    {
                        goto label_00001B3D;
                    }
                }
                else
                {
                    temp32 = mload((var23 + var22));
                    mstore((var23 + var21),temp32);
                    var23 = (0x20 + var23);
                    goto label_00001B10;
                }
            }
            else if (var13) 
            {
                                                                     //-> label_00001B41:
                var13 = var12;
                temp23 = mload(var12);
                assert((0x2 < temp23));
                temp24 = mload((0x60 + var13));
            }
            else
            {
                                                                     //-> label_00001B3D:
                return(0x0);
            }
        }
        else
        {
            temp33 = mload((var25 + var24));
            mstore((var25 + var23),temp33);
            var25 = (0x20 + var25);
            goto label_00001A3C;
        }
    }

    function FUNC_63D93ED0( uint256 arg0) public return ()
    {
        var3 = paused();
        if (var3) 
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x10);
            mstore(0xC4,SHL(0x82,0x14185D5CD8589B194E881C185D5CD959));
            revert(0x80,0x64);
        }
        else if ((sload(0x97) == 0x2)) 
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x1F);
            temp252 = mload(0x0);
            callcodecopy(0x0,0x361E,0x20);
            temp251 = mload(0x0);
            mstore(0x0,temp252);
            mstore(0xC4,temp251);
            revert(0x80,0x64);
        }
        else
        {
            sstore(0x97,0x2);
            var6 = func_00002651();
            mstore(0x80,SHL(0xE0,0x84626C86));
            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var6));
            var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCB));
            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCB))));
            if (delegatecall(gasleft,var11,0x80,0x24,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                temp248 = mload(0x80);
                if ((arg0 < temp248)) 
                {
                    var5 = func_00002651();
                    mstore(0x80,SHL(0xE0,0x3D7A490));
                    mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var5));
                    mstore(0xA4,arg0);
                    var11 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCB));
                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCB))));
                    var6 = var11.call(0x80,0x44);
                    var6 = (var6 == 0);
                    if (var6) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        var4 = func_00002651();
                        var2 = func_00002808(((SHL(0xA0,0x1) - 0x1) & sload(0xD0)),var4,arg0);
                        var3 = func_00002651();
                        temp250 = ((SHL(0xA0,0x1) - 0x1) & var3);
                        mstore(0x80,var2);
                        log(0x80,0x20,0x9E18CB83E7A68BF01F5DBAA3DB1DD5DCBDF7913EBDE45D176D97DCEBDEAC4258,temp250);
                        sstore(0x97,0x1);
                        return();
                    }
                }
                else
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x5);
                    mstore(0xC4,SHL(0xD8,0x48523A2031));
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

    function renounceOwnership() public return ()
    {
        var2 = func_00002651();
        var3 = owner();
        temp253 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp253 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
        {
            log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,((SHL(0xA0,0x1) - 0x1) & sload(0x33)),0x0);
            sstore(0x33,(~(SHL(0xA0,0x1) - 0x1) & sload(0x33)));
            return();
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp255 = mload(0x0);
            callcodecopy(0x0,0x36B3,0x20);
            temp254 = mload(0x0);
            mstore(0x0,temp255);
            mstore(0xC4,temp254);
            revert(0x80,0x64);
        }
    }

    function FUNC_735DE9F7() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xC9)));
    }

    function data() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCB)));
    }

    function initialize() public return ()
    {
        var2 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_00001E7A:
            if (var2) 
            {
                if (var2) 
                {
                                                                     //-> label_00001EC3:
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        var2 = func_00002F3D();
                                                                     //-> label_00001EF6:
                        var2 = func_00002FEE();
                        sstore(0xC9,(0x7A250D5630B4CF539739DF2C5DACB4C659F2488D | (~(SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                        if (var2) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return();
                        }
                        else
                        {
                            return();
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        var2 = func_00002F3D();
                        goto label_00001EF6;
                    }
                }
                else
                {
                                                                     //-> label_00001E8D:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x3664,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_00001E8D;
            }
            else
            {
                goto label_00001EC3;
            }
        }
        else
        {
            var2 = func_00002F2C();
            goto label_00001E7A;
        }
    }

    function owner() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0x33)));
    }

    function FUNC_A64FB0A6() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xD0)));
    }

    function FUNC_B9FB4121( uint256 arg0,uint256 arg1,uint256 arg2) public return (var0)
    {
        mstore(0x80,0x2);
        mstore(0x40,0xE0);
        calldatacopy(0xA0,msg.data.length,0x40);
        var11 = 0x80;
        temp0 = mload(0x80);
        assert((0x0 < temp0));
        mstore(0xA0,((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & arg0)));
        temp1 = mload(0x80);
        assert((0x1 < temp1));
        mstore(0xC0,((SHL(0xA0,0x1) - 0x1) & arg1));
        mstore(0xE0,SHL(0xE0,0xD06CA61F));
        mstore(0xE4,arg2);
        mstore(0x104,0x40);
        temp2 = mload(0x80);
        mstore(0x124,temp2);
        temp3 = mload(0x80);
        var12 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
        var18 = 0x144;
        var20 = (temp3 * 0x20);
        var21 = (temp3 * 0x20);
        var23 = 0xA0;
        var24 = 0x0;
                                                                     //-> label_0000201B:
        if ((var21 < var24)) 
        {
            temp4 = (var20 + var18);
            var17 = (temp4 - 0xE0);
            var19 = var12;
            require(extcodesize(var12));
            if (delegatecall(gasleft,var19,0xE0,var17,0xE0,0x0)) 
            {
                returndatacopy(0xE0,0x0,returndatasize);
                var13 = returndatasize;
                mstore(0x40,(0xE0 + (~0x1F & (returndatasize + 0x1F))));
                require((0x20 < returndatasize));
                temp7 = (0xE0 + var13);
                temp9 = mload(0xE0);
                temp8 = mload(0x40);
                var12 = temp8;
                var13 = temp7;
                var16 = temp9;
                var17 = temp8;
                require((SHL(0x20,0x1) > temp9));
                var16 = (0xE0 + var16);
                var18 = (var16 + 0x20);
                require((var13 > (var16 + 0x20)));
                var19 = mload(var16);
                require(!((var19 > SHL(0x20,0x1)) | ((var18 + (var19 * 0x20)) > var13)));
                mstore(var17,var19);
                temp12 = mload(var16);
                var16 = (0x20 + var17);
                var17 = (0x20 + var16);
                var18 = (0x20 * temp12);
                var19 = (0x20 * temp12);
                var20 = (0x20 + var17);
                var21 = (0x20 + var16);
                var22 = 0x0;
                                                                     //-> label_000020EF:
                if ((var19 < var22)) 
                {
                    temp13 = (var18 + var16);
                    mstore(0x40,temp13);
                    if (0x1) 
                    {
                        goto label_00002120;
                    }
                    else
                    {
                        goto label_0000211C;
                    }
                }
                else
                {
                    temp14 = mload((var22 + var21));
                    mstore((var22 + var20),temp14);
                    var22 = (0x20 + var22);
                    goto label_000020EF;
                }
            }
            else if (var12) 
            {
                                                                     //-> label_00002120:
                var12 = var11;
                temp5 = mload(var11);
                assert((0x1 < temp5));
                temp6 = mload((0x40 + var12));
            }
            else
            {
                                                                     //-> label_0000211C:
                return(0x0);
            }
        }
        else
        {
            temp15 = mload((var24 + var23));
            mstore((var24 + var22),temp15);
            var24 = (0x20 + var24);
            goto label_0000201B;
        }
    }

    function FUNC_C673E248( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4,uint256 arg5,uint256 arg6) public return ()
    {
        var9 = func_00002651();
        var10 = owner();
        temp258 = ((SHL(0xA0,0x1) - 0x1) & var10);
        if ((temp258 == ((SHL(0xA0,0x1) - 0x1) & var9))) 
        {
            if ((arg0 & (SHL(0xA0,0x1) - 0x1))) 
            {
                if ((arg1 & (SHL(0xA0,0x1) - 0x1))) 
                {
                    if ((arg2 & (SHL(0xA0,0x1) - 0x1))) 
                    {
                        if ((arg3 & (SHL(0xA0,0x1) - 0x1))) 
                        {
                            if ((arg4 & (SHL(0xA0,0x1) - 0x1))) 
                            {
                                if ((arg5 & (SHL(0xA0,0x1) - 0x1))) 
                                {
                                    if ((arg6 & (SHL(0xA0,0x1) - 0x1))) 
                                    {
                                        sstore(0xCA,(((SHL(0xA0,0x1) - 0x1) & arg0) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCA))));
                                        sstore(0xD0,(((SHL(0xA0,0x1) - 0x1) & arg1) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xD0))));
                                        sstore(0xCB,(((SHL(0xA0,0x1) - 0x1) & arg2) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCB))));
                                        sstore(0xCC,(((SHL(0xA0,0x1) - 0x1) & arg3) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCC))));
                                        sstore(0xCD,(((SHL(0xA0,0x1) - 0x1) & arg4) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCD))));
                                        sstore(0xCE,(((SHL(0xA0,0x1) - 0x1) & arg5) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCE))));
                                        sstore(0xCF,(((SHL(0xA0,0x1) - 0x1) & arg6) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCF))));
                                        return();
                                    }
                                    else
                                    {
                                        mstore(0x80,SHL(0xE5,0x461BCD));
                                        mstore(0x84,0x20);
                                        mstore(0xA4,0x3);
                                        mstore(0xC4,SHL(0xE8,0x533A37));
                                        revert(0x80,0x64);
                                    }
                                }
                                else
                                {
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x3);
                                    mstore(0xC4,SHL(0xE9,0x299D1B));
                                    revert(0x80,0x64);
                                }
                            }
                            else
                            {
                                mstore(0x80,SHL(0xE5,0x461BCD));
                                mstore(0x84,0x20);
                                mstore(0xA4,0x3);
                                mstore(0xC4,SHL(0xE8,0x533A35));
                                revert(0x80,0x64);
                            }
                        }
                        else
                        {
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x3);
                            mstore(0xC4,SHL(0xEA,0x14CE8D));
                            revert(0x80,0x64);
                        }
                    }
                    else
                    {
                        mstore(0x80,SHL(0xE5,0x461BCD));
                        mstore(0x84,0x20);
                        mstore(0xA4,0x3);
                        mstore(0xC4,SHL(0xE8,0x533A33));
                        revert(0x80,0x64);
                    }
                }
                else
                {
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x3);
                    mstore(0xC4,SHL(0xE9,0x299D19));
                    revert(0x80,0x64);
                }
            }
            else
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x3);
                mstore(0xC4,SHL(0xE8,0x533A31));
                revert(0x80,0x64);
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp260 = mload(0x0);
            callcodecopy(0x0,0x36B3,0x20);
            temp259 = mload(0x0);
            mstore(0x0,temp260);
            mstore(0xC4,temp259);
            revert(0x80,0x64);
        }
    }

    function FUNC_E1133C3D( uint256 arg0,uint256 arg1) public return (var0)
    {
        temp99 = mload(0x40);
        mstore(temp99,SHL(0xE0,0xF552EB80));
        var21 = mload(0x40);
        var22 = ((0x4 + temp99) - var21);
        var23 = var21;
        var24 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCB)));
        var25 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCB)))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCB)))));
        if (delegatecall(gasleft,var24,var23,var22,var21,0x20)) 
        {
            var17 = mload(0x40);
            require((0x20 < returndatasize));
            temp101 = mload(var17);
            var16 = temp101;
            if (temp101) 
            {
                temp102 = mload(0x40);
                mstore(temp102,SHL(0xE0,0xE4B23A5E));
                var25 = mload(0x40);
                var26 = ((0x4 + temp102) - var25);
                var27 = var25;
                var28 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCC)));
                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCC)))));
                if (delegatecall(gasleft,var28,var27,var26,var25,0x20)) 
                {
                    var21 = mload(0x40);
                    require((0x20 < returndatasize));
                    temp104 = mload(var21);
                    var22 = FUNC_0255F99E(arg0,arg1);
                    var20 = func_000027AF(var22,temp104);
                    var18 = func_00003083(var20,0x2710);
                    var18 = func_000030EA(var18,var16);
                    return(var18);
                }
                else
                {
                    returndatacopy(0x0,0x0,returndatasize);
                    revert(0x0,returndatasize);
                }
            }
            else
            {
                return(0x0);
            }
        }
        else
        {
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
    }

    function FUNC_E2740E88() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCD)));
    }

    function transferOwnership( address arg0) public return ()
    {
        var3 = func_00002651();
        var4 = owner();
        temp261 = ((SHL(0xA0,0x1) - 0x1) & var4);
        if ((temp261 == ((SHL(0xA0,0x1) - 0x1) & var3))) 
        {
            if ((arg0 & (SHL(0xA0,0x1) - 0x1))) 
            {
                log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,(sload(0x33) & (SHL(0xA0,0x1) - 0x1)),(arg0 & (SHL(0xA0,0x1) - 0x1)));
                sstore(0x33,(((SHL(0xA0,0x1) - 0x1) & arg0) | (~(SHL(0xA0,0x1) - 0x1) & sload(0x33))));
                return();
            }
            else
            {
                mstore(0x80,SHL(0xE5,0x461BCD));
                mstore(0x84,0x20);
                mstore(0xA4,0x26);
                callcodecopy(0xC4,0x363E,0x26);
                revert(0x80,0x84);
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp263 = mload(0x0);
            callcodecopy(0x0,0x36B3,0x20);
            temp262 = mload(0x0);
            mstore(0x0,temp263);
            mstore(0xC4,temp262);
            revert(0x80,0x64);
        }
    }

    function FUNC_FFE6E7D7() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCA)));
    }









    function func_00002651() private return (var0)
    {
        return(msg.sender);
    }

    function func_00002655() private return (var0)
    {
        var3 = paused();
        if (var3) 
        {
            paused = 0x0;
            var4 = func_00002651();
            mstore(0x80,(var4 & (SHL(0xA0,0x1) - 0x1)));
            log(0x80,0x20,0x5DB9EE0A495BF2E6FF9C91A7834C1BA4FDD244A5E8AA4E537BD38AEAE4B073AA);
            return(var1);
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x14);
            mstore(0xC4,SHL(0x62,0x14185D5CD8589B194E881B9BDD081C185D5CD959));
            revert(0x80,0x64);
        }
    }

    function func_000026F5( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) private return (var0)
    {
        mstore(0xA4,(arg1 & (SHL(0xA0,0x1) - 0x1)));
        mstore(0xC4,(arg2 & (SHL(0xA0,0x1) - 0x1)));
        mstore(0xE4,arg3);
        mstore(0x80,0x64);
        mstore(0x40,0x104);
        temp39 = mload(0xA0);
        mstore(0xA0,(SHL(0xE0,0x23B872DD) | ((SHL(0xE0,0x1) - 0x1) & temp39)));
        var7 = func_00003100(arg0,0x80);
        return(var2);
    }

    function func_00003100( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(0x40,0x144);
        mstore(0x104,0x20);
        mstore(0x124,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
        var12 = func_00003453(((SHL(0xA0,0x1) - 0x1) & arg0),arg1,0x104);
        temp52 = mload(var12);
        var11 = var12;
        if (temp52) 
        {
            var12 = (0x20 + var11);
            var13 = mload(var11);
            require((0x20 < var13));
            if (temp54) 
            {
                goto label_0000285A;
            }
            else
            {
                mstore(0x144,SHL(0xE5,0x461BCD));
                mstore(0x148,0x20);
                mstore(0x168,0x2A);
                callcodecopy(0x188,0x36D3,0x2A);
                revert(0x144,0x84);
            }
        }
        else
        {
                                                                     //-> label_0000285A:
            return(var7);
        }
    }

    function func_00003453( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var21 = arg2;
        var23 = func_0000320E(arg0);
        if (var23) 
        {
            var25 = ((SHL(0xA0,0x1) - 0x1) & arg0);
            var26 = 0x0;
            var29 = 0x144;
            temp40 = mload(arg1);
            var31 = temp40;
            var32 = temp40;
            var33 = 0x144;
            var34 = (0x20 + arg1);
                                                                     //-> label_000034D8:
            if ((var32 < 0x20)) 
            {
                temp41 = mload(var34);
                temp42 = mload(var33);
                mstore(var33,((temp41 & ~(EXP(0x100,(0x20 - var32)) - 0x1)) | (temp42 & (EXP(0x100,(0x20 - var32)) - 0x1))));
                temp43 = (var31 + var29);
                var28 = var25.call.value(var26)(0x144,(temp43 - 0x144));
                var25 = var28;
                if ((returndatasize == 0x0)) 
                {
                    var26 = 0x60;
                                                                     //-> label_0000355E:
                    var25 = func_00003579(var25,var26,var21);
                    return(var25);
                }
                else
                {
                    var26 = 0x144;
                    mstore(0x40,(0x144 + ((returndatasize + 0x3F) & ~0x1F)));
                    mstore(0x144,returndatasize);
                    returndatacopy(0x164,0x0,returndatasize);
                    goto label_0000355E;
                }
            }
            else
            {
                temp51 = mload(var34);
                mstore(var33,temp51);
                var32 = (var32 + ~0x1F);
                var33 = (0x20 + var33);
                var34 = (0x20 + var34);
                goto label_000034D8;
            }
        }
        else
        {
            mstore(0x144,SHL(0xE5,0x461BCD));
            mstore(0x148,0x20);
            mstore(0x168,0x1D);
            mstore(0x188,0x416464726573733A2063616C6C20746F206E6F6E2D636F6E7472616374000000);
            revert(0x144,0x64);
        }
    }

    function func_0000320E( uint256 arg0) private return (var0)
    {
        return(extcodesize(arg0));
    }

    function func_00003579( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        if (arg0) 
        {
            return(arg1);
        }
        else
        {
            temp44 = mload(arg1);
            if (temp44) 
            {
                var30 = mload(arg1);
                revert((0x20 + arg1),var30);
            }
            else
            {
                mstore(0x144,SHL(0xE5,0x461BCD));
                mstore(0x148,0x20);
                temp45 = mload(arg2);
                mstore(0x168,temp45);
                var33 = 0x188;
                temp46 = mload(arg2);
                var35 = temp46;
                var36 = temp46;
                var37 = 0x188;
                var38 = (0x20 + arg2);
                var39 = 0x0;
                                                                     //-> label_000035CA:
                if ((var36 < var39)) 
                {
                    var33 = (var35 + var33);
                    var34 = (0x1F & var35);
                    require((0x1F & var35));
                    temp47 = mload((var33 - var34));
                    mstore((var33 - var34),(~(EXP(0x100,(0x20 - var34)) - 0x1) & temp47));
                    temp48 = (0x20 + (var33 - var34));
                    revert(0x144,(temp48 - 0x144));
                }
                else
                {
                    temp49 = mload((var39 + var38));
                    mstore((var39 + var37),temp49);
                    var39 = (0x20 + var39);
                    goto label_000035CA;
                }
            }
        }
    }

    function func_00002808( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        temp93 = mload(0x40);
        mstore((temp93 + 0x24),(arg1 & (SHL(0xA0,0x1) - 0x1)));
        mstore((temp93 + 0x44),arg2);
        temp94 = mload(0x40);
        mstore(temp94,(0x44 + (temp93 - temp94)));
        mstore(0x40,(temp93 + 0x64));
        temp95 = mload((temp94 + 0x20));
        mstore((temp94 + 0x20),(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp95)));
        var15 = func_00003100(arg0,temp94);
        return(var11);
    }

    function func_000027AF( uint256 arg0,uint256 arg1) private return (var0)
    {
        if (arg0) 
        {
            var24 = (arg1 * arg0);
            var27 = (arg1 * arg0);
            assert(arg0);
            if (((var27 / arg0) == arg1)) 
            {
                var23 = var24;
                                                                     //-> label_00000805:
                return(var23);
            }
            else
            {
                temp105 = mload(0x40);
                mstore(temp105,SHL(0xE5,0x461BCD));
                mstore((0x4 + temp105),0x20);
                mstore((0x20 + (0x4 + temp105)),0x21);
                callcodecopy((0x20 + (0x20 + (0x4 + temp105))),0x3692,0x21);
                temp106 = mload(0x40);
                revert(temp106,((0x40 + (0x20 + (0x20 + (0x4 + temp105)))) - temp106));
            }
        }
        else
        {
            var23 = 0x0;
            goto label_00000805;
        }
    }

    function func_00003083( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg1 > 0x0)) 
        {
            assert(arg1);
            return((arg0 / arg1));
        }
        else
        {
            temp107 = mload(0x40);
            mstore(temp107,SHL(0xE5,0x461BCD));
            mstore((temp107 + 0x4),0x20);
            mstore((temp107 + 0x24),0x1A);
            mstore((temp107 + 0x44),0x536166654D6174683A206469766973696F6E206279207A65726F000000000000);
            temp108 = mload(0x40);
            revert(temp108,(0x64 + (temp107 - temp108)));
        }
    }

    function func_000030EA( uint256 arg0,uint256 arg1) private return (var0)
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

    function func_0000285F( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4,uint256 arg5,uint256 arg6) private return (var0)
    {
        var13 = arg0;
        var14 = arg1;
        var15 = arg2;
        var16 = arg3;
        var17 = arg4;
        var18 = arg5;
        var19 = arg6;
        var20 = 0x0;
        var21 = 0x0;
                                                                     //-> label_00002863:
        temp109 = mload(var17);
        if ((temp109 < var21)) 
        {
            return(var11);
        }
        else
        {
            temp110 = mload(0x40);
            mstore(temp110,SHL(0xE0,0x1F983E2F));
            mstore((temp110 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
            temp111 = mload(0x40);
            var26 = temp111;
            var27 = ((temp110 - temp111) + 0x24);
            var28 = temp111;
            var30 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
            require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
            var25 = var30.call(var28,var27);
            var25 = (var25 == 0);
            if (var25) 
            {
                returndatacopy(0x0,0x0,returndatasize);
                revert(0x0,returndatasize);
            }
            else
            {
                temp113 = mload(0x40);
                mstore(temp113,SHL(0xE2,0xA3F65));
                mstore((temp113 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
                temp114 = mload(0x40);
                var27 = temp114;
                var28 = ((temp113 - temp114) + 0x24);
                var29 = temp114;
                var30 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                if (delegatecall(gasleft,var30,var29,var28,var27,0x20)) 
                {
                    var23 = mload(0x40);
                    require((0x20 < returndatasize));
                    temp116 = mload(var23);
                    temp115 = mload(0x40);
                    mstore(temp115,SHL(0xE1,0x7023DB71));
                    mstore((temp115 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
                    mstore((temp115 + 0x24),temp116);

                    //ISSUE:WARNING:Block timestamp is referred.
                    mstore((temp115 + 0x44),block.timestamp);
                    temp117 = mload(0x40);
                    var22 = temp116;
                    var27 = temp117;
                    var28 = ((temp115 - temp117) + 0x64);
                    var29 = temp117;
                    var31 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                    require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                    var26 = var31.call(var29,var28);
                    var26 = (var26 == 0);
                    if (var26) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        temp119 = mload(var18);
                        var23 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                        var25 = var13;
                        var26 = var22;
                        var27 = var18;
                        var28 = var21;
                        assert((var21 < temp119));
                        temp120 = (0x20 + (0x20 * var28));
                        temp121 = mload((temp120 + var27));
                        temp122 = mload(0x40);
                        mstore(temp122,SHL(0xE0,0x30B4B89F));
                        mstore((0x4 + temp122),((SHL(0xA0,0x1) - 0x1) & var25));
                        mstore((0x20 + (0x4 + temp122)),var26);

                        //ISSUE:WARNING:Block timestamp is referred.
                        mstore((0x20 + (0x20 + (0x4 + temp122))),(block.timestamp + (0x15180 * temp121)));
                        var27 = mload(0x40);
                        var28 = ((0x20 + (0x20 + (0x20 + (0x4 + temp122)))) - var27);
                        var29 = var27;
                        var31 = var23;
                        require(extcodesize(var23));
                        var26 = var31.call(var29,var28);
                        var26 = (var26 == 0);
                        if (var26) 
                        {
                            returndatacopy(0x0,0x0,returndatasize);
                            revert(0x0,returndatasize);
                        }
                        else
                        {
                            temp125 = mload(var17);
                            var23 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                            var25 = var13;
                            var26 = var22;
                            var27 = var17;
                            var28 = var21;
                            assert((var21 < temp125));
                            temp126 = (0x20 + (0x20 * var28));
                            temp128 = mload((temp126 + var27));
                            temp127 = mload(0x40);
                            mstore(temp127,SHL(0xE0,0x5D107D4D));
                            mstore((0x4 + temp127),((SHL(0xA0,0x1) - 0x1) & var25));
                            mstore((0x20 + (0x4 + temp127)),var26);
                            mstore((0x20 + (0x20 + (0x4 + temp127))),temp128);
                            var27 = mload(0x40);
                            var28 = ((0x20 + (0x20 + (0x20 + (0x4 + temp127)))) - var27);
                            var29 = var27;
                            var31 = var23;
                            require(extcodesize(var23));
                            var26 = var31.call(var29,var28);
                            var26 = (var26 == 0);
                            if (var26) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                temp131 = mload(var18);
                                var23 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                var25 = var13;
                                var26 = var22;
                                var27 = var18;
                                var28 = var21;
                                assert((var21 < temp131));
                                temp132 = (0x20 + (0x20 * var28));
                                temp134 = mload((temp132 + var27));
                                temp133 = mload(0x40);
                                mstore(temp133,SHL(0xE0,0xBE28E05A));
                                mstore((0x4 + temp133),((SHL(0xA0,0x1) - 0x1) & var25));
                                mstore((0x20 + (0x4 + temp133)),var26);
                                mstore((0x20 + (0x20 + (0x4 + temp133))),temp134);
                                var27 = mload(0x40);
                                var28 = ((0x20 + (0x20 + (0x20 + (0x4 + temp133)))) - var27);
                                var29 = var27;
                                var31 = var23;
                                require(extcodesize(var23));
                                var26 = var31.call(var29,var28);
                                var26 = (var26 == 0);
                                if (var26) 
                                {
                                    returndatacopy(0x0,0x0,returndatasize);
                                    revert(0x0,returndatasize);
                                }
                                else
                                {
                                    temp137 = mload(0x40);
                                    mstore(temp137,SHL(0xE0,0x590D01CD));
                                    mstore((temp137 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
                                    mstore((temp137 + 0x24),var22);
                                    mstore((temp137 + 0x44),((SHL(0xA0,0x1) - 0x1) & var14));
                                    temp138 = mload(0x40);
                                    var27 = temp138;
                                    var28 = ((temp137 - temp138) + 0x64);
                                    var29 = temp138;
                                    var31 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                    require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                    var26 = var31.call(var29,var28);
                                    var26 = (var26 == 0);
                                    if (var26) 
                                    {
                                        returndatacopy(0x0,0x0,returndatasize);
                                        revert(0x0,returndatasize);
                                    }
                                    else
                                    {
                                        temp140 = mload(var19);
                                        var23 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                        var25 = var13;
                                        var26 = var22;
                                        var27 = var19;
                                        var28 = var21;
                                        assert((var21 < temp140));
                                        temp141 = (0x20 + (0x20 * var28));
                                        temp143 = mload((temp141 + var27));
                                        temp142 = mload(0x40);
                                        mstore(temp142,SHL(0xE0,0x17446F31));
                                        mstore((0x4 + temp142),((SHL(0xA0,0x1) - 0x1) & var25));
                                        mstore((0x20 + (0x4 + temp142)),var26);
                                        mstore((0x20 + (0x20 + (0x4 + temp142))),temp143);
                                        var27 = mload(0x40);
                                        var28 = ((0x20 + (0x20 + (0x20 + (0x4 + temp142)))) - var27);
                                        var29 = var27;
                                        var31 = var23;
                                        require(extcodesize(var23));
                                        var26 = var31.call(var29,var28);
                                        var26 = (var26 == 0);
                                        if (var26) 
                                        {
                                            returndatacopy(0x0,0x0,returndatasize);
                                            revert(0x0,returndatasize);
                                        }
                                        else
                                        {
                                            temp146 = mload(0x40);
                                            mstore(temp146,SHL(0xE2,0x3370C3BB));
                                            mstore((temp146 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
                                            mstore((temp146 + 0x24),var22);
                                            mstore((temp146 + 0x44),0x0);
                                            temp147 = mload(0x40);
                                            var27 = temp147;
                                            var28 = ((temp146 - temp147) + 0x64);
                                            var29 = temp147;
                                            var31 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                            require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                            var26 = var31.call(var29,var28);
                                            var26 = (var26 == 0);
                                            if (var26) 
                                            {
                                                returndatacopy(0x0,0x0,returndatasize);
                                                revert(0x0,returndatasize);
                                            }
                                            else
                                            {
                                                temp149 = mload(var17);
                                                var24 = func_000031B1(temp149,0x1);
                                                if ((var21 == var24)) 
                                                {
                                                    var24 = func_000031B1(var16,var20);
                                                    var23 = var24;
                                                    goto label_00002D73;
                                                }
                                                else
                                                {
                                                    var26 = var18;
                                                    var27 = var21;
                                                    temp152 = mload(var18);
                                                    assert((var21 < temp152));
                                                    temp153 = (0x20 + (0x20 * var27));
                                                    var26 = mload((temp153 + var26));
                                                    var27 = var19;
                                                    var28 = var21;
                                                    temp154 = mload(var19);
                                                    assert((var21 < temp154));
                                                    temp155 = (0x20 + (0x20 * var28));
                                                    temp156 = mload((temp155 + var27));
                                                    var25 = func_000027AF(temp156,var26);
                                                    var31 = func_000027AF(var25,0x2710);
                                                    var29 = func_00003083(var31,var15);
                                                    var27 = func_000027AF(var29,var16);
                                                    var25 = func_00003083(var27,0x2710);
                                                    var23 = var25;
                                                    var25 = func_00002755(var20,var25);
                                                    var20 = var25;
                                                                     //-> label_00002D73:
                                                    temp159 = mload(0x40);
                                                    mstore(temp159,SHL(0xE1,0xAA653D5));
                                                    mstore((temp159 + 0x4),((SHL(0xA0,0x1) - 0x1) & var13));
                                                    mstore((temp159 + 0x24),var22);
                                                    mstore((temp159 + 0x44),var23);
                                                    temp160 = mload(0x40);
                                                    var28 = temp160;
                                                    var29 = ((temp159 - temp160) + 0x64);
                                                    var30 = temp160;
                                                    var32 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                    require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                    var27 = var32.call(var30,var29);
                                                    var27 = (var27 == 0);
                                                    if (var27) 
                                                    {
                                                        returndatacopy(0x0,0x0,returndatasize);
                                                        revert(0x0,returndatasize);
                                                    }
                                                    else
                                                    {
                                                        var24 = ((SHL(0xA0,0x1) - 0x1) & var13);
                                                        var25 = ((SHL(0xA0,0x1) - 0x1) & var14);
                                                        var27 = var22;
                                                        var28 = var17;
                                                        var29 = var21;
                                                        temp162 = mload(var17);
                                                        assert((var21 < temp162));
                                                        temp163 = (0x20 + (0x20 * var29));
                                                        var28 = mload((temp163 + var28));
                                                        var29 = var18;
                                                        var30 = var21;
                                                        temp164 = mload(var18);
                                                        assert((var21 < temp164));
                                                        temp165 = (0x20 + (0x20 * var30));
                                                        var29 = mload((temp165 + var29));
                                                        var30 = var19;
                                                        var31 = var21;
                                                        temp166 = mload(var19);
                                                        assert((var21 < temp166));
                                                        temp167 = (0x20 + (0x20 * var31));
                                                        temp169 = mload((temp167 + var30));
                                                        temp168 = mload(0x40);
                                                        mstore(temp168,var27);
                                                        mstore((0x20 + temp168),var28);
                                                        mstore((0x20 + (0x20 + temp168)),var29);
                                                        mstore((0x20 + (0x20 + (0x20 + temp168))),temp169);
                                                        mstore((0x20 + (0x20 + (0x20 + (0x20 + temp168)))),var23);
                                                        mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + temp168))))),0x0);
                                                        temp170 = mload(0x40);
                                                        log(temp170,((0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + temp168)))))) - temp170),0x4603A0F139025C56EE9217A06DC5B986EBE24E4C886E867358860CB120F6F12B,var25,var24);
                                                        var21 = (0x1 + var21);
                                                        goto label_00002863;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
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
        }
    }

    function func_000031B1( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            temp150 = mload(0x40);
            mstore(temp150,SHL(0xE5,0x461BCD));
            mstore((temp150 + 0x4),0x20);
            mstore((temp150 + 0x24),0x1E);
            mstore((temp150 + 0x44),0x536166654D6174683A207375627472616374696F6E206F766572666C6F770000);
            temp151 = mload(0x40);
            revert(temp151,(0x64 + (temp150 - temp151)));
        }
    }

    function func_00002755( uint256 arg0,uint256 arg1) private return (var0)
    {
        var29 = (arg1 + arg0);
        if ((arg0 < (arg1 + arg0))) 
        {
            return(var29);
        }
        else
        {
            temp157 = mload(0x40);
            mstore(temp157,SHL(0xE5,0x461BCD));
            mstore((temp157 + 0x4),0x20);
            mstore((temp157 + 0x24),0x1B);
            mstore((temp157 + 0x44),0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            temp158 = mload(0x40);
            revert(temp158,(0x64 + (temp157 - temp158)));
        }
    }

    function func_00002F3D() private return (var0)
    {
        var4 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_00002F56:
            if (var4) 
            {
                if (var4) 
                {
                                                                     //-> label_00002F9F:
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        var4 = func_00003214();
                                                                     //-> label_00002FD2:
                        var4 = func_000032B4();
                        if (var4) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return(var2);
                        }
                        else
                        {
                            return(var2);
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        var4 = func_00003214();
                        goto label_00002FD2;
                    }
                }
                else
                {
                                                                     //-> label_00002F69:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x3664,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_00002F69;
            }
            else
            {
                goto label_00002F9F;
            }
        }
        else
        {
            var4 = func_00002F2C();
            goto label_00002F56;
        }
    }

    function func_00003214() private return (var0)
    {
        var6 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_0000322D:
            if (var6) 
            {
                if (var6) 
                {
                                                                     //-> label_00003276:
                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        if (var6) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return(var4);
                        }
                        else
                        {
                                                                     //-> label_00001F36:
                            return(var4);
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        if (var6) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return(var4);
                        }
                        else
                        {
                            goto label_00001F36;
                        }
                    }
                }
                else
                {
                                                                     //-> label_00003240:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x3664,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_00003240;
            }
            else
            {
                goto label_00003276;
            }
        }
        else
        {
            var6 = func_00002F2C();
            goto label_0000322D;
        }
    }

    function func_00002F2C() private return (var0)
    {
        var8 = func_0000320E(this.address);
        temp256 = (var8 == 0);
        return(temp256);
    }

    function func_000032B4() private return (var0)
    {
        var6 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_000032CD:
            if (var6) 
            {
                if (var6) 
                {
                                                                     //-> label_00003316:
                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        var8 = func_00002651();
                                                                     //-> label_0000334B:
                        sstore(0x33,((var8 & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & sload(0x33))));
                        temp257 = (var8 & (SHL(0xA0,0x1) - 0x1));
                        log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,0x0,temp257);
                        if (var6) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return(var4);
                        }
                        else
                        {
                            return(var4);
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        var8 = func_00002651();
                        goto label_0000334B;
                    }
                }
                else
                {
                                                                     //-> label_000032E0:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x3664,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_000032E0;
            }
            else
            {
                goto label_00003316;
            }
        }
        else
        {
            var6 = func_00002F2C();
            goto label_000032CD;
        }
    }

    function func_00002FEE() private return (var0)
    {
        var4 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_00003007:
            if (var4) 
            {
                if (var4) 
                {
                                                                     //-> label_00003050:
                    var4 = (uint8((sload(0x0) / 0x100)) == 0);
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                                                                     //-> label_000033AD:
                        var6 = uint8((sload(0x0) / 0x100));
                        if (uint8((sload(0x0) / 0x100))) 
                        {
                                                                     //-> label_000033C6:
                            if (var6) 
                            {
                                if (var6) 
                                {
                                                                     //-> label_0000340F:
                                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                                    if (uint8((sload(0x0) / 0x100))) 
                                    {
                                        sstore(0x97,0x1);
                                        if (var6) 
                                        {
                                                                     //-> label_00003446:
                                            sstore(0x0,(~0xFF00 & sload(0x0)));
                                            goto label_00002FDA;
                                        }
                                        else
                                        {
                                                                     //-> label_00002FDA:
                                            if (var4) 
                                            {
                                                sstore(0x0,(~0xFF00 & sload(0x0)));
                                                return(var2);
                                            }
                                            else
                                            {
                                                                     //-> label_00001F36:
                                                return(var2);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        sstore(0x0,0x1);
                                        sstore(0x97,0x1);
                                        if (var6) 
                                        {
                                            goto label_00003446;
                                        }
                                        else
                                        {
                                            goto label_00001F36;
                                        }
                                    }
                                }
                                else
                                {
                                                                     //-> label_000033D9:
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x2E);
                                    callcodecopy(0xC4,0x3664,0x2E);
                                    revert(0x80,0x84);
                                }
                            }
                            else if (uint8(sload(0x0))) 
                            {
                                goto label_000033D9;
                            }
                            else
                            {
                                goto label_0000340F;
                            }
                        }
                        else
                        {
                            var6 = func_00002F2C();
                            goto label_000033C6;
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        goto label_000033AD;
                    }
                }
                else
                {
                                                                     //-> label_0000301A:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x3664,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_0000301A;
            }
            else
            {
                goto label_00003050;
            }
        }
        else
        {
            var4 = func_00002F2C();
            goto label_00003007;
        }
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        if ((msg.data.length < 0x4)) 
        {
                                                                     //-> label_0000014B:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));
            if ((0x715018A6 > SHR(0xE0,msg.data(0x0)))) 
            {
                if ((0x523A3F08 > var0)) 
                {

                    //ISSUE:COMMENT: Function FUNC_0255F99E()
                    if ((0x255F99E == var0)) 
                    {
                        require(!msg.value);
                        require((0x40 < (msg.data.length - 0x4)));
                        var1 = FUNC_0255F99E((msg.data(0x4) & (SHL(0xA0,0x1) - 0x1)),msg.data(0x24));
                                                                     //-> label_00000189:
                        mstore(0x80,var1);
                        RETURN(0x80,0x20);
                    }

                    //ISSUE:COMMENT: Function FUNC_0457DAD2()
                    else if ((0x457DAD2 == var0)) 
                    {
                        require(!msg.value);
                        var2 = FUNC_0457DAD2();
                                                                     //-> label_000001B0:
                        mstore(0x80,(var2 & (SHL(0xA0,0x1) - 0x1)));
                        RETURN(0x80,0x20);
                    }

                    //ISSUE:COMMENT: Function FUNC_07C97FFB()
                    else if ((0x7C97FFB == var0)) 
                    {
                        require(!msg.value);
                        FUNC_07C97FFB();
                                                                     //-> label_000001E1:
                        stop();
                    }

                    //ISSUE:COMMENT: Function FUNC_1E2720FF()
                    else if ((0x1E2720FF == var0)) 
                    {
                        require((0x20 < (msg.data.length - 0x4)));
                        FUNC_1E2720FF(msg.data(0x4));
                        goto label_000001E1;
                    }

                    //ISSUE:COMMENT: Function FUNC_347489AE()
                    else if ((0x347489AE == var0)) 
                    {
                        var3 = (msg.data.length - 0x4);
                        require((0xA0 < (msg.data.length - 0x4)));
                        temp58 = (0x4 + var3);
                        var2 = temp58;
                        var5 = msg.data(0x4);
                        require((SHL(0x20,0x1) > msg.data(0x4)));
                        var5 = (0x4 + var5);
                        require((var2 > (var5 + 0x20)));
                        var5 = msg.data(var5);
                        var4 = (0x20 + var5);
                        require(!((var5 > SHL(0x20,0x1)) | (((0x20 + var5) + (var5 * 0x20)) > var2)));
                        mstore(0x40,(0x80 + (0x20 + (0x20 * var5))));
                        mstore(0x80,var5);
                        calldatacopy(0xA0,var4,(0x20 * var5));
                        mstore((0xA0 + (0x20 * var5)),0x0);
                        var3 = var2;
                        var6 = msg.data(0x24);
                        require((SHL(0x20,0x1) > msg.data(0x24)));
                        var6 = (0x4 + var6);
                        require((var3 > (var6 + 0x20)));
                        var6 = msg.data(var6);
                        var5 = (0x20 + var6);
                        require(!((var6 > SHL(0x20,0x1)) | (((0x20 + var6) + (var6 * 0x20)) > var3)));
                        temp63 = mload(0x40);
                        mstore(0x40,(temp63 + (0x20 + (0x20 * var6))));
                        mstore(temp63,var6);
                        calldatacopy((0x20 + temp63),var5,(0x20 * var6));
                        mstore(((0x20 + temp63) + (0x20 * var6)),0x0);
                        var3 = temp63;
                        var4 = var3;
                        var7 = msg.data(0x44);
                        require((SHL(0x20,0x1) > msg.data(0x44)));
                        var7 = (0x4 + var7);
                        require((var4 > (var7 + 0x20)));
                        var7 = msg.data(var7);
                        var6 = (0x20 + var7);
                        require(!((var7 > SHL(0x20,0x1)) | (((0x20 + var7) + (var7 * 0x20)) > var4)));
                        temp66 = mload(0x40);
                        mstore(0x40,(temp66 + (0x20 + (0x20 * var7))));
                        mstore(temp66,var7);
                        calldatacopy((0x20 + temp66),var6,(0x20 * var7));
                        mstore(((0x20 + temp66) + (0x20 * var7)),0x0);
                        FUNC_347489AE(0x80,var3,temp66,msg.data(0x64),((SHL(0xA0,0x1) - 0x1) & msg.data(0x84)));
                        goto label_000001E1;
                    }

                    //ISSUE:COMMENT: Function FUNC_4BA69FAA()
                    else if ((0x4BA69FAA == var0)) 
                    {
                        require(!msg.value);
                        var1 = 0x1B0;
                        var2 = FUNC_4BA69FAA();
                        goto label_000001B0;
                    }
                    else
                    {
                        goto label_0000014B;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_523A3F08()
                else if ((0x523A3F08 == var0)) 
                {
                    require(!msg.value);
                    require((0x20 < (msg.data.length - 0x4)));
                    FUNC_523A3F08(msg.data(0x4));
                    goto label_000001E1;
                }

                //ISSUE:COMMENT: Function FUNC_595C6A67()
                else if ((0x595C6A67 == var0)) 
                {
                    require(!msg.value);
                    FUNC_595C6A67();
                    goto label_000001E1;
                }

                //ISSUE:COMMENT: Function FUNC_5BFB7508()
                else if ((0x5BFB7508 == var0)) 
                {
                    require(!msg.value);
                    var1 = 0x1B0;
                    var2 = FUNC_5BFB7508();
                    goto label_000001B0;
                }

                //ISSUE:COMMENT: Function paused()
                else if ((0x5C975ABB == var0)) 
                {
                    require(!msg.value);
                    var1 = paused();
                    mstore(0x80,var1);
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function FUNC_60BA10DF()
                else if ((0x60BA10DF == var0)) 
                {
                    require(!msg.value);
                    require((0x80 < (msg.data.length - 0x4)));
                    var1 = FUNC_60BA10DF(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x24)),(msg.data(0x44) & (SHL(0xA0,0x1) - 0x1)),msg.data(0x64));
                    goto label_00000189;
                }

                //ISSUE:COMMENT: Function FUNC_63D93ED0()
                else if ((0x63D93ED0 == var0)) 
                {
                    require(!msg.value);
                    require((0x20 < (msg.data.length - 0x4)));
                    FUNC_63D93ED0(msg.data(0x4));
                    goto label_000001E1;
                }
                else
                {
                    goto label_0000014B;
                }
            }
            else if ((0xB9FB4121 > var0)) 
            {

                //ISSUE:COMMENT: Function renounceOwnership()
                if ((0x715018A6 == var0)) 
                {
                    require(!msg.value);
                    renounceOwnership();
                    goto label_000001E1;
                }

                //ISSUE:COMMENT: Function FUNC_735DE9F7()
                else if ((0x735DE9F7 == var0)) 
                {
                    require(!msg.value);
                    var1 = 0x1B0;
                    var2 = FUNC_735DE9F7();
                    goto label_000001B0;
                }

                //ISSUE:COMMENT: Function data()
                else if ((0x73D4A13A == var0)) 
                {
                    require(!msg.value);
                    var1 = 0x1B0;
                    var2 = data();
                    goto label_000001B0;
                }

                //ISSUE:COMMENT: Function initialize()
                else if ((0x8129FC1C == var0)) 
                {
                    require(!msg.value);
                    initialize();
                    goto label_000001E1;
                }

                //ISSUE:COMMENT: Function owner()
                else if ((0x8DA5CB5B == var0)) 
                {
                    require(!msg.value);
                    var1 = owner();
                                                                     //-> label_000001B0:
                    mstore(0x80,(var1 & (SHL(0xA0,0x1) - 0x1)));
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function FUNC_A64FB0A6()
                else if ((0xA64FB0A6 == var0)) 
                {
                    require(!msg.value);
                    var1 = 0x1B0;
                    var2 = FUNC_A64FB0A6();
                    goto label_000001B0;
                }
                else
                {
                    goto label_0000014B;
                }
            }

            //ISSUE:COMMENT: Function FUNC_B9FB4121()
            else if ((0xB9FB4121 == var0)) 
            {
                require(!msg.value);
                require((0x60 < (msg.data.length - 0x4)));
                var1 = FUNC_B9FB4121(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x24)),msg.data(0x44));
                goto label_00000189;
            }

            //ISSUE:COMMENT: Function FUNC_C673E248()
            else if ((0xC673E248 == var0)) 
            {
                require(!msg.value);
                require((0xE0 < (msg.data.length - 0x4)));
                FUNC_C673E248(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x24)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x44)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x64)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x84)),((SHL(0xA0,0x1) - 0x1) & msg.data(0xA4)),(msg.data(0xC4) & (SHL(0xA0,0x1) - 0x1)));
                goto label_000001E1;
            }

            //ISSUE:COMMENT: Function FUNC_E1133C3D()
            else if ((0xE1133C3D == var0)) 
            {
                require(!msg.value);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = FUNC_E1133C3D((msg.data(0x4) & (SHL(0xA0,0x1) - 0x1)),msg.data(0x24));
                goto label_00000189;
            }

            //ISSUE:COMMENT: Function FUNC_E2740E88()
            else if ((0xE2740E88 == var0)) 
            {
                require(!msg.value);
                var1 = 0x1B0;
                var2 = FUNC_E2740E88();
                goto label_000001B0;
            }

            //ISSUE:COMMENT: Function transferOwnership()
            else if ((0xF2FDE38B == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                transferOwnership(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)));
                goto label_000001E1;
            }

            //ISSUE:COMMENT: Function FUNC_FFE6E7D7()
            else if ((0xFFE6E7D7 == var0)) 
            {
                require(!msg.value);
                var1 = 0x1B0;
                var2 = FUNC_FFE6E7D7();
                goto label_000001B0;
            }
            else
            {
                goto label_0000014B;
            }
        }
    }

}
