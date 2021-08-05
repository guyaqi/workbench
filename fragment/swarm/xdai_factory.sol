contract disassembler {

    function ERC20Address() public return ()
    {
        return();
    }

    function master() public return ()
    {
        return();
    }

    function func_00000299( uint256 arg0) private return (var0) // 4
    {
        var10 = msg.data(arg0);
        require((msg.data(arg0) == (msg.data(arg0) & (SHL(0xA0,0x1) - 0x1))));
        return(var10);
    }

    function func_0000031C( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        mstore(arg2,((SHL(0xA0,0x1) - 0x1) & arg0));
        mstore((arg2 + 0x20),arg1);
        return((0x40 + arg2));
    }

    function func_000001EE( uint256 arg0,uint256 arg1) private return (var0)
    {
        temp2 = mload(0x40);
        mstore(temp2,SHL(0x60,0x3D602D80600A3D3981F3363D3D373D3D3D363D73));
        mstore((temp2 + 0x14),SHL(0x60,arg0));
        mstore((temp2 + 0x28),SHL(0x88,0x5AF43D82803E903D91602B57FD5BF3));
        var10 = create2(0x0,temp2,0x37,arg1);
        if ((create2(0x0,temp2,0x37,arg1) & (SHL(0xA0,0x1) - 0x1))) 
        {
            return(var10);
        }
        else
        {
            temp3 = mload(0x40);
            mstore(temp3,SHL(0xE5,0x461BCD));
            mstore((temp3 + 0x4),0x20);
            mstore((temp3 + 0x24),0x17);
            mstore((temp3 + 0x44),0x455243313136373A2063726561746532206661696C6564000000000000000000);
            temp4 = mload(0x40);
            revert(temp4,(0x64 + (temp3 - temp4)));
        }
    }

    function func_00000335( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) private return (var0)
    {
        mstore(arg3,((SHL(0xA0,0x1) - 0x1) & arg0));
        mstore((arg3 + 0x20),((SHL(0xA0,0x1) - 0x1) & arg1));
        mstore((arg3 + 0x40),arg2);
        return((0x60 + arg3));
    }

    function func_00000308( uint256 arg0,uint256 arg1) private return (var0)
    {
        mstore(arg1,((SHL(0xA0,0x1) - 0x1) & arg0));
        return((0x20 + arg1));
    }

    function func_000000AA( uint256 arg0,uint256 arg1,uint256 arg2) private return (var0)
    {
        var9 = func_0000031C(msg.sender,arg2,0xA0);
        mstore(0x80,((var9 - 0x80) - 0x20));
        mstore(0x40,var9);
        temp0 = mload(0x80);
        temp1 = keccak256(0xA0,temp0);
        var7 = func_000001EE(((SHL(0xA0,0x1) - 0x1) & sload(0x2)),temp1);
        var9 = mload(0x40);
        mstore(var9,SHL(0xE1,0x43431F63));
        var6 = var7;
        var7 = (var7 & (SHL(0xA0,0x1) - 0x1));
        var9 = func_00000335(arg0,(sload(0x1) & (SHL(0xA0,0x1) - 0x1)),arg1,(0x4 + var9));
        var11 = mload(0x40);
        var12 = (var9 - var11);
        var13 = var11;
        var15 = var7;
        var16 = (extcodesize(var7) == 0);
        require(extcodesize(var7));
        var10 = var15.call(var13,var12);
        var10 = (var10 == 0);
        if (var10) 
        {
            returndatacopy(0x0,0x0,returndatasize);
            revert(0x0,returndatasize);
        }
        else
        {
            func_000001CA[(var6 & (SHL(0xA0,0x1) - 0x1))] = 0x1;
            temp10 = mload(0x40);
            var8 = func_00000308(var6,temp10);
            temp11 = mload(0x40);
            temp12 = (var8 - temp11);
            log(temp11,temp12,0xC0FFC525A1C7689549D7F79B49ECA900E61AC49B43D977F680BCC3B36224C004);
            return(var6);
        }
    }

    mapping(address => uint8) public func_000001CA

    function main() public return ()
    {
        mstore(0x40,0x80);
        var0 = msg.value;
        require(!msg.value);
        if ((msg.data.length < 0x4)) 
        {
label_0000004C:
            revert(0x0,0x0);
        }
        else
        {
            var0 = SHR(0xE0,msg.data(0x0));

            //ISSUE:COMMENT: Function FUNC_15EFD8A7()
            if ((0x15EFD8A7 == SHR(0xE0,msg.data(0x0)))) 
            {
                require(!SLT((msg.data.length - 0x4),0x60));
                var8 = func_00000299(0x4); // issuer
                var1 = func_000000AA(var8,msg.data(0x24),msg.data(0x44));
label_00000064:
                temp13 = mload(0x40);
                var1 = func_00000308(var1,temp13);
label_00000071:
                temp14 = mload(0x40);
                temp15 = (var1 - temp14);
                RETURN(temp14,temp15);
            }

            //ISSUE:COMMENT: Function ERC20Address()
            else if ((0xA6021ACE == var0)) 
            {
                var1 = 0x64;
                ERC20Address();
                goto label_00000064;
            }

            //ISSUE:COMMENT: Function FUNC_C70242AD()
            else if ((0xC70242AD == var0)) 
            {
                var1 = 0x95;
                require(!SLT((msg.data.length - 0x4),0x20));
                var6 = func_00000299(0x4);
                var2 = func_000001CA(var6);
                mstore(0x80,var2);
                goto label_00000071;
            }

            //ISSUE:COMMENT: Function master()
            else if ((0xEE97F7F3 == var0)) 
            {
                var1 = 0x64;
                master();
                goto label_00000064;
            }
            else
            {
                goto label_0000004C;
            }
        }
    }

}
