contract disassembler {

    function name() public return (var0,var1)
    {
        mstore(0x40,(0x80 + (0x20 + (((0x1F + ((((0x100 * ((0x1 & sload(0x3)) == 0)) - 0x1) & sload(0x3)) / 0x2)) / 0x20) * 0x20))));
        mstore(0x80,((((0x100 * ((0x1 & sload(0x3)) == 0)) - 0x1) & sload(0x3)) / 0x2));
        var8 = ((((0x100 * ((0x1 & sload(0x3)) == 0)) - 0x1) & sload(0x3)) / 0x2);
        if (((((0x100 * ((0x1 & sload(0x3)) == 0)) - 0x1) & sload(0x3)) / 0x2)) 
        {
            if ((0x1F < var8)) 
            {
                temp0 = (0xA0 + var8);
                var6 = temp0;
                mstore(0x0,0x3);
                temp1 = keccak256(0x0,0x20);
                var8 = 0xA0;
                var7 = temp1;
                                                                 //-> label_0000055F:
                mstore(var8,sload(var7));
                var7 = (0x1 + var7);
                var8 = (0x20 + var8);
                if ((var6 > var8)) 
                {
                    goto label_0000055F;
                }
                else
                {
                    temp3 = (var6 + (0x1F & (var8 - var6)));
                                                                 //-> label_0000057C:
                    return(var0,var3);
                }
            }
            else
            {
                mstore(0xA0,((sload(0x3) / 0x100) * 0x100));
                goto label_0000057C;
            }
        }
        else
        {
            return(var0,0x80);
        }
    }

    function approve( address arg0,uint256 arg1) public return (var0)
    {
        var6 = func_000009AD();
        var4 = func_000009B5(var6,arg0,arg1);
        return(0x1);
    }

    uint256 public totalSupply;

    function gasprice_bit_ether( int128 arg0) public return (var0)
    {
        var5 = func_00000BAC(arg0,arg1,arg2);
        var8 = func_000009AD();
        mstore(0x40,0xE0);
        mstore(0x80,0x28);
        callcodecopy(0xA0,0x1020,0x28);
        var14 = func_000009AD();
        temp25 = uint160(uint160(var14));
        var9 = func_00000E6D(allowance[uint160(uint160(arg0))][temp25],arg2,0x80);
        var5 = func_000009B5(arg0,var8,var9);
        return(0x1);
    }

    uint8 public decimals;

    function increaseAllowance( address arg0,uint256 arg1) public return (var0)
    {
        var6 = func_000009AD();
        var12 = func_000009AD();
        temp29 = uint160(uint160(var12));
        var8 = func_00000F27(allowance[temp29][uint160(uint160(arg0))],arg1);
        var4 = func_000009B5(var6,arg0,var8);
        return(0x1);
    }

    mapping(address => uint256) public balanceOf

    function symbol() public return (var0,var1)
    {
        mstore(0x40,(0x80 + (0x20 + (((0x1F + ((((0x100 * ((0x1 & sload(0x4)) == 0)) - 0x1) & sload(0x4)) / 0x2)) / 0x20) * 0x20))));
        mstore(0x80,((((0x100 * ((0x1 & sload(0x4)) == 0)) - 0x1) & sload(0x4)) / 0x2));
        var8 = ((((0x100 * ((0x1 & sload(0x4)) == 0)) - 0x1) & sload(0x4)) / 0x2);
        if (((((0x100 * ((0x1 & sload(0x4)) == 0)) - 0x1) & sload(0x4)) / 0x2)) 
        {
            if ((0x1F < var8)) 
            {
                temp34 = (0xA0 + var8);
                var6 = temp34;
                mstore(0x0,0x4);
                temp35 = keccak256(0x0,0x20);
                var8 = 0xA0;
                var7 = temp35;
                                                                 //-> label_00000814:
                mstore(var8,sload(var7));
                var7 = (0x1 + var7);
                var8 = (0x20 + var8);
                if ((var6 > var8)) 
                {
                    goto label_00000814;
                }
                else
                {
                    temp37 = (var6 + (0x1F & (var8 - var6)));
                                                                 //-> label_00000831:
                    return(var0,var3);
                }
            }
            else
            {
                mstore(0xA0,((sload(0x4) / 0x100) * 0x100));
                goto label_00000831;
            }
        }
        else
        {
            return(var0,0x80);
        }
    }

    function decreaseAllowance( address arg0,uint256 arg1) public return (var0)
    {
        var6 = func_000009AD();
        mstore(0x40,0xE0);
        mstore(0x80,0x25);
        callcodecopy(0xA0,0x1091,0x25);
        var13 = func_000009AD();
        temp47 = uint160(uint160(var13));
        var8 = func_00000E6D(allowance[temp47][uint160(uint160(arg0))],arg1,0x80);
        var4 = func_000009B5(var6,arg0,var8);
        return(0x1);
    }

    function many_msg_babbage( bytes1 arg0) public return (var0)
    {
        var6 = func_000009AD();
        var4 = func_00000BAC(var6,arg0,arg1);
        return(0x1);
    }

    mapping(address => mapping(address => uint256)) public allowance

    function func_000009AD() private return (var0)
    {
        return(msg.sender);
    }

    function func_000009B5( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        if ((uint160(arg0) == uint160(0x0))) 
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x24);
            callcodecopy(0xC4,0x106D,0x24);
            revert(0x80,0x84);
        }
        else if ((uint160(arg1) == uint160(0x0))) 
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x22);
            callcodecopy(0xC4,0xFD8,0x22);
            revert(0x80,0x84);
        }
        else
        {
            allowance[uint160(uint160(arg0))][uint160(uint160(arg1))] = arg2;
            mstore(0x80,arg2);
            log(0x80,0x20,0x8C5BE1E5EBEC7D5BD14F71427D1E84F3DD0314C0F7B2291E5B200AC8C7C3B925,uint160(arg0),uint160(arg1));
            return(var4);
        }
    }

    function func_00000BAC( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        if ((uint160(arg0) == uint160(0x0))) 
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x25);
            callcodecopy(0xC4,0x1048,0x25);
            revert(0x80,0x84);
        }
        else if ((uint160(arg1) == uint160(0x0))) 
        {
            mstore(0x80,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0x84,0x20);
            mstore(0xA4,0x23);
            callcodecopy(0xC4,0xFB5,0x23);
            revert(0x80,0x84);
        }
        else
        {
            var9 = func_00000FAF(arg0,arg1,arg2);
            mstore(0x40,0xE0);
            mstore(0x80,0x26);
            callcodecopy(0xA0,0xFFA,0x26);
            var10 = func_00000E6D(balanceOf[uint160(uint160(arg0))],var9,0x80);
            balanceOf[uint160(uint160(arg0))] = var10;
            var10 = func_00000F27(balanceOf[uint160(uint160(arg1))],var9);
            balanceOf[uint160(uint160(arg1))] = var10;
            mstore(0xE0,var9);
            log(0xE0,0x20,0xDDF252AD1BE2C89B69C2B068FC378DAA952BA7F163C4A11628F55A4DF523B3EF,uint160(arg0),uint160(arg1));
            return(var5);
        }
    }

    function func_00000FAF( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        return(var9);
    }

    function func_00000E6D( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        if ((arg0 > arg1)) 
        {
            return((arg0 - arg1));
        }
        else
        {
            mstore(0xE0,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0xE4,0x20);
            temp17 = mload(arg2);
            mstore(0x104,temp17);
            var18 = 0x124;
            temp18 = mload(arg2);
            var20 = temp18;
            var21 = temp18;
            var22 = 0x124;
            var23 = (0x20 + arg2);
            var24 = 0x0;
                                                                 //-> label_00000EC4:
            if ((var21 < var24)) 
            {
                var18 = (var20 + var18);
                var19 = (0x1F & var20);
                require((0x1F & var20));
                temp19 = mload((var18 - var19));
                mstore((var18 - var19),(~(EXP(0x100,(0x20 - var19)) - 0x1) & temp19));
                temp20 = (0x20 + (var18 - var19));
                revert(0xE0,(temp20 - 0xE0));
            }
            else
            {
                temp21 = mload((var23 + var24));
                mstore((var22 + var24),temp21);
                var24 = (var24 + 0x20);
                goto label_00000EC4;
            }
        }
    }

    function func_00000F27( uint256 arg0,uint256 arg1) private return (var0)
    {
        var14 = (arg0 + arg1);
        if ((arg0 < (arg0 + arg1))) 
        {
            return(var14);
        }
        else
        {
            mstore(0xE0,0x8C379A000000000000000000000000000000000000000000000000000000000);
            mstore(0xE4,0x20);
            mstore(0x104,0x1B);
            mstore(0x124,0x536166654D6174683A206164646974696F6E206F766572666C6F770000000000);
            revert(0xE0,0x64);
        }
    }

    function main() public return ()
    {
        mstore(0x40,0x80);
        var0 = msg.value;
        require(!msg.value);
        if ((msg.data.length < 0x4)) 
        {
                                                                 //-> label_000000A9:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));
            if ((0x39509351 > SHR(0xE0,msg.data(0x0)))) 
            {

                //ISSUE:COMMENT: Function name()
                if ((0x6FDDE03 == var0)) 
                {
                    (var0,var1) = name();
                    var2 = mload(0x40);
                    mstore(var2,0x20);
                    temp5 = mload(var1);
                    mstore((0x20 + var2),temp5);
                    var4 = (0x20 + (0x20 + var2));
                    temp6 = mload(var1);
                    var6 = temp6;
                    var7 = temp6;
                    var8 = (0x20 + (0x20 + var2));
                    var9 = (0x20 + var1);
                    var10 = 0x0;
                                                                 //-> label_000000DB:
                    if ((var7 < var10)) 
                    {
                        var4 = (var6 + var4);
                        var5 = (0x1F & var6);
                        if ((0x1F & var6)) 
                        {
                            temp8 = mload((var4 - var5));
                            mstore((var4 - var5),(~(EXP(0x100,(0x20 - var5)) - 0x1) & temp8));
                            temp9 = (0x20 + (var4 - var5));
                            temp10 = mload(0x40);
                            RETURN(temp10,(temp9 - temp10));
                        }
                        else
                        {
                            temp7 = mload(0x40);
                            RETURN(temp7,(var4 - temp7));
                        }
                    }
                    else
                    {
                        temp11 = mload((var9 + var10));
                        mstore((var8 + var10),temp11);
                        var10 = (var10 + 0x20);
                        goto label_000000DB;
                    }
                }

                //ISSUE:COMMENT: Function approve()
                else if ((0x95EA7B3 == var0)) 
                {
                    var3 = (msg.data.length - 0x4);
                    require((0x40 < (msg.data.length - 0x4)));
                    var1 = approve(uint160(msg.data(0x4)),msg.data(0x24));
                    mstore(0x80,var1);
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function totalSupply()
                else if ((0x18160DDD == var0)) 
                {
                    var1 = totalSupply();
                    mstore(0x80,var1);
                    RETURN(0x80,0x20);
                }

                //ISSUE:COMMENT: Function gasprice_bit_ether()
                else if ((0x23B872DD == var0)) 
                {
                    var3 = (msg.data.length - 0x4);
                    require((0x60 < (msg.data.length - 0x4)));
                    var1 = gasprice_bit_ether(uint160(msg.data(0x4)),uint160(msg.data(0x24)),msg.data(0x44));
                    mstore(0xE0,var1);
                    RETURN(0xE0,0x20);
                }

                //ISSUE:COMMENT: Function decimals()
                else if ((0x313CE567 == var0)) 
                {
                    var1 = decimals();
                    mstore(0x80,uint8(uint8(var1)));
                    RETURN(0x80,0x20);
                }
                else
                {
                    goto label_000000A9;
                }
            }

            //ISSUE:COMMENT: Function increaseAllowance()
            else if ((0x39509351 == var0)) 
            {
                var3 = (msg.data.length - 0x4);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = increaseAllowance(uint160(msg.data(0x4)),msg.data(0x24));
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function balanceOf()
            else if ((0x70A08231 == var0)) 
            {
                var3 = (msg.data.length - 0x4);
                require((0x20 < (msg.data.length - 0x4)));
                var1 = balanceOf(uint160(msg.data(0x4)));
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function symbol()
            else if ((0x95D89B41 == var0)) 
            {
                (var0,var1) = symbol();
                var2 = mload(0x40);
                mstore(var2,0x20);
                temp39 = mload(var1);
                mstore((0x20 + var2),temp39);
                var4 = (0x20 + (0x20 + var2));
                temp40 = mload(var1);
                var6 = temp40;
                var7 = temp40;
                var8 = (0x20 + (0x20 + var2));
                var9 = (0x20 + var1);
                var10 = 0x0;
                                                                 //-> label_0000034A:
                if ((var7 < var10)) 
                {
                    var4 = (var6 + var4);
                    var5 = (0x1F & var6);
                    if ((0x1F & var6)) 
                    {
                        temp42 = mload((var4 - var5));
                        mstore((var4 - var5),(~(EXP(0x100,(0x20 - var5)) - 0x1) & temp42));
                        temp43 = (0x20 + (var4 - var5));
                        temp44 = mload(0x40);
                        RETURN(temp44,(temp43 - temp44));
                    }
                    else
                    {
                        temp41 = mload(0x40);
                        RETURN(temp41,(var4 - temp41));
                    }
                }
                else
                {
                    temp45 = mload((var9 + var10));
                    mstore((var8 + var10),temp45);
                    var10 = (var10 + 0x20);
                    goto label_0000034A;
                }
            }

            //ISSUE:COMMENT: Function decreaseAllowance()
            else if ((0xA457C2D7 == var0)) 
            {
                var3 = (msg.data.length - 0x4);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = decreaseAllowance(uint160(msg.data(0x4)),msg.data(0x24));
                mstore(0xE0,var1);
                RETURN(0xE0,0x20);
            }

            //ISSUE:COMMENT: Function many_msg_babbage()
            else if ((0xA9059CBB == var0)) 
            {
                var3 = (msg.data.length - 0x4);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = many_msg_babbage(uint160(msg.data(0x4)),msg.data(0x24));
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }

            //ISSUE:COMMENT: Function allowance()
            else if ((0xDD62ED3E == var0)) 
            {
                var3 = (msg.data.length - 0x4);
                require((0x40 < (msg.data.length - 0x4)));
                var1 = allowance(uint160(msg.data(0x4)),uint160(msg.data(0x24)));
                mstore(0x80,var1);
                RETURN(0x80,0x20);
            }
            else
            {
                goto label_000000A9;
            }
        }
    }

}
