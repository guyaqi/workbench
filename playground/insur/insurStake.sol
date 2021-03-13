contract disassembler {

    function FUNC_07C97FFB() public return ()
    {
        var2 = func_0000148F();
        var3 = owner();
        temp0 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp0 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
        {
            var2 = paused();
            if (var2) 
            {
                var1 = func_00001493();
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
            temp2 = mload(0x0);
            callcodecopy(0x0,0x2F6F,0x20);
            temp1 = mload(0x0);
            mstore(0x0,temp2);
            mstore(0xC4,temp1);
            revert(0x80,0x64);
        }
    }

    function FUNC_08D093AA() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCA)));
    }

    function FUNC_0BEA440D( uint256 arg0,uint256 arg1) public return ()
    {
        var2 = arg0;
        var4 = paused();
        if (var4) 
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
            mstore(0xC4,0x5265656E7472616E637947756172643A207265656E7472616E742063616C6C00);
            revert(0x80,0x64);
        }
        else
        {
            sstore(0x97,0x2);
            mstore(0x80,SHL(0xE0,0x53906653));
            mstore(0x84,arg0);
            var11 = (sload(0xCA) & (SHL(0xA0,0x1) - 0x1));
            require(extcodesize((sload(0xCA) & (SHL(0xA0,0x1) - 0x1))));
            var7 = (delegatecall(gasleft,var11,0x80,0x24,0x80,0x20) == 0);
            if (delegatecall(gasleft,var11,0x80,0x24,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                if (temp3) 
                {
                    mstore(0x80,SHL(0xE1,0x663D1317));
                    var5 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                    var12 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                    if (delegatecall(gasleft,var12,0x80,0x4,0x80,0x20)) 
                    {
                        require((0x20 < returndatasize));
                        temp4 = mload(0x80);
                        var4 = temp4;
                        if (((temp4 & (SHL(0xA0,0x1) - 0x1)) == ((SHL(0xA0,0x1) - 0x1) & arg1))) 
                        {
                            if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (var4 & (SHL(0xA0,0x1) - 0x1)))) 
                            {
                                if ((msg.value > arg0)) 
                                {
                                    goto label_000007DE;
                                }
                                else
                                {
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x4);
                                    mstore(0xC4,SHL(0xE0,0x53543A33));
                                    revert(0x80,0x64);
                                }
                            }
                            else
                            {
                                var8 = func_0000148F();
                                mstore(0x80,SHL(0xE0,0x70A08231));
                                mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var8));
                                var13 = ((SHL(0xA0,0x1) - 0x1) & var4);
                                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var4)));
                                if (delegatecall(gasleft,var13,0x80,0x24,0x80,0x20)) 
                                {
                                    require((0x20 < returndatasize));
                                    temp5 = mload(0x80);
                                    if ((arg0 < temp5)) 
                                    {
                                        var8 = func_0000148F();
                                        mstore(0x80,SHL(0xE0,0xDD62ED3E));
                                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var8));
                                        mstore(0xA4,((SHL(0xA0,0x1) - 0x1) & this.address));
                                        var13 = ((SHL(0xA0,0x1) - 0x1) & var4);
                                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var4)));
                                        if (delegatecall(gasleft,var13,0x80,0x44,0x80,0x20)) 
                                        {
                                            require((0x20 < returndatasize));
                                            temp6 = mload(0x80);
                                            if ((arg0 < temp6)) 
                                            {
                                                                     //-> label_000007DE:
                                                var4 = func_00001533();
                                                if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (var4 & (SHL(0xA0,0x1) - 0x1)))) 
                                                {
                                                    if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (var4 & (SHL(0xA0,0x1) - 0x1)))) 
                                                    {
                                                        mstore(0x80,SHL(0xE3,0x1E270769));
                                                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var4));
                                                        mstore(0xA4,var2);
                                                        var13 = var2;
                                                        var14 = (sload(0xCB) & (SHL(0xA0,0x1) - 0x1));
                                                        require(extcodesize((sload(0xCB) & (SHL(0xA0,0x1) - 0x1))));
                                                        var9 = var14.call.value(var13)(0x80,0x44);
                                                        var9 = (var9 == 0);
                                                        if (var9) 
                                                        {
                                                            returndatacopy(0x0,0x0,returndatasize);
                                                            revert(0x0,returndatasize);
                                                        }
                                                        else
                                                        {
                                                            var7 = func_0000148F();
                                                            mstore(0x80,SHL(0xE0,0x17F2D1C7));
                                                            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var7));
                                                            var12 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                                                            if (delegatecall(gasleft,var12,0x80,0x24,0x80,0x20)) 
                                                            {
                                                                require((0x20 < returndatasize));
                                                                if (temp134) 
                                                                {
                                                                    var5 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                    var7 = func_0000148F();
                                                                     //-> label_00000AD4:
                                                                    var11 = func_0000148F();
                                                                    mstore(0x80,SHL(0xE0,0x728EBCEC));
                                                                    mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var11));
                                                                    var16 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                                                                    if (delegatecall(gasleft,var16,0x80,0x24,0x80,0x20)) 
                                                                    {
                                                                        require((0x20 < returndatasize));
                                                                        temp135 = mload(0x80);
                                                                        var8 = func_0000160F(var2,temp135);
                                                                        mstore(0x80,SHL(0xE0,0xF43EF21D));
                                                                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var7));
                                                                        mstore(0xA4,var8);
                                                                        var13 = var5;
                                                                        require(extcodesize(var5));
                                                                        var8 = var13.call(0x80,0x44);
                                                                        var8 = (var8 == 0);
                                                                        if (var8) 
                                                                        {
                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                            revert(0x0,returndatasize);
                                                                        }
                                                                        else
                                                                        {
                                                                            mstore(0x80,SHL(0xE2,0x12F62EDD));
                                                                            var5 = (sload(0xC9) & (SHL(0xA0,0x1) - 0x1));
                                                                            var15 = (sload(0xC9) & (SHL(0xA0,0x1) - 0x1));
                                                                            require(extcodesize((sload(0xC9) & (SHL(0xA0,0x1) - 0x1))));
                                                                            if (delegatecall(gasleft,var15,0x80,0x4,0x80,0x20)) 
                                                                            {
                                                                                require((0x20 < returndatasize));
                                                                                temp137 = mload(0x80);
                                                                                var7 = func_0000160F(var2,temp137);
                                                                                mstore(0x80,SHL(0xE0,0xC6B95B2A));
                                                                                mstore(0x84,var7);
                                                                                var13 = var5;
                                                                                require(extcodesize(var5));
                                                                                var8 = var13.call(0x80,0x24);
                                                                                var8 = (var8 == 0);
                                                                                if (var8) 
                                                                                {
                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                    revert(0x0,returndatasize);
                                                                                }
                                                                                else
                                                                                {
                                                                                    mstore(0x80,SHL(0xE1,0x4BD9FE55));
                                                                                    var5 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCA));
                                                                                    var14 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                                                                                    if (delegatecall(gasleft,var14,0x80,0x4,0x80,0x20)) 
                                                                                    {
                                                                                        require((0x20 < returndatasize));
                                                                                        var7 = mload(0x80);
                                                                                        mstore(0x80,SHL(0xE0,0xCF7462D5));
                                                                                        var15 = (sload(0xC9) & (SHL(0xA0,0x1) - 0x1));
                                                                                        require(extcodesize((sload(0xC9) & (SHL(0xA0,0x1) - 0x1))));
                                                                                        if (delegatecall(gasleft,var15,0x80,0x4,0x80,0x20)) 
                                                                                        {
                                                                                            require((0x20 < returndatasize));
                                                                                            temp139 = mload(0x80);
                                                                                            mstore(0x80,(SHL(0xE0,0xDA75091E) & ~(SHL(0xE0,0x1) - 0x1)));
                                                                                            mstore(0x84,var7);
                                                                                            mstore(0xA4,temp139);
                                                                                            var13 = var5;
                                                                                            require(extcodesize(var5));
                                                                                            var8 = var13.call(0x80,0x44);
                                                                                            var8 = (var8 == 0);
                                                                                            if (var8) 
                                                                                            {
                                                                                                returndatacopy(0x0,0x0,returndatasize);
                                                                                                revert(0x0,returndatasize);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                var6 = func_0000148F();
                                                                                                temp141 = ((SHL(0xA0,0x1) - 0x1) & var6);
                                                                                                mstore(0x80,var2);
                                                                                                log(0x80,0x20,0x8B16A60A4AADC672D91D11D2A7F2C6C41455407CF275A63647E7EB6357C8266B,temp141,((SHL(0xA0,0x1) - 0x1) & var4));
                                                                                                sstore(0x97,0x1);
                                                                                                return();
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
                                                                                returndatacopy(0x0,0x0,returndatasize);
                                                                                revert(0x0,returndatasize);
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
                                                                    var7 = func_0000148F();
                                                                    mstore(0x80,SHL(0xE0,0x89D1D6F8));
                                                                    mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var7));
                                                                    mstore(0xA4,block.number);
                                                                    var13 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                                                                    var8 = var13.call(0x80,0x44);
                                                                    var8 = (var8 == 0);
                                                                    if (var8) 
                                                                    {
                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                        revert(0x0,returndatasize);
                                                                    }
                                                                    else
                                                                    {
                                                                        var7 = func_0000148F();
                                                                        mstore(0x80,SHL(0xE0,0xF7920C17));
                                                                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var7));
                                                                        var13 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                                                                        var8 = var13.call(0x80,0x24);
                                                                        var8 = (var8 == 0);
                                                                        if (var8) 
                                                                        {
                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                            revert(0x0,returndatasize);
                                                                        }
                                                                        else
                                                                        {
                                                                            var5 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
                                                                            var7 = func_0000148F();
                                                                            goto label_00000AD4;
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
                                                    else
                                                    {
                                                        mstore(0xA4,((sload(0xCB) & (SHL(0xA0,0x1) - 0x1)) & (SHL(0xA0,0x1) - 0x1)));
                                                        mstore(0xC4,var2);
                                                        mstore(0x80,0x44);
                                                        mstore(0x40,0xE4);
                                                        temp132 = mload(0xA0);
                                                        mstore(0xA0,(SHL(0xE0,0xA9059CBB) | ((SHL(0xE0,0x1) - 0x1) & temp132)));
                                                        mstore(0x40,0x124);
                                                        mstore(0xE4,0x20);
                                                        mstore(0x104,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                                        throw();
                                                    }
                                                }
                                                else
                                                {
                                                    var6 = func_0000148F();
                                                    var6 = (var4 & (SHL(0xA0,0x1) - 0x1));
                                                    mstore(0xA4,(var6 & (SHL(0xA0,0x1) - 0x1)));
                                                    mstore(0xC4,(this.address & (SHL(0xA0,0x1) - 0x1)));
                                                    mstore(0xE4,var2);
                                                    mstore(0x80,0x64);
                                                    mstore(0x40,0x104);
                                                    temp144 = mload(0xA0);
                                                    mstore(0xA0,(SHL(0xE0,0x23B872DD) | ((SHL(0xE0,0x1) - 0x1) & temp144)));
                                                    mstore(0x40,0x144);
                                                    mstore(0x104,0x20);
                                                    mstore(0x124,0x5361666545524332303A206C6F772D6C6576656C2063616C6C206661696C6564);
                                                    throw();
                                                }
                                            }
                                            else
                                            {
                                                mstore(0x80,SHL(0xE5,0x461BCD));
                                                mstore(0x84,0x20);
                                                mstore(0xA4,0x4);
                                                mstore(0xC4,SHL(0xE0,0x53543A35));
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
                                        mstore(0xA4,0x4);
                                        mstore(0xC4,SHL(0xE2,0x14D50E8D));
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
                            mstore(0x80,SHL(0xE5,0x461BCD));
                            mstore(0x84,0x20);
                            mstore(0xA4,0x4);
                            mstore(0xC4,SHL(0xE1,0x29AA1D19));
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
                    mstore(0xA4,0x4);
                    mstore(0xC4,SHL(0xE0,0x53543A31));
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

    function FUNC_0E6C60A9() public return (var0,var1)
    {
        mstore(0x80,SHL(0xE0,0xF4296485));
        var10 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCA));
        var11 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCA))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xCA))));
        if (delegatecall(gasleft,var10,0x80,0x4,0x80,0x0)) 
        {
            returndatacopy(0x80,0x0,returndatasize);
            var4 = returndatasize;
            mstore(0x40,(0x80 + (~0x1F & (returndatasize + 0x1F))));
            require((0x20 < returndatasize));
            temp145 = (0x80 + var4);
            temp147 = mload(0x80);
            temp146 = mload(0x40);
            var3 = temp146;
            var4 = temp145;
            var7 = temp147;
            var8 = temp146;
            require((SHL(0x20,0x1) > temp147));
            var7 = (0x80 + var7);
            var9 = (var7 + 0x20);
            require((var4 > (var7 + 0x20)));
            var10 = mload(var7);
            require(!((var10 > SHL(0x20,0x1)) | ((var9 + (var10 * 0x20)) > var4)));
            mstore(var8,var10);
            temp150 = mload(var7);
            var7 = (0x20 + var8);
            var8 = (0x20 + var7);
            var9 = (0x20 * temp150);
            var10 = (0x20 * temp150);
            var11 = (0x20 + var8);
            var12 = (0x20 + var7);
            var13 = 0x0;
                                                                     //-> label_00000F20:
            if ((var10 < var13)) 
            {
                temp151 = (var9 + var7);
                mstore(0x40,temp151);
                return(var0,var3);
            }
            else
            {
                temp152 = mload((var13 + var12));
                mstore((var13 + var11),temp152);
                var13 = (0x20 + var13);
                goto label_00000F20;
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
        var2 = func_0000148F();
        var3 = owner();
        temp157 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp157 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
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
                    var4 = func_0000148F();
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
            temp159 = mload(0x0);
            callcodecopy(0x0,0x2F6F,0x20);
            temp158 = mload(0x0);
            mstore(0x0,temp159);
            mstore(0xC4,temp158);
            revert(0x80,0x64);
        }
    }

    uint8 public paused;

    function renounceOwnership() public return ()
    {
        var2 = func_0000148F();
        var3 = owner();
        temp160 = ((SHL(0xA0,0x1) - 0x1) & var3);
        if ((temp160 == ((SHL(0xA0,0x1) - 0x1) & var2))) 
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
            temp162 = mload(0x0);
            callcodecopy(0x0,0x2F6F,0x20);
            temp161 = mload(0x0);
            mstore(0x0,temp162);
            mstore(0xC4,temp161);
            revert(0x80,0x64);
        }
    }

    function FUNC_77B8B1C7( uint256 arg0,uint256 arg1,uint256 arg2) public return ()
    {
        var5 = func_0000148F();
        var6 = owner();
        temp163 = ((SHL(0xA0,0x1) - 0x1) & var6);
        if ((temp163 == ((SHL(0xA0,0x1) - 0x1) & var5))) 
        {
            if ((arg0 & (SHL(0xA0,0x1) - 0x1))) 
            {
                sstore(0xC9,(((SHL(0xA0,0x1) - 0x1) & arg0) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
                if ((arg1 & (SHL(0xA0,0x1) - 0x1))) 
                {
                    sstore(0xCA,(((SHL(0xA0,0x1) - 0x1) & arg1) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCA))));
                    if ((arg2 & (SHL(0xA0,0x1) - 0x1))) 
                    {
                        sstore(0xCB,(((SHL(0xA0,0x1) - 0x1) & arg2) | (~(SHL(0xA0,0x1) - 0x1) & sload(0xCB))));
                        return();
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
            temp165 = mload(0x0);
            callcodecopy(0x0,0x2F6F,0x20);
            temp164 = mload(0x0);
            mstore(0x0,temp165);
            mstore(0xC4,temp164);
            revert(0x80,0x64);
        }
    }

    function owner() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0x33)));
    }

    function FUNC_9009F920() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xCB)));
    }

    function FUNC_97B3FCAA() public return (var0)
    {
        mstore(0x80,SHL(0xE1,0x4BD9FE55));
        var10 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
        var11 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & sload(0xC9))));
        if (delegatecall(gasleft,var10,0x80,0x4,0x80,0x20)) 
        {
            require((0x20 < returndatasize));
            temp168 = mload(0x80);
            return(temp168);
        }
        else
        {
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
    }

    function FUNC_D5396F78() public return (var0)
    {
        return(((SHL(0xA0,0x1) - 0x1) & sload(0xC9)));
    }

    function transferOwnership( address arg0) public return ()
    {
        var3 = func_0000148F();
        var4 = owner();
        temp169 = ((SHL(0xA0,0x1) - 0x1) & var4);
        if ((temp169 == ((SHL(0xA0,0x1) - 0x1) & var3))) 
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
                callcodecopy(0xC4,0x2ED4,0x26);
                revert(0x80,0x84);
            }
        }
        else
        {
            mstore(0x80,SHL(0xE5,0x461BCD));
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            temp171 = mload(0x0);
            callcodecopy(0x0,0x2F6F,0x20);
            temp170 = mload(0x0);
            mstore(0x0,temp171);
            mstore(0xC4,temp170);
            revert(0x80,0x64);
        }
    }

    function func_0000148F() private return (var0)
    {
        return(msg.sender);
    }

    function func_00001493() private return (var0)
    {
        var3 = paused();
        if (var3) 
        {
            paused = 0x0;
            var4 = func_0000148F();
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

    function func_00001533() private return (var0)
    {
        var7 = ((SHL(0xA0,0x1) - 0x1) & sload(0xC9));
        var8 = (sload(0xCA) & (SHL(0xA0,0x1) - 0x1));
        var9 = func_0000148F();
        var10 = block.number;
        var11 = block.number;
        mstore(0x80,SHL(0xE0,0x17F2D1C7));
        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var9));
        var19 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xC9)));
        var20 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xC9)))) == 0);
        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xC9)))));
        if (delegatecall(gasleft,var19,0x80,0x24,0x80,0x20)) 
        {
            require((0x20 < returndatasize));
            temp7 = mload(0x80);
            if ((temp7 == var11)) 
            {
                goto label_000015B2;
            }
            else
            {
                mstore(0x80,SHL(0xE0,0x17F2D1C7));
                mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var9));
                var18 = ((SHL(0xA0,0x1) - 0x1) & var7);
                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                if (delegatecall(gasleft,var18,0x80,0x24,0x80,0x20)) 
                {
                    require((0x20 < returndatasize));
                    if (temp8) 
                    {
                        var12 = ((SHL(0xA0,0x1) - 0x1) & var8);
                        mstore(0x80,SHL(0xE0,0x17F2D1C7));
                        mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var9));
                        var21 = ((SHL(0xA0,0x1) - 0x1) & var7);
                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                        if (delegatecall(gasleft,var21,0x80,0x24,0x80,0x20)) 
                        {
                            require((0x20 < returndatasize));
                            var14 = mload(0x80);
                            mstore(0x80,SHL(0xE1,0x5AB855B1));
                            mstore(0x84,((SHL(0xA0,0x1) - 0x1) & var9));
                            var22 = (var7 & (SHL(0xA0,0x1) - 0x1));
                            require(extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))));
                            if (delegatecall(gasleft,var22,0x80,0x24,0x80,0x0)) 
                            {
                                returndatacopy(0x80,0x0,returndatasize);
                                var16 = returndatasize;
                                mstore(0x40,(0x80 + (~0x1F & (returndatasize + 0x1F))));
                                require((0x20 < returndatasize));
                                temp9 = (0x80 + var16);
                                temp11 = mload(0x80);
                                temp10 = mload(0x40);
                                var15 = temp10;
                                var16 = temp9;
                                var19 = temp11;
                                var20 = temp10;
                                require((SHL(0x20,0x1) > temp11));
                                var19 = (0x80 + var19);
                                var21 = (var19 + 0x20);
                                require((var16 > (var19 + 0x20)));
                                var22 = mload(var19);
                                require(!((var22 > SHL(0x20,0x1)) | ((var21 + (var22 * 0x20)) > var16)));
                                mstore(var20,var22);
                                temp14 = mload(var19);
                                var19 = (0x20 + var20);
                                var20 = (0x20 + var19);
                                var21 = (0x20 * temp14);
                                var22 = (0x20 * temp14);
                                var25 = 0x0;
                                                                     //-> label_00001B52:
                                if ((var22 < var25)) 
                                {
                                    temp15 = (var21 + var19);
                                    mstore(0x40,temp15);
                                    temp16 = mload(0x40);
                                    mstore(temp16,SHL(0xE0,0xC1166D19));
                                    mstore((0x4 + temp16),((SHL(0xA0,0x1) - 0x1) & var9));
                                    var20 = mload(0x40);
                                    var21 = ((0x20 + (0x4 + temp16)) - var20);
                                    var22 = var20;
                                    var23 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                    if (delegatecall(gasleft,var23,var22,var21,var20,0x0)) 
                                    {
                                        var16 = mload(0x40);
                                        returndatacopy(var16,0x0,returndatasize);
                                        var17 = returndatasize;
                                        mstore(0x40,(var16 + (~0x1F & (returndatasize + 0x1F))));
                                        require((0x20 < returndatasize));
                                        temp19 = (var16 + var17);
                                        temp21 = mload(var16);
                                        temp20 = mload(0x40);
                                        var16 = temp20;
                                        var17 = temp19;
                                        var18 = var16;
                                        var20 = temp21;
                                        var21 = temp20;
                                        require((SHL(0x20,0x1) > temp21));
                                        var20 = (var18 + var20);
                                        var22 = (var20 + 0x20);
                                        require((var17 > (var20 + 0x20)));
                                        var23 = mload(var20);
                                        require(!((var23 > SHL(0x20,0x1)) | ((var22 + (var23 * 0x20)) > var17)));
                                        mstore(var21,var23);
                                        temp24 = mload(var20);
                                        var20 = (0x20 + var21);
                                        var21 = (0x20 + var20);
                                        var22 = (0x20 * temp24);
                                        var23 = (0x20 * temp24);
                                        var26 = 0x0;
                                                                     //-> label_00001C66:
                                        if ((var23 < var26)) 
                                        {
                                            temp25 = (var22 + var20);
                                            mstore(0x40,temp25);
                                            temp26 = mload(0x40);
                                            mstore(temp26,SHL(0xE0,0x3647C860));
                                            var17 = (0x4 + temp26);
                                            mstore((0x4 + temp26),var14);
                                            var19 = (0x20 + (0x20 + (0x4 + temp26)));
                                            mstore((0x20 + (0x4 + temp26)),((0x20 + (0x20 + (0x20 + (0x4 + temp26)))) - (0x4 + temp26)));
                                            temp27 = mload(var15);
                                            mstore((0x20 + (0x20 + (0x20 + (0x4 + temp26)))),temp27);
                                            var20 = (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp26)))));
                                            temp28 = mload(var15);
                                            var22 = (0x20 * temp28);
                                            var23 = (0x20 * temp28);
                                            var26 = 0x0;
                                                                     //-> label_00001CCC:
                                            if ((var23 < var26)) 
                                            {
                                                temp29 = (var22 + var20);
                                                mstore(var19,(temp29 - var17));
                                                temp30 = mload(var16);
                                                mstore(temp29,temp30);
                                                var20 = (0x20 + temp29);
                                                temp31 = mload(var16);
                                                var22 = (0x20 * temp31);
                                                var23 = (0x20 * temp31);
                                                var26 = 0x0;
                                                                     //-> label_00001D0B:
                                                if ((var23 < var26)) 
                                                {
                                                    temp32 = (var22 + var20);
                                                    var16 = mload(0x40);
                                                    var17 = (temp32 - var16);
                                                    var18 = var16;
                                                    var19 = var12;
                                                    require(extcodesize(var12));
                                                    if (delegatecall(gasleft,var19,var18,var17,var16,0x20)) 
                                                    {
                                                        var12 = mload(0x40);
                                                        require((0x20 < returndatasize));
                                                        temp36 = mload(var12);
                                                        temp34 = mload(0x40);
                                                        mstore(temp34,SHL(0xE0,0x17F2D1C7));
                                                        mstore((temp34 + 0x4),((SHL(0xA0,0x1) - 0x1) & var9));
                                                        temp35 = mload(0x40);
                                                        var11 = temp36;
                                                        var13 = (var8 & (SHL(0xA0,0x1) - 0x1));
                                                        var19 = temp35;
                                                        var20 = ((temp34 - temp35) + 0x24);
                                                        var21 = temp35;
                                                        var22 = (var7 & (SHL(0xA0,0x1) - 0x1));
                                                        require(extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))));
                                                        if (delegatecall(gasleft,var22,var21,var20,var19,0x20)) 
                                                        {
                                                            var15 = mload(0x40);
                                                            require((0x20 < returndatasize));
                                                            var15 = mload(var15);
                                                            temp37 = mload(0x40);
                                                            mstore(temp37,SHL(0xE2,0x1CA3AF3B));
                                                            mstore((temp37 + 0x4),((SHL(0xA0,0x1) - 0x1) & var9));
                                                            temp38 = mload(0x40);
                                                            var20 = temp38;
                                                            var21 = ((temp37 - temp38) + 0x24);
                                                            var22 = temp38;
                                                            var23 = (var7 & (SHL(0xA0,0x1) - 0x1));
                                                            require(extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))));
                                                            if (delegatecall(gasleft,var23,var22,var21,var20,0x20)) 
                                                            {
                                                                var16 = mload(0x40);
                                                                require((0x20 < returndatasize));
                                                                var16 = mload(var16);
                                                                temp39 = mload(0x40);
                                                                mstore(temp39,SHL(0xE1,0x5AB855B1));
                                                                mstore((temp39 + 0x4),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                temp40 = mload(0x40);
                                                                var21 = temp40;
                                                                var22 = ((temp39 - temp40) + 0x24);
                                                                var23 = temp40;
                                                                var24 = (var7 & (SHL(0xA0,0x1) - 0x1));
                                                                require(extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))));
                                                                if (delegatecall(gasleft,var24,var23,var22,var21,0x0)) 
                                                                {
                                                                    var17 = mload(0x40);
                                                                    returndatacopy(var17,0x0,returndatasize);
                                                                    var18 = returndatasize;
                                                                    mstore(0x40,(var17 + (~0x1F & (returndatasize + 0x1F))));
                                                                    require((0x20 < returndatasize));
                                                                    temp42 = (var17 + var18);
                                                                    temp44 = mload(var17);
                                                                    temp43 = mload(0x40);
                                                                    var17 = temp43;
                                                                    var18 = temp42;
                                                                    var19 = var17;
                                                                    var21 = temp44;
                                                                    var22 = temp43;
                                                                    require((SHL(0x20,0x1) > temp44));
                                                                    var21 = (var19 + var21);
                                                                    var23 = (var21 + 0x20);
                                                                    require((var18 > (var21 + 0x20)));
                                                                    var24 = mload(var21);
                                                                    require(!((var24 > SHL(0x20,0x1)) | ((var23 + (var24 * 0x20)) > var18)));
                                                                    mstore(var22,var24);
                                                                    temp47 = mload(var21);
                                                                    var21 = (0x20 + var22);
                                                                    var22 = (0x20 + var21);
                                                                    var23 = (0x20 * temp47);
                                                                    var24 = (0x20 * temp47);
                                                                    var27 = 0x0;
                                                                     //-> label_00001F5D:
                                                                    if ((var24 < var27)) 
                                                                    {
                                                                        temp48 = (var23 + var21);
                                                                        mstore(0x40,temp48);
                                                                        temp49 = mload(0x40);
                                                                        mstore(temp49,SHL(0xE0,0xC1166D19));
                                                                        mstore((0x4 + temp49),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                        var22 = mload(0x40);
                                                                        var23 = ((0x20 + (0x4 + temp49)) - var22);
                                                                        var24 = var22;
                                                                        var25 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                        if (delegatecall(gasleft,var25,var24,var23,var22,0x0)) 
                                                                        {
                                                                            var18 = mload(0x40);
                                                                            returndatacopy(var18,0x0,returndatasize);
                                                                            var19 = returndatasize;
                                                                            mstore(0x40,(var18 + (~0x1F & (returndatasize + 0x1F))));
                                                                            require((0x20 < returndatasize));
                                                                            temp52 = (var18 + var19);
                                                                            temp54 = mload(var18);
                                                                            temp53 = mload(0x40);
                                                                            var18 = temp53;
                                                                            var19 = temp52;
                                                                            var20 = var18;
                                                                            var22 = temp54;
                                                                            var23 = temp53;
                                                                            require((SHL(0x20,0x1) > temp54));
                                                                            var22 = (var20 + var22);
                                                                            var24 = (var22 + 0x20);
                                                                            require((var19 > (var22 + 0x20)));
                                                                            var25 = mload(var22);
                                                                            require(!((var25 > SHL(0x20,0x1)) | ((var24 + (var25 * 0x20)) > var19)));
                                                                            mstore(var23,var25);
                                                                            temp57 = mload(var22);
                                                                            var22 = (0x20 + var23);
                                                                            var23 = (0x20 + var22);
                                                                            var24 = (0x20 * temp57);
                                                                            var25 = (0x20 * temp57);
                                                                            var28 = 0x0;
                                                                     //-> label_00002071:
                                                                            if ((var25 < var28)) 
                                                                            {
                                                                                temp58 = (var24 + var22);
                                                                                mstore(0x40,temp58);
                                                                                temp59 = mload(0x40);
                                                                                mstore(temp59,SHL(0xE0,0xB440B11F));
                                                                                var19 = (0x4 + temp59);
                                                                                mstore((0x4 + temp59),var15);
                                                                                mstore((0x20 + (0x4 + temp59)),var16);
                                                                                var21 = (0x20 + (0x20 + (0x20 + (0x4 + temp59))));
                                                                                mstore((0x20 + (0x20 + (0x4 + temp59))),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp59))))) - (0x4 + temp59)));
                                                                                temp60 = mload(var17);
                                                                                mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp59))))),temp60);
                                                                                var22 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp59))))));
                                                                                temp61 = mload(var17);
                                                                                var24 = (0x20 * temp61);
                                                                                var25 = (0x20 * temp61);
                                                                                var28 = 0x0;
                                                                     //-> label_000020DD:
                                                                                if ((var25 < var28)) 
                                                                                {
                                                                                    temp62 = (var24 + var22);
                                                                                    mstore(var21,(temp62 - var19));
                                                                                    temp63 = mload(var18);
                                                                                    mstore(temp62,temp63);
                                                                                    var22 = (0x20 + temp62);
                                                                                    temp64 = mload(var18);
                                                                                    var24 = (0x20 * temp64);
                                                                                    var25 = (0x20 * temp64);
                                                                                    var28 = 0x0;
                                                                     //-> label_0000211C:
                                                                                    if ((var25 < var28)) 
                                                                                    {
                                                                                        temp65 = (var24 + var22);
                                                                                        var17 = mload(0x40);
                                                                                        var18 = (temp65 - var17);
                                                                                        var19 = var17;
                                                                                        var20 = var13;
                                                                                        require(extcodesize(var13));
                                                                                        if (delegatecall(gasleft,var20,var19,var18,var17,0x20)) 
                                                                                        {
                                                                                            var13 = mload(0x40);
                                                                                            var14 = returndatasize;
                                                                                            require((0x20 < returndatasize));
                                                                                            temp69 = mload(var13);
                                                                                            temp67 = mload(0x40);
                                                                                            mstore(temp67,SHL(0xE0,0xF151F22B));
                                                                                            temp68 = mload(0x40);
                                                                                            var12 = temp69;
                                                                                            var13 = (var7 & (SHL(0xA0,0x1) - 0x1));
                                                                                            var15 = var9;
                                                                                            var24 = temp68;
                                                                                            var25 = ((temp67 - temp68) + 0x4);
                                                                                            var26 = temp68;
                                                                                            var27 = (var7 & (SHL(0xA0,0x1) - 0x1));
                                                                                            var28 = (extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))) == 0);
                                                                                            require(extcodesize((var7 & (SHL(0xA0,0x1) - 0x1))));
                                                                                            if (delegatecall(gasleft,var27,var26,var25,var24,0x20)) 
                                                                                            {
                                                                                                var20 = mload(0x40);
                                                                                                require((0x20 < returndatasize));
                                                                                                temp70 = mload(var20);
                                                                                                var18 = func_00002B3C(0xA,temp70);
                                                                                                var17 = func_00002B9D(var12,var18);
                                                                                                temp75 = mload(0x40);
                                                                                                mstore(temp75,SHL(0xE0,0xC7C59387));
                                                                                                mstore((0x4 + temp75),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                                                var22 = mload(0x40);
                                                                                                var23 = ((0x20 + (0x4 + temp75)) - var22);
                                                                                                var24 = var22;
                                                                                                var25 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                if (delegatecall(gasleft,var25,var24,var23,var22,0x20)) 
                                                                                                {
                                                                                                    var18 = mload(0x40);
                                                                                                    require((0x20 < returndatasize));
                                                                                                    temp77 = mload(var18);
                                                                                                    var16 = func_0000160F(temp77,var17);
                                                                                                    temp80 = mload(0x40);
                                                                                                    mstore(temp80,SHL(0xE0,0x1A1F59BB));
                                                                                                    mstore((0x4 + temp80),((SHL(0xA0,0x1) - 0x1) & var15));
                                                                                                    mstore((0x20 + (0x4 + temp80)),var16);
                                                                                                    var17 = mload(0x40);
                                                                                                    var18 = ((0x20 + (0x20 + (0x4 + temp80))) - var17);
                                                                                                    var19 = var17;
                                                                                                    var21 = var13;
                                                                                                    require(extcodesize(var13));
                                                                                                    var16 = var21.call(var19,var18);
                                                                                                    var16 = (var16 == 0);
                                                                                                    if (var16) 
                                                                                                    {
                                                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                                                        revert(0x0,returndatasize);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                        temp83 = mload(0x40);
                                                                                                        mstore(temp83,SHL(0xE0,0xF151F22B));
                                                                                                        var23 = mload(0x40);
                                                                                                        var24 = ((0x4 + temp83) - var23);
                                                                                                        var25 = var23;
                                                                                                        var26 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                        var27 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)) == 0);
                                                                                                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                        if (delegatecall(gasleft,var26,var25,var24,var23,0x20)) 
                                                                                                        {
                                                                                                            var19 = mload(0x40);
                                                                                                            require((0x20 < returndatasize));
                                                                                                            temp85 = mload(var19);
                                                                                                            var17 = func_00002B3C(0xA,temp85);
                                                                                                            var16 = func_00002B9D(var12,var17);
                                                                                                            temp86 = mload(0x40);
                                                                                                            mstore(temp86,SHL(0xE0,0x790EFEFE));
                                                                                                            var21 = mload(0x40);
                                                                                                            var22 = ((0x4 + temp86) - var21);
                                                                                                            var23 = var21;
                                                                                                            var24 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                            if (delegatecall(gasleft,var24,var23,var22,var21,0x20)) 
                                                                                                            {
                                                                                                                var17 = mload(0x40);
                                                                                                                require((0x20 < returndatasize));
                                                                                                                temp88 = mload(var17);
                                                                                                                var15 = func_0000160F(temp88,var16);
                                                                                                                temp89 = mload(0x40);
                                                                                                                mstore(temp89,SHL(0xE0,0xDB079316));
                                                                                                                mstore((0x4 + temp89),var15);
                                                                                                                var17 = mload(0x40);
                                                                                                                var18 = ((0x20 + (0x4 + temp89)) - var17);
                                                                                                                var19 = var17;
                                                                                                                var21 = var13;
                                                                                                                require(extcodesize(var13));
                                                                                                                var16 = var21.call(var19,var18);
                                                                                                                var16 = (var16 == 0);
                                                                                                                if (var16) 
                                                                                                                {
                                                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                                                    revert(0x0,returndatasize);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                    var15 = var9;
                                                                                                                    var17 = var11;
                                                                                                                    temp92 = mload(0x40);
                                                                                                                    mstore(temp92,SHL(0xE0,0x3963E2B2));
                                                                                                                    mstore((0x4 + temp92),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                                                                    var22 = mload(0x40);
                                                                                                                    var23 = ((0x20 + (0x4 + temp92)) - var22);
                                                                                                                    var24 = var22;
                                                                                                                    var25 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                    if (delegatecall(gasleft,var25,var24,var23,var22,0x20)) 
                                                                                                                    {
                                                                                                                        var18 = mload(0x40);
                                                                                                                        require((0x20 < returndatasize));
                                                                                                                        temp94 = mload(var18);
                                                                                                                        var16 = func_0000160F(temp94,var17);
                                                                                                                        temp95 = mload(0x40);
                                                                                                                        mstore(temp95,SHL(0xE0,0xB015B697));
                                                                                                                        mstore((0x4 + temp95),((SHL(0xA0,0x1) - 0x1) & var15));
                                                                                                                        mstore((0x20 + (0x4 + temp95)),var16);
                                                                                                                        var17 = mload(0x40);
                                                                                                                        var18 = ((0x20 + (0x20 + (0x4 + temp95))) - var17);
                                                                                                                        var19 = var17;
                                                                                                                        var21 = var13;
                                                                                                                        require(extcodesize(var13));
                                                                                                                        var16 = var21.call(var19,var18);
                                                                                                                        var16 = (var16 == 0);
                                                                                                                        if (var16) 
                                                                                                                        {
                                                                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                                                                            revert(0x0,returndatasize);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                            var16 = var11;
                                                                                                                            temp98 = mload(0x40);
                                                                                                                            mstore(temp98,SHL(0xE0,0xDC627E9E));
                                                                                                                            var21 = mload(0x40);
                                                                                                                            var22 = ((0x4 + temp98) - var21);
                                                                                                                            var23 = var21;
                                                                                                                            var24 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                            if (delegatecall(gasleft,var24,var23,var22,var21,0x20)) 
                                                                                                                            {
                                                                                                                                var17 = mload(0x40);
                                                                                                                                require((0x20 < returndatasize));
                                                                                                                                temp100 = mload(var17);
                                                                                                                                var15 = func_0000160F(temp100,var16);
                                                                                                                                temp101 = mload(0x40);
                                                                                                                                mstore(temp101,SHL(0xE0,0xB058BD81));
                                                                                                                                mstore((0x4 + temp101),var15);
                                                                                                                                var17 = mload(0x40);
                                                                                                                                var18 = ((0x20 + (0x4 + temp101)) - var17);
                                                                                                                                var19 = var17;
                                                                                                                                var21 = var13;
                                                                                                                                require(extcodesize(var13));
                                                                                                                                var16 = var21.call(var19,var18);
                                                                                                                                var16 = (var16 == 0);
                                                                                                                                if (var16) 
                                                                                                                                {
                                                                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                    revert(0x0,returndatasize);
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                    var15 = var9;
                                                                                                                                    var17 = var11;
                                                                                                                                    temp104 = mload(0x40);
                                                                                                                                    mstore(temp104,SHL(0xE0,0x5FF7E9AB));
                                                                                                                                    mstore((0x4 + temp104),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                                                                                    var22 = mload(0x40);
                                                                                                                                    var23 = ((0x20 + (0x4 + temp104)) - var22);
                                                                                                                                    var24 = var22;
                                                                                                                                    var25 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                    var26 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)) == 0);
                                                                                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                                    if (delegatecall(gasleft,var25,var24,var23,var22,0x20)) 
                                                                                                                                    {
                                                                                                                                        var18 = mload(0x40);
                                                                                                                                        require((0x20 < returndatasize));
                                                                                                                                        temp106 = mload(var18);
                                                                                                                                        var16 = func_00002C04(temp106,var17);
                                                                                                                                        temp109 = mload(0x40);
                                                                                                                                        mstore(temp109,SHL(0xE0,0x5D282D99));
                                                                                                                                        mstore((0x4 + temp109),((SHL(0xA0,0x1) - 0x1) & var15));
                                                                                                                                        mstore((0x20 + (0x4 + temp109)),var16);
                                                                                                                                        var17 = mload(0x40);
                                                                                                                                        var18 = ((0x20 + (0x20 + (0x4 + temp109))) - var17);
                                                                                                                                        var19 = var17;
                                                                                                                                        var21 = var13;
                                                                                                                                        require(extcodesize(var13));
                                                                                                                                        var16 = var21.call(var19,var18);
                                                                                                                                        var16 = (var16 == 0);
                                                                                                                                        if (var16) 
                                                                                                                                        {
                                                                                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                            revert(0x0,returndatasize);
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                            var16 = var11;
                                                                                                                                            temp112 = mload(0x40);
                                                                                                                                            mstore(temp112,SHL(0xE0,0xDFBBDEA4));
                                                                                                                                            var21 = mload(0x40);
                                                                                                                                            var22 = ((0x4 + temp112) - var21);
                                                                                                                                            var23 = var21;
                                                                                                                                            var24 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                            var25 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)) == 0);
                                                                                                                                            require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                                            var20 = (delegatecall(gasleft,var24,var23,var22,var21,0x20) == 0);
                                                                                                                                            if (delegatecall(gasleft,var24,var23,var22,var21,0x20)) 
                                                                                                                                            {
                                                                                                                                                var17 = mload(0x40);
                                                                                                                                                require((0x20 < returndatasize));
                                                                                                                                                temp114 = mload(var17);
                                                                                                                                                var15 = func_00002C04(temp114,var16);
                                                                                                                                                temp115 = mload(0x40);
                                                                                                                                                mstore(temp115,SHL(0xE0,0x3437EB0A));
                                                                                                                                                mstore((0x4 + temp115),var15);
                                                                                                                                                var17 = mload(0x40);
                                                                                                                                                var18 = ((0x20 + (0x4 + temp115)) - var17);
                                                                                                                                                var19 = var17;
                                                                                                                                                var21 = var13;
                                                                                                                                                require(extcodesize(var13));
                                                                                                                                                var16 = var21.call(var19,var18);
                                                                                                                                                var16 = (var16 == 0);
                                                                                                                                                if (var16) 
                                                                                                                                                {
                                                                                                                                                    returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                                    revert(0x0,returndatasize);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    temp118 = mload(0x40);
                                                                                                                                                    mstore(temp118,SHL(0xE0,0x89D1D6F8));
                                                                                                                                                    mstore((0x4 + temp118),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                                                                                                    mstore((0x20 + (0x4 + temp118)),var10);
                                                                                                                                                    var17 = mload(0x40);
                                                                                                                                                    var18 = ((0x20 + (0x20 + (0x4 + temp118))) - var17);
                                                                                                                                                    var19 = var17;
                                                                                                                                                    var21 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                                    require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                                                    var16 = var21.call(var19,var18);
                                                                                                                                                    var16 = (var16 == 0);
                                                                                                                                                    if (var16) 
                                                                                                                                                    {
                                                                                                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                                        revert(0x0,returndatasize);
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        var13 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                                        temp121 = mload(0x40);
                                                                                                                                                        mstore(temp121,SHL(0xE0,0x17BC36E1));
                                                                                                                                                        mstore((0x4 + temp121),((SHL(0xA0,0x1) - 0x1) & var9));
                                                                                                                                                        var15 = (0x20 + (0x4 + temp121));
                                                                                                                                                        var17 = mload(0x40);
                                                                                                                                                        var18 = ((0x20 + (0x4 + temp121)) - var17);
                                                                                                                                                        var19 = var17;
                                                                                                                                                        var21 = ((SHL(0xA0,0x1) - 0x1) & var7);
                                                                                                                                                        var22 = (extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)) == 0);
                                                                                                                                                        require(extcodesize(((SHL(0xA0,0x1) - 0x1) & var7)));
                                                                                                                                                        var16 = var21.call(var19,var18);
                                                                                                                                                        var16 = (var16 == 0);
                                                                                                                                                        if (var16) 
                                                                                                                                                        {
                                                                                                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                                            revert(0x0,returndatasize);
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                     //-> label_000003BB:
                                                                                                                                                            return(var4);
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
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                                                                                        revert(0x0,returndatasize);
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
                                                                                                                    else
                                                                                                                    {
                                                                                                                        returndatacopy(0x0,0x0,returndatasize);
                                                                                                                        revert(0x0,returndatasize);
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
                                                                                                            returndatacopy(0x0,0x0,returndatasize);
                                                                                                            revert(0x0,returndatasize);
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
                                                                                    else
                                                                                    {
                                                                                        temp124 = mload((var28 + var27));
                                                                                        mstore((var28 + var26),temp124);
                                                                                        var28 = (0x20 + var28);
                                                                                        goto label_0000211C;
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    temp125 = mload((var28 + var27));
                                                                                    mstore((var28 + var26),temp125);
                                                                                    var28 = (0x20 + var28);
                                                                                    goto label_000020DD;
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                temp126 = mload((var28 + var27));
                                                                                mstore((var28 + var26),temp126);
                                                                                var28 = (0x20 + var28);
                                                                                goto label_00002071;
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
                                                                        temp127 = mload((var27 + var26));
                                                                        mstore((var27 + var25),temp127);
                                                                        var27 = (0x20 + var27);
                                                                        goto label_00001F5D;
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
                                                else
                                                {
                                                    temp128 = mload((var26 + var25));
                                                    mstore((var26 + var24),temp128);
                                                    var26 = (0x20 + var26);
                                                    goto label_00001D0B;
                                                }
                                            }
                                            else
                                            {
                                                temp129 = mload((var26 + var25));
                                                mstore((var26 + var24),temp129);
                                                var26 = (0x20 + var26);
                                                goto label_00001CCC;
                                            }
                                        }
                                        else
                                        {
                                            temp130 = mload((var26 + var25));
                                            mstore((var26 + var24),temp130);
                                            var26 = (0x20 + var26);
                                            goto label_00001C66;
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
                                    temp131 = mload((var25 + var24));
                                    mstore((var25 + var23),temp131);
                                    var25 = (0x20 + var25);
                                    goto label_00001B52;
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
                    else
                    {
                                                                     //-> label_000015B2:
                        goto label_000003BB;
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
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
    }

    function func_00002B3C( uint256 arg0,uint256 arg1) private return (var0)
    {
        var19 = arg0;
        var20 = arg1;
        if (arg1) 
        {
            if ((0x1 == arg1)) 
            {
                var21 = arg0;
                goto label_0000166C;
            }
            else
            {
                var22 = (arg0 == 0);
                if (arg0) 
                {
                    if (var22) 
                    {
                                                                     //-> label_00002B6E:
                        var21 = 0x0;
                        goto label_0000166C;
                    }
                    else
                    {
                                                                     //-> label_00002B75:
                        var22 = var19;
                        var23 = 0x1;
                                                                     //-> label_00002B79:
                        if ((var20 < var23)) 
                        {
                            var21 = var22;
                                                                     //-> label_0000166C:
                            return(var21);
                        }
                        else
                        {
                            var24 = func_00002C7A(var22,var19);
                            var22 = var24;
                            var23 = (0x1 + var23);
                            goto label_00002B79;
                        }
                    }
                }
                else if (arg1) 
                {
                    goto label_00002B6E;
                }
                else
                {
                    goto label_00002B75;
                }
            }
        }
        else
        {
            var21 = 0x1;
            goto label_0000166C;
        }
    }

    function func_00002C7A( uint256 arg0,uint256 arg1) private return (var0)
    {
        if (arg0) 
        {
            var28 = (arg1 * arg0);
            var31 = (arg1 * arg0);
            assert(arg0);
            if (((var31 / arg0) == arg1)) 
            {
                var27 = var28;
                                                                     //-> label_0000166C:
                return(var27);
            }
            else
            {
                temp71 = mload(0x40);
                mstore(temp71,SHL(0xE5,0x461BCD));
                mstore((0x4 + temp71),0x20);
                mstore((0x20 + (0x4 + temp71)),0x21);
                callcodecopy((0x20 + (0x20 + (0x4 + temp71))),0x2F4E,0x21);
                temp72 = mload(0x40);
                revert(temp72,((0x40 + (0x20 + (0x20 + (0x4 + temp71)))) - temp72));
            }
        }
        else
        {
            var27 = 0x0;
            goto label_0000166C;
        }
    }

    function func_00002B9D( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg1 > 0x0)) 
        {
            assert(arg1);
            return((arg0 / arg1));
        }
        else
        {
            temp73 = mload(0x40);
            mstore(temp73,SHL(0xE5,0x461BCD));
            mstore((temp73 + 0x4),0x20);
            mstore((temp73 + 0x24),0x1A);
            mstore((temp73 + 0x44),0x536166654D6174683A206469766973696F6E206279207A65726F000000000000);
            temp74 = mload(0x40);
            revert(temp74,(0x64 + (temp73 - temp74)));
        }
    }

    function func_0000160F( uint256 arg0,uint256 arg1) private return (var0)
    {
        var20 = (arg1 + arg0);
        if ((arg0 < (arg1 + arg0))) 
        {
            return(var20);
        }
        else
        {
            temp78 = mload(0x40);
            mstore(temp78,SHL(0xE5,0x461BCD));
            mstore((temp78 + 0x4),0x20);
            mstore((temp78 + 0x24),0x1B);
            mstore((temp78 + 0x44),0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            temp79 = mload(0x40);
            revert(temp79,(0x64 + (temp78 - temp79)));
        }
    }

    function func_00002C04( uint256 arg0,uint256 arg1) private return (var0)
    {
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            temp107 = mload(0x40);
            mstore(temp107,SHL(0xE5,0x461BCD));
            mstore((temp107 + 0x4),0x20);
            mstore((temp107 + 0x24),0x1E);
            mstore((temp107 + 0x44),0x536166654D6174683A207375627472616374696F6E206F766572666C6F770000);
            temp108 = mload(0x40);
            revert(temp108,(0x64 + (temp107 - temp108)));
        }
    }

    function func_00001706() private return (var0)
    {
        var4 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_0000171F:
            if (var4) 
            {
                if (var4) 
                {
                                                                     //-> label_00001768:
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        var4 = func_00002852();
                                                                     //-> label_0000179B:
                        var6 = uint8((sload(0x0) / 0x100));
                        if (uint8((sload(0x0) / 0x100))) 
                        {
                                                                     //-> label_0000290B:
                            if (var6) 
                            {
                                if (var6) 
                                {
                                                                     //-> label_00002954:
                                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                                    if (uint8((sload(0x0) / 0x100))) 
                                    {
                                        var8 = func_0000148F();
                                                                     //-> label_00002989:
                                        sstore(0x33,((var8 & (SHL(0xA0,0x1) - 0x1)) | (~(SHL(0xA0,0x1) - 0x1) & sload(0x33))));
                                        temp167 = (var8 & (SHL(0xA0,0x1) - 0x1));
                                        log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,0x0,temp167);
                                        if (var6) 
                                        {
                                            sstore(0x0,(~0xFF00 & sload(0x0)));
                                            goto label_000012D4;
                                        }
                                        else
                                        {
                                                                     //-> label_000012D4:
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
                                    }
                                    else
                                    {
                                        sstore(0x0,0x1);
                                        var8 = func_0000148F();
                                        goto label_00002989;
                                    }
                                }
                                else
                                {
                                                                     //-> label_0000291E:
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x2E);
                                    callcodecopy(0xC4,0x2F20,0x2E);
                                    revert(0x80,0x84);
                                }
                            }
                            else if (uint8(sload(0x0))) 
                            {
                                goto label_0000291E;
                            }
                            else
                            {
                                goto label_00002954;
                            }
                        }
                        else
                        {
                            var6 = func_000016F5();
                            goto label_0000290B;
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        var4 = func_00002852();
                        goto label_0000179B;
                    }
                }
                else
                {
                                                                     //-> label_00001732:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x2F20,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_00001732;
            }
            else
            {
                goto label_00001768;
            }
        }
        else
        {
            var4 = func_000016F5();
            goto label_0000171F;
        }
    }

    function func_00002852() private return (var0)
    {
        var6 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_0000286B:
            if (var6) 
            {
                if (var6) 
                {
                                                                     //-> label_000028B4:
                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        if (var6) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                                                                     //-> label_000012E6:
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
                        if (var6) 
                        {
                            sstore(0x0,(~0xFF00 & sload(0x0)));
                            return(var4);
                        }
                        else
                        {
                            goto label_000012E6;
                        }
                    }
                }
                else
                {
                                                                     //-> label_0000287E:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x2F20,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_0000287E;
            }
            else
            {
                goto label_000028B4;
            }
        }
        else
        {
            var6 = func_000016F5();
            goto label_0000286B;
        }
    }

    function func_000016F5() private return (var0)
    {
        var8 = func_0000284C(this.address);
        temp166 = (var8 == 0);
        return(temp166);
    }

    function func_0000284C( uint256 arg0) private return (var0)
    {
        return(extcodesize(arg0));
    }

    function func_000017A3() private return (var0)
    {
        var4 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_000017BC:
            if (var4) 
            {
                if (var4) 
                {
                                                                     //-> label_00001805:
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                        var4 = func_00002852();
                                                                     //-> label_00001838:
                        var6 = uint8((sload(0x0) / 0x100));
                        if (uint8((sload(0x0) / 0x100))) 
                        {
                                                                     //-> label_00002A04:
                            if (var6) 
                            {
                                if (var6) 
                                {
                                                                     //-> label_00002A4D:
                                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                                    if (uint8((sload(0x0) / 0x100))) 
                                    {
                                        paused = 0x0;
                                        if (var6) 
                                        {
                                                                     //-> label_00002A89:
                                            sstore(0x0,(~0xFF00 & sload(0x0)));
                                            goto label_000012D4;
                                        }
                                        else
                                        {
                                                                     //-> label_000012D4:
                                            if (var4) 
                                            {
                                                sstore(0x0,(~0xFF00 & sload(0x0)));
                                                                     //-> label_000012E6:
                                                return(var2);
                                            }
                                            else
                                            {
                                                return(var2);
                                            }
                                        }
                                    }
                                    else
                                    {
                                        sstore(0x0,0x1);
                                        paused = 0x0;
                                        if (var6) 
                                        {
                                            goto label_00002A89;
                                        }
                                        else
                                        {
                                            goto label_000012E6;
                                        }
                                    }
                                }
                                else
                                {
                                                                     //-> label_00002A17:
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x2E);
                                    callcodecopy(0xC4,0x2F20,0x2E);
                                    revert(0x80,0x84);
                                }
                            }
                            else if (uint8(sload(0x0))) 
                            {
                                goto label_00002A17;
                            }
                            else
                            {
                                goto label_00002A4D;
                            }
                        }
                        else
                        {
                            var6 = func_000016F5();
                            goto label_00002A04;
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        var4 = func_00002852();
                        goto label_00001838;
                    }
                }
                else
                {
                                                                     //-> label_000017CF:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x2F20,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_000017CF;
            }
            else
            {
                goto label_00001805;
            }
        }
        else
        {
            var4 = func_000016F5();
            goto label_000017BC;
        }
    }

    function func_00001840() private return (var0)
    {
        var4 = uint8((sload(0x0) / 0x100));
        if (uint8((sload(0x0) / 0x100))) 
        {
                                                                     //-> label_00001859:
            if (var4) 
            {
                if (var4) 
                {
                                                                     //-> label_000018A2:
                    var4 = (uint8((sload(0x0) / 0x100)) == 0);
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                                                                     //-> label_00002A96:
                        var6 = uint8((sload(0x0) / 0x100));
                        if (uint8((sload(0x0) / 0x100))) 
                        {
                                                                     //-> label_00002AAF:
                            if (var6) 
                            {
                                if (var6) 
                                {
                                                                     //-> label_00002AF8:
                                    var6 = (uint8((sload(0x0) / 0x100)) == 0);
                                    if (uint8((sload(0x0) / 0x100))) 
                                    {
                                        sstore(0x97,0x1);
                                        if (var6) 
                                        {
                                                                     //-> label_00002B2F:
                                            sstore(0x0,(~0xFF00 & sload(0x0)));
                                            return(var4);
                                        }
                                        else
                                        {
                                                                     //-> label_000012E6:
                                            return(var4);
                                        }
                                    }
                                    else
                                    {
                                        sstore(0x0,0x1);
                                        sstore(0x97,0x1);
                                        if (var6) 
                                        {
                                            goto label_00002B2F;
                                        }
                                        else
                                        {
                                            goto label_000012E6;
                                        }
                                    }
                                }
                                else
                                {
                                                                     //-> label_00002AC2:
                                    mstore(0x80,SHL(0xE5,0x461BCD));
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x2E);
                                    callcodecopy(0xC4,0x2F20,0x2E);
                                    revert(0x80,0x84);
                                }
                            }
                            else if (uint8(sload(0x0))) 
                            {
                                goto label_00002AC2;
                            }
                            else
                            {
                                goto label_00002AF8;
                            }
                        }
                        else
                        {
                            var6 = func_000016F5();
                            goto label_00002AAF;
                        }
                    }
                    else
                    {
                        sstore(0x0,0x1);
                        goto label_00002A96;
                    }
                }
                else
                {
                                                                     //-> label_0000186C:
                    mstore(0x80,SHL(0xE5,0x461BCD));
                    mstore(0x84,0x20);
                    mstore(0xA4,0x2E);
                    callcodecopy(0xC4,0x2F20,0x2E);
                    revert(0x80,0x84);
                }
            }
            else if (uint8(sload(0x0))) 
            {
                goto label_0000186C;
            }
            else
            {
                goto label_000018A2;
            }
        }
        else
        {
            var4 = func_000016F5();
            goto label_00001859;
        }
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        if ((msg.data.length < 0x4)) 
        {
                                                                     //-> label_000000DD:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));
            if ((0x77B8B1C7 > SHR(0xE0,msg.data(0x0)))) 
            {
                if ((0xE6C60A9 > var0)) 
                {

                    //ISSUE:COMMENT: Function FUNC_07C97FFB()
                    if ((0x7C97FFB == var0)) 
                    {
                        require(!msg.value);
                        FUNC_07C97FFB();
                                                                     //-> label_000000F7:
                        stop();
                    }

                    //ISSUE:COMMENT: Function FUNC_08D093AA()
                    else if ((0x8D093AA == var0)) 
                    {
                        require(!msg.value);
                        var2 = FUNC_08D093AA();
                        mstore(0x80,(var2 & (SHL(0xA0,0x1) - 0x1)));
                        RETURN(0x80,0x20);
                    }

                    //ISSUE:COMMENT: Function FUNC_0BEA440D()
                    else if ((0xBEA440D == var0)) 
                    {
                        require((0x40 < (msg.data.length - 0x4)));
                        FUNC_0BEA440D(msg.data(0x4),((SHL(0xA0,0x1) - 0x1) & msg.data(0x24)));
                        goto label_000000F7;
                    }
                    else
                    {
                        goto label_000000DD;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_0E6C60A9()
                else if ((0xE6C60A9 == var0)) 
                {
                    require(!msg.value);
                    (var0,var1) = FUNC_0E6C60A9();
                    mstore(0x80,0x20);
                    temp153 = mload(var1);
                    mstore(0xA0,temp153);
                    temp154 = mload(var1);
                    var4 = 0xC0;
                    var6 = (temp154 * 0x20);
                    var7 = (temp154 * 0x20);
                    var8 = 0xC0;
                    var9 = (0x20 + var1);
                    var10 = 0x0;
                                                                     //-> label_0000018F:
                    if ((var7 < var10)) 
                    {
                        temp155 = (var6 + var4);
                        RETURN(0x80,(temp155 - 0x80));
                    }
                    else
                    {
                        temp156 = mload((var10 + var9));
                        mstore((var10 + var8),temp156);
                        var10 = (0x20 + var10);
                        goto label_0000018F;
                    }
                }

                //ISSUE:COMMENT: Function FUNC_595C6A67()
                else if ((0x595C6A67 == var0)) 
                {
                    require(!msg.value);
                    FUNC_595C6A67();
                    goto label_000000F7;
                }

                //ISSUE:COMMENT: Function paused()
                else if ((0x5C975ABB == var0)) 
                {
                    require(!msg.value);
                    var1 = paused();
                    mstore(0x80,var1);
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function renounceOwnership()
                else if ((0x715018A6 == var0)) 
                {
                    require(!msg.value);
                    renounceOwnership();
                    goto label_000000F7;
                }
                else
                {
                    goto label_000000DD;
                }
            }
            else if ((0x9009F920 > var0)) 
            {

                //ISSUE:COMMENT: Function FUNC_77B8B1C7()
                if ((0x77B8B1C7 == var0)) 
                {
                    require(!msg.value);
                    require((0x60 < (msg.data.length - 0x4)));
                    FUNC_77B8B1C7(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)),((SHL(0xA0,0x1) - 0x1) & msg.data(0x24)),(msg.data(0x44) & (SHL(0xA0,0x1) - 0x1)));
                    goto label_000000F7;
                }

                //ISSUE:COMMENT: Function FUNC_805A0CFB()
                else if ((0x805A0CFB == var0)) 
                {
                    require(!msg.value);
                    var2 = uint8((sload(0x0) / 0x100));
                    if (uint8((sload(0x0) / 0x100))) 
                    {
                                                                     //-> label_00001248:
                        if (var2) 
                        {
                            if (var2) 
                            {
                                                                     //-> label_00001291:
                                if (uint8((sload(0x0) / 0x100))) 
                                {
                                    var2 = func_00001706();
                                                                     //-> label_000012C4:
                                    var2 = func_000017A3();
                                    var4 = func_00001840();
                                    if (var4) 
                                    {
                                        sstore(0x0,(~0xFF00 & sload(0x0)));
                                    }
                                    else
                                    {
                                    }
                                }
                                else
                                {
                                    sstore(0x0,0x1);
                                    var2 = func_00001706();
                                    goto label_000012C4;
                                }
                            }
                            else
                            {
                                                                     //-> label_0000125B:
                                mstore(0x80,SHL(0xE5,0x461BCD));
                                mstore(0x84,0x20);
                                mstore(0xA4,0x2E);
                                callcodecopy(0xC4,0x2F20,0x2E);
                                revert(0x80,0x84);
                            }
                        }
                        else if (uint8(sload(0x0))) 
                        {
                            goto label_0000125B;
                        }
                        else
                        {
                            goto label_00001291;
                        }
                    }
                    else
                    {
                        var2 = func_000016F5();
                        goto label_00001248;
                    }
                }

                //ISSUE:COMMENT: Function owner()
                else if ((0x8DA5CB5B == var0)) 
                {
                    require(!msg.value);
                    var1 = owner();
                                                                     //-> label_0000010E:
                    mstore(0x80,(var1 & (SHL(0xA0,0x1) - 0x1)));
                    RETURN(0x80,0x20);
                }
                else
                {
                    goto label_000000DD;
                }
            }

            //ISSUE:COMMENT: Function FUNC_9009F920()
            else if ((0x9009F920 == var0)) 
            {
                require(!msg.value);
                var1 = 0x10E;
                var2 = FUNC_9009F920();
                goto label_0000010E;
            }

            //ISSUE:COMMENT: Function FUNC_97B3FCAA()
            else if ((0x97B3FCAA == var0)) 
            {
                require(!msg.value);
                var1 = FUNC_97B3FCAA();
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function FUNC_D5396F78()
            else if ((0xD5396F78 == var0)) 
            {
                require(!msg.value);
                var1 = 0x10E;
                var2 = FUNC_D5396F78();
                goto label_0000010E;
            }

            //ISSUE:COMMENT: Function transferOwnership()
            else if ((0xF2FDE38B == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                transferOwnership(((SHL(0xA0,0x1) - 0x1) & msg.data(0x4)));
                goto label_000000F7;
            }
            else
            {
                goto label_000000DD;
            }
        }
    }

}
