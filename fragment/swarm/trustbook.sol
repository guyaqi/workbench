contract disassembler {

    function FUNC_05A27C9D() public return (var0)
    {
        var2 = 0x0;
        var3 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_00000369;
            }
            else
            {
                goto label_00000370;
            }
        }
        else if (var3) 
        {
                                              label_00000369:
            var2 = 0x1;
            goto label_00000374;
        }
        else
        {
                                              label_00000370:
            var2 = 0x0;
                                              label_00000374:
            return(var2);
        }
    }

    function shutDown() public return ()
    {
        var2 = isOwner();
        if (var2) 
        {
            mstore(0x80,0x9865027500000000000000000000000000000000000000000000000000000000);
            var10 = uint160(uint160(VAR_E36A4EC7));
            require(extcodesize(uint160(uint160(VAR_E36A4EC7))));

            //ISSUE:COMMENT: External call: renounceMinter()
            var5 = var10.call(0x80,0x4);
            var5 = (var5 == 0);
            if (var5) 
            {
                returndatacopy(0x0,0x0,returndatasize);
                revert(0x0,returndatasize);
            }
            else
            {
                collateralToken = (~0xFF000000000000000000000000000000000000000000 & collateralToken);
                log(0x80,0x0,0x85D30AF066E5AF845A9622672F06B85F9FAC16623C3AE27BC82F59E9443B70DC,msg.sender);
                return();
            }
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            mstore(0xC4,0x4F776E61626C653A2063616C6C6572206973206E6F7420746865206F776E6572);
            revert(0x80,0x64);
        }
    }

    function FUNC_1B2EF1CA( uint256 arg0,uint256 arg1) public return (var0)
    {
        var2 = arg0;
        var3 = arg1;
        var5 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_00000543;
            }
            else
            {
                goto label_000004F4;
            }
        }
        else if (var5) 
        {
                                              label_00000543:
            if ((0x2 == sload(0x3))) 
            {
                mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                mstore(0x84,0x20);
                mstore(0xA4,0x1F);
                mstore(0xC4,0x5265656E7472616E637947756172643A207265656E7472616E742063616C6C00);
                revert(0x80,0x64);
            }
            else
            {
                sstore(0x3,0x2);
                var6 = buyPrice(var2);
                var5 = var6;
                if ((var3 > var6)) 
                {
                    mstore(0x80,0x23B872DD00000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,msg.sender);
                    mstore(0xA4,this.address);
                    mstore(0xC4,var5);
                    var14 = uint160(collateralToken);
                    require(extcodesize(uint160(collateralToken)));

                    //ISSUE:COMMENT: External call: gasprice_bit_ether(msg.sender,this.address,var5)
                    var9 = var14.call(0x80,0x64,0x80,0x20);
                    var9 = (var9 == 0);
                    if (var9) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        require((0x20 < returndatasize));
                        temp15 = mload(0x80);
                        if (temp15) 
                        {
                            mstore(0x80,0x40C10F1900000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,msg.sender);
                            mstore(0xA4,var2);
                            var14 = uint160(VAR_E36A4EC7);
                            require(extcodesize(uint160(VAR_E36A4EC7)));

                            //ISSUE:COMMENT: External call: mint(msg.sender,var2)
                            var9 = var14.call(0x80,0x44,0x80,0x20);
                            var9 = (var9 == 0);
                            if (var9) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                require((0x20 < returndatasize));
                                temp17 = mload(0x80);
                                if (temp17) 
                                {
                                    mstore(0x80,var2);
                                    mstore(0xA0,var5);
                                    mstore(0xC0,var3);
                                    log(0x80,0x60,0x8BB50BBAD61A171C6FA349B88297F9622B09984D0CB849541900B414BB74A384,msg.sender);
                                    sstore(0x3,0x1);
                                    return(0x1);
                                }
                                else
                                {
                                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x15);
                                    mstore(0xC4,0x4D696E74696E6720746F6B656E73206661696C65640000000000000000000000);
                                    revert(0x80,0x64);
                                }
                            }
                        }
                        else
                        {
                            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,0x20);
                            mstore(0xA4,0x1E);
                            mstore(0xC4,0x5472616E7366657272696E6720636F6C6C61746572616C206661696C65640000);
                            revert(0x80,0x64);
                        }
                    }
                }
                else
                {
                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,0x20);
                    mstore(0xA4,0x17);
                    mstore(0xC4,0x50726963652065786365656473206D6178207370656E64000000000000000000);
                    revert(0x80,0x64);
                }
            }
        }
        else
        {
                                              label_000004F4:
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xE);
            mstore(0xC4,0x437572766520696E616374697665000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
    }

    function FUNC_6190E3A8( uint256 arg0,uint256 arg1,uint256 arg2) public return (var0)
    {
        var2 = arg0;
        var3 = arg1;
        var4 = arg2;
        var6 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_000008DD;
            }
            else
            {
                goto label_0000088E;
            }
        }
        else if (var6) 
        {
                                              label_000008DD:
            if ((0x2 == sload(0x3))) 
            {
                mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                mstore(0x84,0x20);
                mstore(0xA4,0x1F);
                mstore(0xC4,0x5265656E7472616E637947756172643A207265656E7472616E742063616C6C00);
                revert(0x80,0x64);
            }
            else
            {
                sstore(0x3,0x2);
                var7 = buyPrice(var2);
                var6 = var7;
                if ((var3 > var7)) 
                {
                    mstore(0x80,0x23B872DD00000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,msg.sender);
                    mstore(0xA4,this.address);
                    mstore(0xC4,var6);
                    var15 = uint160(collateralToken);
                    require(extcodesize(uint160(collateralToken)));

                    //ISSUE:COMMENT: External call: gasprice_bit_ether(msg.sender,this.address,var6)
                    var10 = var15.call(0x80,0x64,0x80,0x20);
                    var10 = (var10 == 0);
                    if (var10) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        require((0x20 < returndatasize));
                        temp19 = mload(0x80);
                        if (temp19) 
                        {
                            mstore(0x80,0x40C10F1900000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,uint160(var4));
                            mstore(0xA4,var2);
                            var15 = uint160(VAR_E36A4EC7);
                            require(extcodesize(uint160(VAR_E36A4EC7)));

                            //ISSUE:COMMENT: External call: mint(uint160(var4),var2)
                            var10 = var15.call(0x80,0x44,0x80,0x20);
                            var10 = (var10 == 0);
                            if (var10) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                require((0x20 < returndatasize));
                                temp21 = mload(0x80);
                                if (temp21) 
                                {
                                    mstore(0x80,var2);
                                    mstore(0xA0,var6);
                                    mstore(0xC0,var3);
                                    log(0x80,0x60,0x61E2242687B56628BC0E14D72FC3CB62DDC508C2096A2B86E36CA745E1164AF7,msg.sender,uint160(var4));
                                    sstore(0x3,0x1);
                                    return(0x1);
                                }
                                else
                                {
                                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x15);
                                    mstore(0xC4,0x4D696E74696E6720746F6B656E73206661696C65640000000000000000000000);
                                    revert(0x80,0x64);
                                }
                            }
                        }
                        else
                        {
                            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,0x20);
                            mstore(0xA4,0x1E);
                            mstore(0xC4,0x5472616E7366657272696E6720636F6C6C61746572616C206661696C65640000);
                            revert(0x80,0x64);
                        }
                    }
                }
                else
                {
                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,0x20);
                    mstore(0xA4,0x17);
                    mstore(0xC4,0x50726963652065786365656473206D6178207370656E64000000000000000000);
                    revert(0x80,0x64);
                }
            }
        }
        else
        {
                                              label_0000088E:
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xE);
            mstore(0xC4,0x437572766520696E616374697665000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
    }

    function renounceOwnership() public return ()
    {
        var2 = isOwner();
        if (var2) 
        {
            log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,uint160(owner),0x0);
            owner = 0x0;
            return();
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            mstore(0xC4,0x4F776E61626C653A2063616C6C6572206973206E6F7420746865206F776E6572);
            revert(0x80,0x64);
        }
    }

    function redeem( uint256 arg0,uint256 arg1) public return (var0)
    {
        var2 = arg0;
        var3 = arg1;
        var5 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_00000D39;
            }
            else
            {
                goto label_00000CEA;
            }
        }
        else if (var5) 
        {
                                              label_00000D39:
            if ((0x2 == sload(0x3))) 
            {
                mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                mstore(0x84,0x20);
                mstore(0xA4,0x1F);
                mstore(0xC4,0x5265656E7472616E637947756172643A207265656E7472616E742063616C6C00);
                revert(0x80,0x64);
            }
            else
            {
                sstore(0x3,0x2);
                var6 = FUNC_C9F1DBA8(var2);
                var5 = var6;
                if ((var3 < var6)) 
                {
                    mstore(0x80,0x79CC679000000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,msg.sender);
                    mstore(0xA4,var2);
                    var14 = uint160(VAR_E36A4EC7);
                    require(extcodesize(uint160(VAR_E36A4EC7)));

                    //ISSUE:COMMENT: External call: burnFrom(msg.sender,var2)
                    var9 = var14.call(0x80,0x44);
                    var9 = (var9 == 0);
                    if (var9) 
                    {
                        returndatacopy(0x0,0x0,returndatasize);
                        revert(0x0,returndatasize);
                    }
                    else
                    {
                        mstore(0x80,0xA9059CBB00000000000000000000000000000000000000000000000000000000);
                        mstore(0x84,msg.sender);
                        mstore(0xA4,var5);
                        var14 = uint160(collateralToken);
                        require(extcodesize(uint160(collateralToken)));

                        //ISSUE:COMMENT: External call: many_msg_babbage(msg.sender,var5)
                        var9 = var14.call(0x80,0x44,0x80,0x20);
                        var9 = (var9 == 0);
                        if (var9) 
                        {
                            returndatacopy(0x0,0x0,returndatasize);
                            revert(0x0,returndatasize);
                        }
                        else
                        {
                            require((0x20 < returndatasize));
                            temp25 = mload(0x80);
                            if (temp25) 
                            {
                                mstore(0x80,var2);
                                mstore(0xA0,var5);
                                mstore(0xC0,var3);
                                log(0x80,0x60,0x9ED992203B5A631F0A9D0B8341FDE3C68A998A2AC413D72A34213BD77D4B1814,msg.sender);
                                sstore(0x3,0x1);
                                return(0x1);
                            }
                            else
                            {
                                mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                                mstore(0x84,0x20);
                                mstore(0xA4,0x1E);
                                mstore(0xC4,0x5472616E7366657272696E6720636F6C6C61746572616C206661696C65640000);
                                revert(0x80,0x64);
                            }
                        }
                    }
                }
                else
                {
                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,0x20);
                    mstore(0xA4,0x15);
                    mstore(0xC4,0x52657761726420756E646572206D696E2073656C6C0000000000000000000000);
                    revert(0x80,0x64);
                }
            }
        }
        else
        {
                                              label_00000CEA:
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xE);
            mstore(0xC4,0x437572766520696E616374697665000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
    }

    uint160 public owner;

    function isOwner() public return (var0)
    {
        var5 = func_000016E6();
        temp0 = uint160(var5);
        return((temp0 == uint160(owner)));
    }

    function FUNC_ABB7BC4A( uint256 arg0) public return (var0)
    {
        var4 = func_000016EA(arg0);
        return(var4);
    }

    uint160 public collateralToken;

    function buyPrice( uint256 arg0) public return (var0)
    {
        var7 = arg0;
        var9 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_000010B5;
            }
            else
            {
                goto label_00001066;
            }
        }
        else if (var9) 
        {
                                              label_000010B5:
            var10 = var7;
            mstore(0x80,0x18160DDD00000000000000000000000000000000000000000000000000000000);
            var18 = uint160(uint160(VAR_E36A4EC7));
            require(extcodesize(uint160(uint160(VAR_E36A4EC7))));
            if (delegatecall(gasleft,var18,0x80,0x4,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                var11 = mload(0x80);
                var10 = func_000016F3(var10,var11);
                return(0x1154);
            }
            else
            {
                returndatacopy(0x0,0x0,returndatasize);
                revert(0x0,returndatasize);
            }
        }
        else
        {
                                              label_00001066:
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xE);
            mstore(0xC4,0x437572766520696E616374697665000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
    }

    function FUNC_C9F1DBA8( uint256 arg0) public return (var0)
    {
        var7 = arg0;
        var9 = uint8((collateralToken / 0x1000000000000000000000000000000000000000000));
        if (uint8((collateralToken / 0x1000000000000000000000000000000000000000000))) 
        {
            if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
            {
                goto label_000011F9;
            }
            else
            {
                goto label_000011AA;
            }
        }
        else if (var9) 
        {
                                              label_000011F9:
            var10 = var7;
            mstore(0x80,0x18160DDD00000000000000000000000000000000000000000000000000000000);
            var18 = uint160(uint160(VAR_E36A4EC7));
            require(extcodesize(uint160(uint160(VAR_E36A4EC7))));
            if (delegatecall(gasleft,var18,0x80,0x4,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                var11 = mload(0x80);
                assert((0x0 < (var11 - var10)));
                var17 = func_000018E5(var11,var10);
                var16 = func_00001866(var17);
                var17 = func_00001866(var11);
                var15 = func_000018E5(var17,var16);
                var16 = func_00001927(var15,var10);
                return(var15);
            }
            else
            {
                returndatacopy(0x0,0x0,returndatasize);
                revert(0x0,returndatasize);
            }
        }
        else
        {
                                              label_000011AA:
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xE);
            mstore(0xC4,0x437572766520696E616374697665000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
    }

    function init() public return ()
    {
        if (uint8((collateralToken / 0x10000000000000000000000000000000000000000))) 
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0xD);
            mstore(0xC4,0x437572766520697320696E697400000000000000000000000000000000000000);
            revert(0x80,0x64);
        }
        else
        {
            mstore(0x80,0xAA271E1A00000000000000000000000000000000000000000000000000000000);
            mstore(0x84,this.address);
            var9 = uint160(VAR_E36A4EC7);
            require(extcodesize(uint160(VAR_E36A4EC7)));
            if (delegatecall(gasleft,var9,0x80,0x24,0x80,0x20)) 
            {
                require((0x20 < returndatasize));
                temp26 = mload(0x80);
                if (temp26) 
                {
                    mstore(0x80,0x18160DDD00000000000000000000000000000000000000000000000000000000);
                    var10 = uint160(VAR_E36A4EC7);
                    require(extcodesize(uint160(VAR_E36A4EC7)));
                    if (delegatecall(gasleft,var10,0x80,0x4,0x80,0x20)) 
                    {
                        require((0x20 < returndatasize));
                        temp27 = mload(0x80);
                        var2 = temp27;
                        if ((sload(0x8) < temp27)) 
                        {
                            var4 = func_000016EA(var2);
                            mstore(0x80,0x23B872DD00000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,msg.sender);
                            mstore(0xA4,this.address);
                            mstore(0xC4,var4);
                            var12 = uint160(collateralToken);
                            require(extcodesize(uint160(collateralToken)));

                            //ISSUE:COMMENT: External call: gasprice_bit_ether(msg.sender,this.address,var4)
                            var7 = var12.call(0x80,0x64,0x80,0x20);
                            var7 = (var7 == 0);
                            if (var7) 
                            {
                                returndatacopy(0x0,0x0,returndatasize);
                                revert(0x0,returndatasize);
                            }
                            else
                            {
                                require((0x20 < returndatasize));
                                temp29 = mload(0x80);
                                if (temp29) 
                                {
                                    collateralToken = (0x10000000000000000000000000000000000000000 | ((0x1000000000000000000000000000000000000000000 | (collateralToken & ~0xFF000000000000000000000000000000000000000000)) & ~0xFF0000000000000000000000000000000000000000));
                                    return();
                                }
                                else
                                {
                                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                                    mstore(0x84,0x20);
                                    mstore(0xA4,0x22);
                                    mstore(0xC4,0x4661696C656420746F20636F6C6C61746572616C697A65642074686520637572);
                                    mstore(0xE4,0x7665000000000000000000000000000000000000000000000000000000000000);
                                    revert(0x80,0x84);
                                }
                            }
                        }
                        else
                        {
                            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                            mstore(0x84,0x20);
                            mstore(0xA4,0x20);
                            mstore(0xC4,0x4375727665206571756174696F6E207265717569726573207072652D6D696E74);
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
                    mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                    mstore(0x84,0x20);
                    mstore(0xA4,0x13);
                    mstore(0xC4,0x4375727665206973206E6F74206D696E74657200000000000000000000000000);
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

    uint160 public VAR_E36A4EC7;

    function transferOwnership( address arg0) public return ()
    {
        var3 = isOwner();
        if (var3) 
        {
            var2 = func_00001778(arg0);
            return();
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x20);
            mstore(0xC4,0x4F776E61626C653A2063616C6C6572206973206E6F7420746865206F776E6572);
            revert(0x80,0x64);
        }
    }

    function func_000016E6() private return (var0)
    {
        return(msg.sender);
    }

    function func_000016F3( uint256 arg0,uint256 arg1) private return (var0)
    {
        var16 = func_00001866(arg1);
        var18 = func_00001881(arg1,arg0);
        var17 = func_00001866(var18);
        var15 = func_000018E5(var17,var16);
        var16 = func_00001927(var15,arg0);
        var9 = var15;
        return(var16);
    }

    function func_00001866( uint256 arg0) private return (var0)
    {
        var20 = func_00001969(arg0);
        var23 = (var20 + arg0);
        if ((arg0 < (var20 + arg0))) 
        {
            return(var23);
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x1B);
            mstore(0xC4,0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            revert(0x80,0x64);
        }
    }

    function func_00001969( uint256 arg0) private return (var0)
    {
        var21 = arg0;
        var23 = 0x1;
                                              label_0000196E:
        if ((var23 > sload(0x6))) 
        {
            return(var21);
        }
        else
        {
            var26 = func_00001AB2(var21,var21);
            var24 = func_00001927(var26,sload(0x8));
            var21 = var24;
            var23 = (0x1 + var23);
            goto label_0000196E;
        }
    }

    function func_00001AB2( uint256 arg0,uint256 arg1) private return (var0)
    {
        if (arg0) 
        {
            var30 = (arg1 * arg0);
            var33 = (arg1 * arg0);
            assert(arg0);
            if (((var33 / arg0) == arg1)) 
            {
                return(var30);
            }
            else
            {
                mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
                mstore(0x84,0x20);
                mstore(0xA4,0x21);
                mstore(0xC4,0x536166654D6174683A206D756C7469706C69636174696F6E206F766572666C6F);
                mstore(0xE4,0x7700000000000000000000000000000000000000000000000000000000000000);
                revert(0x80,0x84);
            }
        }
        else
        {
            return(0x0);
        }
    }

    function func_00001927( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(0x40,0xC0);
        mstore(0x80,0x1A);
        mstore(0xA0,0x536166654D6174683A206469766973696F6E206279207A65726F000000000000);
        if ((arg1 > 0x0)) 
        {
            assert(arg1);
            return((arg0 / arg1));
        }
        else
        {
            mstore(0xC0,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0xC4,0x20);
            temp3 = mload(0x80);
            mstore(0xE4,temp3);
            var36 = 0x104;
            temp4 = mload(0x80);
            var38 = temp4;
            var39 = temp4;
            var40 = 0x104;
            var41 = 0xA0;
            if ((temp4 < 0x0)) 
            {
                                              label_00001A02:
                var36 = (var38 + var36);
                var37 = (0x1F & var38);
                require((0x1F & var38));
                temp5 = mload((var36 - var37));
                mstore((var36 - var37),(~(EXP(0x100,(0x20 - var37)) - 0x1) & temp5));
                temp6 = (0x20 + (var36 - var37));
                revert(0xC0,(temp6 - 0xC0));
            }
            else
            {
                temp7 = mload(0xA0);
                mstore(0x104,temp7);
                var42 = 0x20;
                                              label_000019EA:
                if ((var39 < var42)) 
                {
                    goto label_00001A02;
                }
                else
                {
                    temp8 = mload((var42 + var41));
                    mstore((var42 + var40),temp8);
                    var42 = (0x20 + var42);
                    goto label_000019EA;
                }
            }
        }
    }

    function func_00001881( uint256 arg0,uint256 arg1) private return (var0)
    {
        var22 = (arg1 + arg0);
        if ((arg0 < (arg1 + arg0))) 
        {
            return(var22);
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x1B);
            mstore(0xC4,0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            revert(0x80,0x64);
        }
    }

    function func_000018E5( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(0x40,0xC0);
        mstore(0x80,0x1E);
        mstore(0xA0,0x536166654D6174683A207375627472616374696F6E206F766572666C6F770000);
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            mstore(0xC0,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0xC4,0x20);
            temp9 = mload(0x80);
            mstore(0xE4,temp9);
            var27 = 0x104;
            temp10 = mload(0x80);
            var29 = temp10;
            var30 = temp10;
            var31 = 0x104;
            var32 = 0xA0;
            var33 = 0x0;
                                              label_000019EA:
            if ((var30 < var33)) 
            {
                var27 = (var29 + var27);
                var28 = (0x1F & var29);
                require((0x1F & var29));
                temp11 = mload((var27 - var28));
                mstore((var27 - var28),(~(EXP(0x100,(0x20 - var28)) - 0x1) & temp11));
                temp12 = (0x20 + (var27 - var28));
                revert(0xC0,(temp12 - 0xC0));
            }
            else
            {
                temp13 = mload((var33 + var32));
                mstore((var33 + var31),temp13);
                var33 = (0x20 + var33);
                goto label_000019EA;
            }
        }
    }

    function func_000016EA( uint256 arg0) private return (var0)
    {
        var14 = func_00001866(0x0);
        var16 = func_00001881(0x0,arg0);
        var15 = func_00001866(var16);
        var13 = func_000018E5(var15,var14);
        var14 = func_00001927(var13,arg0);
        return(var13);
    }

    function func_00001778( uint256 arg0) private return (var0)
    {
        if (uint160(arg0)) 
        {
            log(0x80,0x0,0x8BE0079C531659141344CD1FD0A4F28419497F9722A3DAAFE3B4186F6B6457E0,uint160(owner),uint160(arg0));
            owner = uint160(arg0);
            return(var2);
        }
        else
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x26);
            mstore(0xC4,0x4F776E61626C653A206E6577206F776E657220697320746865207A65726F2061);
            mstore(0xE4,0x6464726573730000000000000000000000000000000000000000000000000000);
            revert(0x80,0x84);
        }
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        if ((msg.data.length < 0x4)) 
        {
                                              label_000000DA:
            revert(0x0,0x0);
        }
        else
        {
            var0 = uint32((msg.data(0x0) / 0x100000000000000000000000000000000000000000000000000000000));

            //ISSUE:COMMENT: Function FUNC_05A27C9D()
            if ((uint32((msg.data(0x0) / 0x100000000000000000000000000000000000000000000000000000000)) == 0x5A27C9D)) 
            {
                require(!msg.value);
                var1 = FUNC_05A27C9D();
                                              label_000000F4:
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function shutDown()
            else if ((0x10B9E583 == var0)) 
            {
                require(!msg.value);
                shutDown();
                                              label_0000011D:
                stop();
            }

            //ISSUE:COMMENT: Function FUNC_1B2EF1CA()
            else if ((0x1B2EF1CA == var0)) 
            {
                require(!msg.value);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = FUNC_1B2EF1CA(msg.data(0x4),msg.data(0x24));
                goto label_000000F4;
            }

            //ISSUE:COMMENT: Function FUNC_6190E3A8()
            else if ((0x6190E3A8 == var0)) 
            {
                require(!msg.value);
                require((0x60 < (msg.data.length - 0x4)));
                var1 = FUNC_6190E3A8(msg.data(0x4),msg.data(0x24),uint160(msg.data(0x44)));
                goto label_000000F4;
            }

            //ISSUE:COMMENT: Function renounceOwnership()
            else if ((0x715018A6 == var0)) 
            {
                require(!msg.value);
                renounceOwnership();
                goto label_0000011D;
            }

            //ISSUE:COMMENT: Function redeem()
            else if ((0x7CBC2373 == var0)) 
            {
                require(!msg.value);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = redeem(msg.data(0x4),msg.data(0x24));
                goto label_000000F4;
            }

            //ISSUE:COMMENT: Function owner()
            else if ((0x8DA5CB5B == var0)) 
            {
                require(!msg.value);
                var1 = owner();
                                              label_000001E8:
                mstore(0x80,uint160(var1));
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function isOwner()
            else if ((0x8F32D59B == var0)) 
            {
                require(!msg.value);
                var1 = isOwner();
                goto label_000000F4;
            }

            //ISSUE:COMMENT: Function FUNC_ABB7BC4A()
            else if ((0xABB7BC4A == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                var1 = FUNC_ABB7BC4A(msg.data(0x4));
                                              label_00000243:
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function collateralToken()
            else if ((0xB2016BD4 == var0)) 
            {
                require(!msg.value);
                var1 = collateralToken();
                goto label_000001E8;
            }

            //ISSUE:COMMENT: Function buyPrice()
            else if ((0xC4DBF622 == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                var1 = buyPrice(msg.data(0x4));
                goto label_00000243;
            }

            //ISSUE:COMMENT: Function FUNC_C9F1DBA8()
            else if ((0xC9F1DBA8 == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                var1 = FUNC_C9F1DBA8(msg.data(0x4));
                goto label_00000243;
            }

            //ISSUE:COMMENT: Function init()
            else if ((0xE1C7392A == var0)) 
            {
                require(!msg.value);
                init();
                goto label_0000011D;
            }

            //ISSUE:COMMENT: Function FUNC_E36A4EC7()
            else if ((0xE36A4EC7 == var0)) 
            {
                require(!msg.value);
                var1 = FUNC_E36A4EC7();
                goto label_000001E8;
            }

            //ISSUE:COMMENT: Function transferOwnership()
            else if ((0xF2FDE38B == var0)) 
            {
                require(!msg.value);
                require((0x20 < (msg.data.length - 0x4)));
                transferOwnership(uint160(msg.data(0x4)));
                goto label_0000011D;
            }
            else
            {
                goto label_000000DA;
            }
        }
    }

}
