contract disassembler {

  address public manager;
  address public owner;
  mapping(address => uint160) public MAPPING_0AEBACE4;

  // 合约中出现的常量地址
  address constant ADDRESS_OWNER = 0x50D1B550F854B785CEDF754114E28D496C8A89C1;
  address constant ADDRESS_WETH = 0xC02AAA39B223FE8D0A0E5C4F27EAD9083C756CC2;
  address constant ADDRESS_01 = 0xDD07249E403979BD79848C27AA5454C7E66BDEE7;
  address constant ADDRESS_02 = 0xDAE238A5D94A39E10594FE4A7F96EF4B83C01899;
  address constant ADDRESS_03 = 0xE73C1E4D7992A4A4F19F31531AE7B5DC352B74B0;

  // 合约变量列表
  address storage_00_selfdestruct_target; // 自毁返还目标
  address storage_01_someaddr; // ！！！未知用途
  // 02 unused
  uint storage_03_somevalue; //  ！！！未知用途
  uint storage_04_somevalue; //  ！！！未知用途
  bool storage_05_initialized; // 合约是否初始化

  // 映射
  mapping(address => bool) admin; // 原：mapping_0x2 用于权限控制

  function FUNC_00000003(uint256 arg0) public returns ()
  {
    require(
      ADDRESS_01 != msg.sender ||
      ADDRESS_02 != msg.sender ||
      ADDRESS_03 != msg.sender ||
      admin[msg.sender]
    );

    var3 = gasleft;
    mstore(0xA0,SHL(0xF8,uint8(uint8(SHR(0xB0,arg0)))));
    mstore(0x80,0x1);
    mstore(0x40,0xA1);
    temp1 = keccak256(0xA0,mload(0x80));
    var4 = XOR(arg0,temp1);
    address pair_contract = SHR(0x8, var4);

    // 0x0902F1AC is selector of getReserves()
    mstore(0xA1,SHL(0xE0,0x902F1AC));

    // require it is a contract
    require(extcodesize(pair_contract) > 0);

    require(delegatecall(gasleft,pair_contract,0xA1,0x4,0xA1,0x60)) // !!! require success

    address reserve0 = mload(0xA1);
    address reserve1 = mload(0xC1);

    if ((0x0 == uint8((uint8(SHR(0xA8,var4)) / 0xA)))) 
    {
      var7 = reserve0;
      reserve0 = var7;
      var8 = ((uint32(SHR(0xB8,var4)) * 0x38D7EA4C68000) < var7);
      if (((uint32(SHR(0xB8,var4)) * 0x38D7EA4C68000) < var7)) 
      {
        goto label_00000AED;
      }
      else
      {
        goto label_00000AE2;
      }
    }
    else
    {
      var8 = ((uint32(SHR(0xB8,var4)) * 0x38D7EA4C68000) < reserve0);
      if (((uint32(SHR(0xB8,var4)) * 0x38D7EA4C68000) < reserve0)) 
      {
        if (var8) 
        {
                                        //-> label_00000AF3:
            goto label_00000B79;
        }
        else
        {
                                        //-> label_00000AFB:
          var8 = (0x38D7EA4C68000 * (0xFFFFFF & (SHR(0xE8,var4) / 0x10)));
          var9 = (0x38D7EA4C68000 * uint32(SHR(0xB8,var4)));
          var10 = ((((0xFFFFFF & SHR(0xD4,var4)) / 0x10) & 0xFFFFFF) * 0x38D7EA4C68000);
          if ((((0x38D7EA4C68000 * uint32(SHR(0xB8,var4))) + ((((0xFFFFFF & SHR(0xD4,var4)) / 0x10) & 0xFFFFFF) * 0x38D7EA4C68000)) > ((0x38D7EA4C68000 * (0xFFFFFF & (SHR(0xE8,var4) / 0x10))) + reserve0))) 
          {
            var12 = var8;
                                    //-> label_00000B49:
            var17 = func_00002548(var12,reserve0,var7);
            var11 = func_00002571(pair_contract,(uint8(SHR(0xA8,var4)) / 0xA),MOD(uint8(SHR(0xA8,var4)),0xA),var12,var17);
                                    //-> label_00000B79:
            if (this.gasprice >= 500000000000) 
            {
              var3 = func_000027AA(((0xE56A + ((var3 - gasleft) + (msg.data.length * 0x10))) / 0xA4A6));
            }
            return;
          }
          else
          {
            var12 = ((var9 + var10) - reserve0);
            goto label_00000B49;
          }
        }
      }
      else
      {
                                          //-> label_00000AE2:
          var8 = (MOD(block.number,0x64) < uint8(var4));
                                          //-> label_00000AED:
          if (var8) 
          {
              goto label_00000AF3;
          }
          else
          {
              goto label_00000AFB;
          }
      }
    }
  }

  function FUNC_0000000F() public returns ()
  {
      storage_04_somevalue += 1;
      mstore(0x80,0xFF000000000000084E91743124A982076C59F100840000000000000000000000);
      mstore(0xB5,0x17F2C5B31E6FFC755997E952174FC537025E254986B5630BBADD188E008F2E93);
      mstore(0x95,storage_04_somevalue);
      temp14 = keccak256(0x80,0x55);

      //ISSUE:Medium:Return values of external calls are not checked
      temp14.call.value(msg.value)(msg.value,msg.value,msg.value,msg.value);
  }

  function FUNC_009952EB( uint256 arg0,uint256 arg1) public returns ()
  {
      var2 = arg0;
      var3 = arg1;
      var4 = (ADDRESS_01 == msg.sender);
      if ((ADDRESS_01 == msg.sender)) 
      {
          if (var4) 
          {
              if (var4) 
              {
                  if (var4) 
                  {
                                                                  //-> label_00000C8B:
                      mstore(0xA0,(SHL(0xA0,var2) & 0xFF00000000000000000000000000000000000000000000000000000000000000));
                      mstore(0x80,0x1);
                      mstore(0x40,0xA1);
                      temp15 = mload(0x80);
                      temp16 = keccak256(0xA0,temp15);
                      var5 = temp16;
                      var4 = gasleft;
                      if (((XOR(temp16,var3) & 0xFFFFFFFFFFFFFFFFFFFFFFFF) == balance(SHR(0x60,XOR(temp16,var3))))) 
                      {
                          goto label_00000D1A;
                      }
                      else
                      {
                          var7 = func_00002827(SHR(0x60,XOR(var5,var2)),SHR(0x50,XOR(var5,var2)));
                                                                  //-> label_00000D1A:
                          // return when gp < 500gwei
                          if (this.gasprice >= 0x746A528800) 
                          {
                              var7 = (0xE56A + ((var4 - gasleft) + (msg.data.length * 0x10)));
                              assert(0xA4A6);
                              var4 = func_000027AA(var7 / 0xA4A6);
                          }
                          return();
                      }
                  }
                  else
                  {
                                                                  //-> label_00000C87:
                      revert(0x0,0x0);
                  }
              }
              else
              {
                                                                  //-> label_00000C6E:
                  var4 = uint8(admin[msg.sender]);
                                                                  //-> label_00000C82:
                  if (var4) 
                  {
                      goto label_00000C8B;
                  }
                  else
                  {
                      goto label_00000C87;
                  }
              }
          }
          else
          {
                                                                  //-> label_00000C50:
              var4 = (ADDRESS_02 == msg.sender);
                                                                  //-> label_00000C68:
              if (var4) 
              {
                  goto label_00000C82;
              }
              else
              {
                  goto label_00000C6E;
              }
          }
      }
      else
      {
          var4 = (ADDRESS_03 == msg.sender);
          if ((ADDRESS_03 == msg.sender)) 
          {
              goto label_00000C68;
          }
          else
          {
              goto label_00000C50;
          }
      }
  }

  function FUNC_02A73DF0( uint256 arg0,uint256 arg1) public returns ()
  {
      require(msg.sender == manager);
      storage_03_somevalue = arg1;
      storage_04_somevalue = arg0;
      return();
  }

  function FUNC_104971C2( uint256 arg0,uint256 arg1,uint256 arg2) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0x80,0x200000000000000000000000000000000000000000000000000000000);
      mstore(0x84,uint160(arg0));
      mstore(0xA4,msg.sender);
      mstore(0xC4,arg2);
      var13 = uint160(arg1);
      var14 = (extcodesize(uint160(arg1)) == 0);
      require(extcodesize(uint160(arg1)));

      //ISSUE:COMMENT: External call: razor_balance(uint160(arg0),msg.sender,arg2)
      var8 = var13.call(0x80,0x64);
      var8 = (var8 == 0);
      if (var8) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          return();
      }
  }

  // FUNC_2EA9622E 用于批量设置地址的访问权限
  function setAdminBatch(address[] memory accounts, bool available) public returns ()
  {
      require(msg.sender == manager);
      for (uint i=0;i<accounts.length;i++) {
        admin[i] = available;
      }
  }

  function FUNC_363CE139() public returns (var0,var1)
  {
      return(storage_03_somevalue,storage_04_somevalue);
  }

  function FUNC_3A293885( uint256 arg0) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0x80,0x70A0823100000000000000000000000000000000000000000000000000000000);
      mstore(0x84,this.address);
      var13 = (extcodesize(ADDRESS_WETH) == 0);
      require(extcodesize(ADDRESS_WETH));
      if (delegatecall(gasleft,ADDRESS_WETH,0x80,0x24,0x80,0x20)) 
      {
          require((0x20 < returndatasize));
          temp57 = mload(0x80);
          var4 = min(temp57,arg0);
          var3 = var4;
          var4 = uint160(ADDRESS_WETH);
          mstore(0x80,SHL(0xE0,0x2E1A7D4D));
          mstore(0x84,var4);
          var12 = uint160(ADDRESS_WETH);
          require(extcodesize(uint160(ADDRESS_WETH)));
          var7 = var12.call(0x80,0x24);
          var7 = (var7 == 0);
          if (var7) 
          {
              returndatacopy(0x0,0x0,returndatasize);
              revert(0x0,returndatasize);
          }
          else
          {
              var8 = uint160(owner).call.gas((0x8FC * (var3 == 0))).value(var3)(0x80,0x0);
              if (var8) 
              {
                  return();
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

  function FUNC_42422ED9( uint256 arg0,uint256 arg1) public returns ()
  {
      var2 = arg0;
      var3 = arg1;
      var4 = (ADDRESS_01 == msg.sender);
      if ((ADDRESS_01 == msg.sender)) 
      {
          if (var4) 
          {
              if (var4) 
              {
                  if (var4) 
                  {
                                                                  //-> label_00001109:
                      mstore(0xA0,(SHL(0xA0,var2) & 0xFF00000000000000000000000000000000000000000000000000000000000000));
                      mstore(0x80,0x1);
                      mstore(0x40,0xA1);
                      temp59 = mload(0x80);
                      temp60 = keccak256(0xA0,temp59);
                      var4 = gasleft;
                      var6 = SHR(0x60,XOR(var2,temp60));
                      var8 = func_00002E5E(SHR(0x60,XOR(var2,temp60)));
                      mstore(0xA1,0xA9059CBB00000000000000000000000000000000000000000000000000000000);
                      mstore(0xA5,uint160(var8));
                      mstore(0xC5,var3);
                      var7 = var8;
                      require(extcodesize(ADDRESS_WETH));

                      //ISSUE:COMMENT: External call: many_msg_babbage(uint160(var8),var3)
                      var11 = ADDRESS_WETH.call(0xA1,0x44,0xA1,0x20);
                      var11 = (var11 == 0);
                      if (var11) 
                      {
                          returndatacopy(0x0,0x0,returndatasize);
                          revert(0x0,returndatasize);
                      }
                      else
                      {
                          require((0x20 < returndatasize));
                          var11 = getReserve(var7,var6);
                          var11 = func_00002548(var3,0x1233,var11);
                          var10 = var11;
                          if ((ADDRESS_WETH < uint160(var6))) 
                          {
                              var13 = 0x0;
                              var14 = var10;
                                                                  //-> label_00001286:
                              var13 = uint160(var7);
                              var14 = 0x22C0D9F;
                              var15 = var13;
                              var16 = var14;
                              var17 = this.address;
                              var18 = 0xA1;
                              mstore(0xA1,0x0);
                              mstore(0x40,(0xA1 + (0x20 + (~0x1F & 0x1F))));
                              if (0x0) 
                              {
                                  callcodecopy(0xC1,code.size,0x0);
                                  temp76 = mload(0x40);
                                  mstore(temp76,SHL(0xE0,0x22C0D9F));
                                  var19 = (0x4 + temp76);
                                  mstore((0x4 + temp76),var15);
                                  mstore((0x20 + (0x4 + temp76)),var16);
                                  mstore((0x20 + (0x20 + (0x4 + temp76))),uint160(uint160(var17)));
                                  var20 = (0x20 + (0x20 + (0x20 + (0x4 + temp76))));
                                  mstore((0x20 + (0x20 + (0x20 + (0x4 + temp76)))),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp76))))) - (0x4 + temp76)));
                                  temp77 = mload(0xA1);
                                  mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp76))))),temp77);
                                  var21 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp76))))));
                                  temp78 = mload(0xA1);
                                  var23 = temp78;
                                  var24 = temp78;
                                  var25 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp76))))));
                                  var26 = 0xC1;
                                  var27 = 0x0;
                                  if ((temp78 < 0x0)) 
                                  {
                                      goto label_00001360;
                                  }
                                  else
                                  {
                                      goto label_00001351;
                                  }
                              }
                              else
                              {
                                  temp62 = mload(0x40);
                                  mstore(temp62,SHL(0xE0,0x22C0D9F));
                                  mstore((0x4 + temp62),var15);
                                  mstore((0x20 + (0x4 + temp62)),var16);
                                  mstore((0x20 + (0x20 + (0x4 + temp62))),uint160(uint160(var17)));
                                  mstore((0x20 + (0x20 + (0x20 + (0x4 + temp62)))),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp62))))) - (0x4 + temp62)));
                                  temp63 = mload(0xA1);
                                  mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp62))))),temp63);
                                  var21 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp62))))));
                                  temp64 = mload(0xA1);
                                  var23 = temp64;
                                  var24 = temp64;
                                  var25 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp62))))));
                                  var26 = 0xC1;
                                  var27 = 0x0;
                                                                  //-> label_00001348:
                                  if ((var24 < var27)) 
                                  {
                                                                  //-> label_00001360:
                                      var21 = (var23 + var21);
                                      var22 = (0x1F & var23);
                                      if ((0x1F & var23)) 
                                      {
                                          temp72 = mload((var21 - var22));
                                          mstore((var21 - var22),(~(EXP(0x100,(0x20 - var22)) - 0x1) & temp72));
                                          temp73 = (0x20 + (var21 - var22));
                                          var16 = 0x0;
                                          var17 = mload(0x40);
                                          var18 = (temp73 - var17);
                                          var19 = var17;
                                          var20 = 0x0;
                                          var21 = var13;
                                          if (extcodesize(var13)) 
                                          {
                                              goto label_000013AF;
                                          }
                                          else
                                          {
                                              goto label_000013AB;
                                          }
                                      }
                                      else
                                      {
                                          var16 = 0x0;
                                          var17 = mload(0x40);
                                          var18 = (var21 - var17);
                                          var19 = var17;
                                          var20 = 0x0;
                                          var21 = var13;
                                          if (extcodesize(var13)) 
                                          {
                                                                  //-> label_000013AF:
                                              var16 = var21.call.value(var20)(var19,var18,var17,var16);
                                              var16 = (var16 == 0);
                                              if (var16) 
                                              {
                                                  returndatacopy(0x0,0x0,returndatasize);
                                                  revert(0x0,returndatasize);
                                              }
                                              else
                                              {
                                                  temp67 = mload(0x40);
                                                  mstore(temp67,0x70A0823100000000000000000000000000000000000000000000000000000000);
                                                  mstore((temp67 + 0x4),this.address);
                                                  temp68 = mload(0x40);
                                                  var16 = (temp67 + 0x24);
                                                  var18 = temp68;
                                                  var19 = ((temp67 - temp68) + 0x24);
                                                  var20 = temp68;
                                                  var21 = uint160(var6);
                                                  require(extcodesize(uint160(var6)));
                                                  var17 = (delegatecall(gasleft,var21,var20,var19,var18,0x20) == 0);
                                                  if (delegatecall(gasleft,var21,var20,var19,var18,0x20)) 
                                                  {
                                                      var14 = mload(0x40);
                                                      require((0x20 < returndatasize));
                                                      temp69 = mload(var14);
                                                      if ((temp69 > 0x1)) 
                                                      {
                                                          if ((uint64(0x746A528800) > this.gasprice)) 
                                                          {
                                                                  //-> label_00000D40:
                                                              return();
                                                          }
                                                          else
                                                          {
                                                              var7 = (0xE56A + ((var4 - gasleft) + (msg.data.length * 0x10)));
                                                              assert(0xA4A6);
                                                              var4 = func_000027AA((var7 / 0xA4A6));
                                                              goto label_00000D40;
                                                          }
                                                      }
                                                      else
                                                      {
                                                          temp70 = mload(0x40);
                                                          mstore(temp70,0x8C379A000000000000000000000000000000000000000000000000000000000);
                                                          mstore((temp70 + 0x4),0x20);
                                                          mstore((temp70 + 0x24),0x3);
                                                          mstore((temp70 + 0x44),0x4E54460000000000000000000000000000000000000000000000000000000000);
                                                          temp71 = mload(0x40);
                                                          revert(temp71,(0x64 + (temp70 - temp71)));
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
                                                                  //-> label_000013AB:
                                              revert(0x0,0x0);
                                          }
                                      }
                                  }
                                  else
                                  {
                                                                  //-> label_00001351:
                                      temp75 = mload((var27 + var26));
                                      mstore((var27 + var25),temp75);
                                      var27 = (0x20 + var27);
                                      goto label_00001348;
                                  }
                              }
                          }
                          else
                          {
                              var13 = var10;
                              var14 = 0x0;
                              goto label_00001286;
                          }
                      }
                  }
                  else
                  {
                                                                  //-> label_00001105:
                      revert(0x0,0x0);
                  }
              }
              else
              {
                                                                  //-> label_000010EC:
                  var4 = uint8(admin[msg.sender]);
                                                                  //-> label_00001100:
                  if (var4) 
                  {
                      goto label_00001109;
                  }
                  else
                  {
                      goto label_00001105;
                  }
              }
          }
          else
          {
                                                                  //-> label_000010CE:
              var4 = (ADDRESS_02 == msg.sender);
                                                                  //-> label_000010E6:
              if (var4) 
              {
                  goto label_00001100;
              }
              else
              {
                  goto label_000010EC;
              }
          }
      }
      else
      {
          var4 = (ADDRESS_03 == msg.sender);
          if ((ADDRESS_03 == msg.sender)) 
          {
              goto label_000010E6;
          }
          else
          {
              goto label_000010CE;
          }
      }
  }

  function FUNC_47715D18( uint256 arg0) public returns ()
  {
      require(msg.sender == manager);
      require((uint8(arg0) > 0x0));
      var4 = func_000030AE(0x80);
      var4 = create(0x0,0x80,(var4 - 0x80));
      if (var4) 
      {
          temp82 = (uint160(var4) | (0xFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000 & MAPPING_0AEBACE4[uint8(arg0)]));
          MAPPING_0AEBACE4[uint8(arg0)] = temp82;
          return();
      }
      else
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
  }

  function FUNC_4955BAE6() public returns ()
  {
      mstore(0x80,SHL(0xE0,0xD0E30DB0));
      var10 = msg.value;
      var11 = uint160(ADDRESS_WETH);
      var12 = (extcodesize(uint160(ADDRESS_WETH)) == 0);
      require(extcodesize(uint160(ADDRESS_WETH)));
      var6 = var11.call.value(var10)(0x80,0x4);
      var6 = (var6 == 0);
      if (var6) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          return();
      }
  }

  function transferOwner(address ownerNext) public
  {
      require(msg.sender == owner);
      require(ownerNext != address(0));
      owner = ownerNext;
  }

  function FUNC_578E4B23( uint256 arg0) public returns ()
  {
      var2 = arg0;
      var3 = (ADDRESS_01 == msg.sender);
      if ((ADDRESS_01 == msg.sender)) 
      {
          if (var3) 
          {
              if (var3) 
              {
                  if (var3) 
                  {
                                                                  //-> label_000017CC:
                      mstore(0xA0,(SHL(0xA0,var2) & 0xFF00000000000000000000000000000000000000000000000000000000000000));
                      mstore(0x80,0x1);
                      mstore(0x40,0xA1);
                      temp84 = mload(0x80);
                      temp85 = keccak256(0xA0,temp84);
                      var3 = gasleft;
                      var4 = func_00002827(SHR(0x60,XOR(var2,temp85)),SHR(0x50,XOR(var2,temp85)));
                      if ((0x746A528800 > this.gasprice)) 
                      {
                                                                  //-> label_00000BA5:
                          return();
                      }
                      else
                      {
                          var6 = (0xE56A + ((var3 - gasleft) + (msg.data.length * 0x10)));
                          assert(0xA4A6);
                          var3 = func_000027AA((var6 / 0xA4A6));
                          goto label_00000BA5;
                      }
                  }
                  else
                  {
                                                                  //-> label_000017C8:
                      revert(0x0,0x0);
                  }
              }
              else
              {
                                                                  //-> label_000017AF:
                  var3 = uint8(admin[msg.sender]);
                                                                  //-> label_000017C3:
                  if (var3) 
                  {
                      goto label_000017CC;
                  }
                  else
                  {
                      goto label_000017C8;
                  }
              }
          }
          else
          {
                                                                  //-> label_00001791:
              var3 = (ADDRESS_02 == msg.sender);
                                                                  //-> label_000017A9:
              if (var3) 
              {
                  goto label_000017C3;
              }
              else
              {
                  goto label_000017AF;
              }
          }
      }
      else
      {
          var3 = (ADDRESS_03 == msg.sender);
          if ((ADDRESS_03 == msg.sender)) 
          {
              goto label_000017A9;
          }
          else
          {
              goto label_00001791;
          }
      }
  }

  function FUNC_58D4696C( uint256 arg0) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0x80,SHL(0xE0,0x84B366DC));
      var11 = uint160(arg0);
      var12 = (extcodesize(uint160(arg0)) == 0);
      require(extcodesize(uint160(arg0)));
      var6 = var11.call(0x80,0x4);
      var6 = (var6 == 0);
      if (var6) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          return();
      }
  }

  function FUNC_664C7734( uint256 arg0,uint256 arg1,uint256 arg2) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0x80,0x9B593FB100000000000000000000000000000000000000000000000000000000);
      mstore(0x84,uint160(arg0));
      mstore(0xA4,msg.sender);
      mstore(0xC4,arg2);
      var13 = uint160(arg1);
      var14 = (extcodesize(uint160(arg1)) == 0);
      require(extcodesize(uint160(arg1)));

      //ISSUE:COMMENT: External call: FUNC_9B593FB1(uint160(arg0),msg.sender,arg2)
      var8 = var13.call(0x80,0x64);
      var8 = (var8 == 0);
      if (var8) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          return();
      }
  }

  function FUNC_737FA33D( uint256 arg0,uint256 arg1) public returns (var0)
  {
      mstore(0x80,0x70A0823100000000000000000000000000000000000000000000000000000000);
      mstore(0x84,uint160(MAPPING_0AEBACE4[uint8(arg0)]));
      var12 = uint160(arg1);
      var13 = (extcodesize(uint160(arg1)) == 0);
      require(extcodesize(uint160(arg1)));
      if (delegatecall(gasleft,var12,0x80,0x24,0x80,0x20)) 
      {
          require((0x20 < returndatasize));
          temp90 = mload(0x80);
          return(temp90);
      }
      else
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
  }

  function FUNC_79B0BA0B( uint256 arg0,uint256 arg1,uint256 arg2) public returns ()
  {
      var2 = arg0;
      var3 = arg1;
      var4 = arg2;
      var5 = (ADDRESS_01 == msg.sender);
      if ((ADDRESS_01 == msg.sender)) 
      {
          if (var5) 
          {
              if (var5) 
              {
                  if (var5) 
                  {
                                                                  //-> label_00001A8E:
                      mstore(0xA0,(SHL(0xA0,var2) & 0xFF00000000000000000000000000000000000000000000000000000000000000));
                      mstore(0x80,0x1);
                      mstore(0x40,0xA1);
                      temp91 = mload(0x80);
                      temp92 = keccak256(0xA0,temp91);
                      mstore(0xA1,0x70A0823100000000000000000000000000000000000000000000000000000000);
                      mstore(0xA5,uint160(XOR(temp92,var3)));
                      var5 = gasleft;
                      var7 = XOR(var2,temp92);
                      var8 = XOR(temp92,var4);
                      var14 = ((0x80 - 0xA1) + 0x45);
                      var16 = SHR(0x60,XOR(var2,temp92));
                      require(extcodesize(SHR(0x60,XOR(var2,temp92))));
                      if (delegatecall(gasleft,var16,0xA1,var14,0xA1,0x20)) 
                      {
                          require((0x20 < returndatasize));
                          temp93 = mload(0xA1);
                          if ((temp93 > var8)) 
                          {
                              var7 = func_00002827(SHR(0x60,var7),SHR(0x50,var7));
                                                                  //-> label_00001BA6:
                              if ((0x746A528800 > this.gasprice)) 
                              {
                                                                  //-> label_00001BCC:
                                  return();
                              }
                              else
                              {
                                  var8 = (0xE56A + ((var5 - gasleft) + (msg.data.length * 0x10)));
                                  assert(0xA4A6);
                                  var5 = func_000027AA((var8 / 0xA4A6));
                                  goto label_00001BCC;
                              }
                          }
                          else
                          {
                              goto label_00001BA6;
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
                                                                  //-> label_00001A8A:
                      revert(0x0,0x0);
                  }
              }
              else
              {
                                                                  //-> label_00001A71:
                  var5 = uint8(admin[msg.sender]);
                                                                  //-> label_00001A85:
                  if (var5) 
                  {
                      goto label_00001A8E;
                  }
                  else
                  {
                      goto label_00001A8A;
                  }
              }
          }
          else
          {
                                                                  //-> label_00001A53:
              var5 = (ADDRESS_02 == msg.sender);
                                                                  //-> label_00001A6B:
              if (var5) 
              {
                  goto label_00001A85;
              }
              else
              {
                  goto label_00001A71;
              }
          }
      }
      else
      {
          var5 = (ADDRESS_03 == msg.sender);
          if ((ADDRESS_03 == msg.sender)) 
          {
              goto label_00001A6B;
          }
          else
          {
              goto label_00001A53;
          }
      }
  }

  function FUNC_7B80EC8C( uint256 arg0,uint256 arg1) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0xA4,msg.sender);
      mstore(0xC4,arg1);
      mstore(0x80,0x44);
      mstore(0x40,0xE4);
      temp95 = mload(0xA0);
      mstore(0xA0,(0xA9059CBB00000000000000000000000000000000000000000000000000000000 | (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF & temp95)));
      temp96 = mload(0x80);
      var4 = uint160(arg0);
      var9 = temp96;
      var7 = 0xE4;
      var10 = temp96;
      var11 = 0xE4;
      var12 = 0xA0;
                                                                  //-> label_00001C83:
      if ((var10 < 0x20)) 
      {
          temp97 = mload(var12);
          temp98 = mload(var11);
          mstore(var11,((temp97 & ~(EXP(0x100,(0x20 - var10)) - 0x1)) | (temp98 & (EXP(0x100,(0x20 - var10)) - 0x1))));
          temp99 = (var9 + var7);
          var6 = var4.call(0xE4,(temp99 - 0xE4));
          var4 = var6;
          if ((returndatasize == 0x0)) 
          {
                                                                  //-> label_000016C4:
              return();
          }
          else
          {
              mstore(0x40,(0xE4 + ((returndatasize + 0x3F) & ~0x1F)));
              mstore(0xE4,returndatasize);
              returndatacopy(0x104,0x0,returndatasize);
              goto label_000016C4;
          }
      }
      else
      {
          temp100 = mload(var12);
          mstore(var11,temp100);
          var10 = (var10 + 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0);
          var11 = (0x20 + var11);
          var12 = (0x20 + var12);
          goto label_00001C83;
      }
  }

  function FUNC_98061191( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) public returns ()
  {
      var2 = arg0;
      var3 = arg1;
      var4 = arg2;
      var5 = arg3;
      require((msg.sender == uint160(manager)));
      mstore(0x80,SHL(0xE0,0x2E1A7D4D));
      mstore(0x84,arg4);
      var15 = uint160(ADDRESS_WETH);
      var16 = (extcodesize(uint160(ADDRESS_WETH)) == 0);
      require(extcodesize(uint160(ADDRESS_WETH)));
      var10 = var15.call(0x80,0x24);
      var10 = (var10 == 0);
      if (var10) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          var7 = 0x0;
                                                                  //-> label_00001DE5:
          if ((var3 < var7)) 
          {
              return();
          }
          else
          {
              var10 = var2;
              var12 = var7;
              assert((var7 < var3));
              temp107 = uint160(msg.data(((0x20 * var12) + var10)));
              require(uint8(admin[temp107]));
              var8 = var2;
              var10 = var7;
              assert((var7 < var3));
              var8 = uint160(uint160(msg.data(((0x20 * var10) + var8))));
              var10 = var4;
              var12 = var7;
              assert((var7 < var5));
              temp109 = msg.data(((0x20 * var12) + var10));
              var12 = var8.call.gas(((temp109 == 0) * 0x8FC)).value(temp109)(0x80,0x0);
              if (var12) 
              {
                  var7 = (0x1 + var7);
                  goto label_00001DE5;
              }
              else
              {
                  returndatacopy(0x0,0x0,returndatasize);
                  revert(0x0,returndatasize);
              }
          }
      }
  }
  

  function initialize(address manager_) public returns ()
  {
      require(!storage_05_initialized);
      owner = ADDRESS_OWNER;
      manager = manager_;
      admin[manager] = true;
      mstore(0x0,0x0);
      mstore(0x20,0x6);
      sstore(0x54CDD369E4E8A8515E52CA72EC816C2101831AD1F18BF44102ED171459C9B4F8,(this.address | (0xFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000 & sload(0x54CDD369E4E8A8515E52CA72EC816C2101831AD1F18BF44102ED171459C9B4F8))));
      storage_05_initialized = true;
  }

  function FUNC_CCC39909( uint256 arg0) public returns ()
  {
      require((msg.sender == uint160(owner)));
      require(uint160(arg0));
      manager = (uint160(arg0) | (0xFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000 & manager));
      return();
  }

  function FUNC_CEACD85B( uint256 arg0,uint256 arg1) public returns ()
  {
      require((msg.sender == uint160(manager)));
      mstore(0x80,0xA9059CBB00000000000000000000000000000000000000000000000000000000);
      mstore(0x84,msg.sender);
      mstore(0xA4,arg1);
      var12 = uint160(arg0);
      var13 = (extcodesize(uint160(arg0)) == 0);
      require(extcodesize(uint160(arg0)));

      //ISSUE:COMMENT: External call: many_msg_babbage(msg.sender,arg1)
      var7 = var12.call(0x80,0x44,0x80,0x20);
      var7 = (var7 == 0);
      if (var7) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          require((0x20 < returndatasize));
          return();
      }
  }

  function FUNC_D576CD38() public returns (var0)
  {
      return((storage_03_somevalue - storage_04_somevalue));
  }

  function FUNC_D6C1A7FD( uint256 arg0) public returns ()
  {
      var2 = arg0;
      var3 = storage_03_somevalue;
      mstore(msg.value,0x746D084E91743124A982076C59F100843318585733FF6000526015600BF30000);
      var4 = (arg0 / 0x20);
                                                                  //-> label_0000213A:
      if (var4) 
      {
          var3 = (0x20 + var3);
          var4 = (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF + var4);
          goto label_0000213A;
      }
      else
      {
          var4 = (var2 & 0x1F);
                                                                  //-> label_000022B1:
          if (var4) 
          {
              var3 = (0x1 + var3);
              var4 = (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF + var4);
              goto label_000022B1;
          }
          else
          {
            storage_03_somevalue = var3;
              return();
          }
      }
  }

  function FUNC_FF1CDCBF( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3) public returns ()
  {
      var2 = arg0;
      var3 = arg1;
      var4 = arg2;
      var5 = arg3;
      require((msg.sender == uint160(manager)));
      var6 = 0x0;
                                                                  //-> label_0000247B:
      if ((var3 < var6)) 
      {
          return();
      }
      else
      {
          var8 = var2;
          var10 = var6;
          assert((var6 < var3));
          temp119 = uint8(uint8(msg.data(((0x20 * var10) + var8))));
          require((temp119 > 0x0));
          var7 = var4;
          var9 = var6;
          assert((var6 < var5));
          var7 = uint160(msg.data(((0x20 * var9) + var7)));
          var10 = var2;
          var12 = var6;
          assert((var6 < var3));
          temp120 = uint8(msg.data(((0x20 * var12) + var10)));
          temp122 = uint160(var7);
          MAPPING_0AEBACE4[temp120] = (temp122 | (0xFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000 & MAPPING_0AEBACE4[temp120]));
          var6 = (0x1 + var6);
          goto label_0000247B;
      }
  }

  // arg0: 没有收手续费的amountOut, 只有这个数值会乘997
  // arg1: amountIn
  // arg2: ??
  // return: ??
  function func_00002548(uint256 arg0,uint256 arg1,uint256 arg2) private returns (var0)
  {
    var25 = (arg0 * 997) + (arg1 * 1000);
    var26 = (arg0 * arg2) * 997;
    assert(((arg0 * 997) + (arg1 * 1000)));
    return var26 / var25;
  }

  function func_00002571( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) private returns (var0)
  {
      var13 = arg0;
      var15 = arg2;
      mstore(0xA1,0xA9059CBB00000000000000000000000000000000000000000000000000000000);
      mstore(0xA5,uint160(arg0));
      mstore(0xC5,arg3);
      var27 = (extcodesize(ADDRESS_WETH) == 0);
      require(extcodesize(ADDRESS_WETH));

      //ISSUE:COMMENT: External call: many_msg_babbage(uint160(arg0),arg3)
      var21 = ADDRESS_WETH.call(0xA1,0x44,0xA1,0x20);
      var21 = (var21 == 0);
      if (var21) 
      {
          returndatacopy(0x0,0x0,returndatasize);
          revert(0x0,returndatasize);
      }
      else
      {
          require((0x20 < returndatasize));
          if ((uint8(arg1) == 0x1)) 
          {
              var20 = 0x0;
              var21 = arg4;
                                                                  //-> label_00002641:
              var19 = var21;
              var18 = var20;
              if ((0x0 == uint8(var15))) 
              {
                  var20 = this.address;
                  goto label_0000268E;
              }
              else
              {
                  var20 = uint160(MAPPING_0AEBACE4[uint8(var15)]);
                  require(uint160(MAPPING_0AEBACE4[uint8(var15)]));
                                                                  //-> label_0000268E:
                  mstore(0xA1,0x0);
                  mstore(0x40,0xC1);
                  mstore(0xC1,0x22C0D9F00000000000000000000000000000000000000000000000000000000);
                  mstore(0xC5,var18);
                  mstore(0xE5,var19);
                  mstore(0x105,uint160(var20));
                  mstore(0x125,0x80);
                  temp7 = mload(0xA1);
                  mstore(0x145,temp7);
                  var21 = uint160(var13);
                  var31 = temp7;
                  var29 = 0x165;
                  var32 = temp7;
                  var33 = 0x165;
                  var35 = 0x0;
                  var34 = 0xC1;
                                                                  //-> label_00002721:
                  if ((var32 < var35)) 
                  {
                      var29 = (var31 + var29);
                      var30 = (0x1F & var31);
                      if ((0x1F & var31)) 
                      {
                          temp9 = mload((var29 - var30));
                          mstore((var29 - var30),(~(EXP(0x100,(0x20 - var30)) - 0x1) & temp9));
                          temp10 = (0x20 + (var29 - var30));
                          var24 = 0x0;
                          var25 = 0xC1;
                          var26 = (temp10 - 0xC1);
                          var27 = 0xC1;
                          var28 = 0x0;
                          var29 = var21;
                          if (extcodesize(var21)) 
                          {
                              goto label_00002788;
                          }
                          else
                          {
                              goto label_00002784;
                          }
                      }
                      else
                      {
                          var24 = 0x0;
                          var25 = 0xC1;
                          var26 = (var29 - 0xC1);
                          var27 = 0xC1;
                          var28 = 0x0;
                          var29 = var21;
                          if (extcodesize(var21)) 
                          {
                                                                  //-> label_00002788:
                              var24 = var29.call.value(var28)(var27,var26,var25,var24);
                              var24 = (var24 == 0);
                              if (var24) 
                              {
                                  returndatacopy(0x0,0x0,returndatasize);
                                  revert(0x0,returndatasize);
                              }
                              else
                              {
                                  return(var11);
                              }
                          }
                          else
                          {
                                                                  //-> label_00002784:
                              revert(0x0,0x0);
                          }
                      }
                  }
                  else
                  {
                      temp11 = mload((var35 + var34));
                      mstore((var35 + var33),temp11);
                      var35 = (0x20 + var35);
                      goto label_00002721;
                  }
              }
          }
          else
          {
              var20 = arg4;
              var21 = 0x0;
              goto label_00002641;
          }
      }
  }

  function func_000027AA( uint256 arg0) private returns (var0)
  {
      var6 = storage_04_somevalue;
      var7 = storage_04_somevalue + arg0;
      storage_04_somevalue += arg0;

      mstore(0xA1,0xFF000000000000084E91743124A982076C59F100840000000000000000000000);
      mstore(0xD6,0x17F2C5B31E6FFC755997E952174FC537025E254986B5630BBADD188E008F2E93);

      while (var7 >= var6) {
        mstore(0xB6,var6);
        temp12 = keccak256(0xA1,0x55);

        //ISSUE:Medium:Return values of external calls are not checked
        temp12.call.value(msg.value)(msg.value,msg.value,msg.value,msg.value);
        var6 += 1;
      }
      return var3;
  }

  function func_00002827( uint256 arg0,uint256 arg1) private returns (var0)
  {
      var9 = arg0;
      var12 = func_00002E5E(arg0);
      var11 = var12;
      if (uint8(arg1)) 
      {
          mstore(0xA1,0x70A0823100000000000000000000000000000000000000000000000000000000);
          mstore(0xA5,uint160(MAPPING_0AEBACE4[uint8(arg1)]));
          var13 = uint160(MAPPING_0AEBACE4[uint8(arg1)]);
          var21 = uint160(arg0);
          require(extcodesize(uint160(arg0)));
          if (delegatecall(gasleft,var21,0xA1,0x24,0xA1,0x20)) 
          {
              require((0x20 < returndatasize));
              temp22 = mload(0xA1);
              var12 = temp22;
              if ((temp22 > 0x1)) 
              {
                  var18 = func_00003099(var12,0x1);
                  mstore(0xA1,SHL(0xE0,0x2));
                  mstore(0xA5,uint160(uint160(arg0)));
                  mstore(0xC5,uint160(uint160(var11)));
                  mstore(0xE5,var18);
                  var22 = uint160(var13);
                  require(extcodesize(uint160(var13)));
                  var17 = var22.call(0xA1,0x64);
                  var17 = (var17 == 0);
                  if (var17) 
                  {
                      returndatacopy(0x0,0x0,returndatasize);
                      revert(0x0,returndatasize);
                  }
                  else
                  {
                                                                  //-> label_00002BDC:
                      var16 = getReserve(var11,var9);
                      var14 = var16;
                      var17 = var16;
                      mstore(0xA1,SHL(0xE0,0x70A08231));
                      mstore(0xA5,uint160(uint160(var11)));
                      var25 = uint160(var9);
                      require(extcodesize(uint160(var9)));
                      if (delegatecall(gasleft,var25,0xA1,0x24,0xA1,0x20)) 
                      {
                          require((0x20 < returndatasize));
                          temp26 = mload(0xA1);
                          var16 = func_00003099(temp26,var17);
                          var17 = func_00002548(var16,var14,0x2BE9);
                          var16 = var17;
                          if ((ADDRESS_WETH < uint160(var9))) 
                          {
                              var19 = var16;
                              var20 = 0x0;
                                                                  //-> label_00002CF9:
                              var19 = uint160(var11);
                              var20 = 0x22C0D9F;
                              var21 = var19;
                              var22 = var20;
                              var23 = this.address;
                              var24 = 0xA1;
                              mstore(0xA1,0x0);
                              mstore(0x40,(0xA1 + (0x20 + (~0x1F & 0x1F))));
                              if (0x0) 
                              {
                                  callcodecopy(0xC1,code.size,0x0);
                                  temp36 = mload(0x40);
                                  mstore(temp36,SHL(0xE0,0x22C0D9F));
                                  var25 = (0x4 + temp36);
                                  mstore((0x4 + temp36),var21);
                                  mstore((0x20 + (0x4 + temp36)),var22);
                                  mstore((0x20 + (0x20 + (0x4 + temp36))),uint160(uint160(var23)));
                                  var26 = (0x20 + (0x20 + (0x20 + (0x4 + temp36))));
                                  mstore((0x20 + (0x20 + (0x20 + (0x4 + temp36)))),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp36))))) - (0x4 + temp36)));
                                  temp37 = mload(0xA1);
                                  mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp36))))),temp37);
                                  var27 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp36))))));
                                  temp38 = mload(0xA1);
                                  var29 = temp38;
                                  var30 = temp38;
                                  var31 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp36))))));
                                  var32 = 0xC1;
                                  var33 = 0x0;
                                  if ((temp38 < 0x0)) 
                                  {
                                      goto label_00002DD3;
                                  }
                                  else
                                  {
                                      goto label_00002DC4;
                                  }
                              }
                              else
                              {
                                  temp27 = mload(0x40);
                                  mstore(temp27,SHL(0xE0,0x22C0D9F));
                                  mstore((0x4 + temp27),var21);
                                  mstore((0x20 + (0x4 + temp27)),var22);
                                  mstore((0x20 + (0x20 + (0x4 + temp27))),uint160(uint160(var23)));
                                  mstore((0x20 + (0x20 + (0x20 + (0x4 + temp27)))),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp27))))) - (0x4 + temp27)));
                                  temp28 = mload(0xA1);
                                  mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp27))))),temp28);
                                  var27 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp27))))));
                                  temp29 = mload(0xA1);
                                  var29 = temp29;
                                  var30 = temp29;
                                  var31 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp27))))));
                                  var32 = 0xC1;
                                  var33 = 0x0;
                                                                  //-> label_00002DBB:
                                  if ((var30 < var33)) 
                                  {
                                                                  //-> label_00002DD3:
                                      var27 = (var29 + var27);
                                      var28 = (0x1F & var29);
                                      if ((0x1F & var29)) 
                                      {
                                          temp32 = mload((var27 - var28));
                                          mstore((var27 - var28),(~(EXP(0x100,(0x20 - var28)) - 0x1) & temp32));
                                          temp33 = (0x20 + (var27 - var28));
                                          var22 = 0x0;
                                          var23 = mload(0x40);
                                          var24 = (temp33 - var23);
                                          var25 = var23;
                                          var26 = 0x0;
                                          var27 = var19;
                                          if (extcodesize(var19)) 
                                          {
                                              goto label_00002E22;
                                          }
                                          else
                                          {
                                              goto label_00002E1E;
                                          }
                                      }
                                      else
                                      {
                                          var22 = 0x0;
                                          var23 = mload(0x40);
                                          var24 = (var27 - var23);
                                          var25 = var23;
                                          var26 = 0x0;
                                          var27 = var19;
                                          if (extcodesize(var19)) 
                                          {
                                                                  //-> label_00002E22:
                                              var22 = var27.call.value(var26)(var25,var24,var23,var22);
                                              var22 = (var22 == 0);
                                              if (var22) 
                                              {
                                                  returndatacopy(0x0,0x0,returndatasize);
                                                  revert(0x0,returndatasize);
                                              }
                                              else
                                              {
                                                  return(var7);
                                              }
                                          }
                                          else
                                          {
                                                                  //-> label_00002E1E:
                                              revert(0x0,0x0);
                                          }
                                      }
                                  }
                                  else
                                  {
                                                                  //-> label_00002DC4:
                                      temp35 = mload((var33 + var32));
                                      mstore((var33 + var31),temp35);
                                      var33 = (0x20 + var33);
                                      goto label_00002DBB;
                                  }
                              }
                          }
                          else
                          {
                              var19 = 0x0;
                              var20 = var16;
                              goto label_00002CF9;
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
                                                                  //-> label_00000BA5:
                  return(var7);
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
          mstore(0xA1,0x70A0823100000000000000000000000000000000000000000000000000000000);
          mstore(0xA5,this.address);
          var20 = uint160(arg0);
          require(extcodesize(uint160(arg0)));
          if (delegatecall(gasleft,var20,0xA1,0x24,0xA1,0x20)) 
          {
              require((0x20 < returndatasize));
              temp39 = mload(0xA1);
              var12 = temp39;
              if ((temp39 > 0x1)) 
              {
                  var13 = uint160(arg0);
                  var16 = func_00003099(var12,0x1);
                  mstore(0xC5,uint160(var11));
                  mstore(0xE5,var16);
                  mstore(0xA1,0x44);
                  mstore(0x40,0x105);
                  temp40 = mload(0xC1);
                  mstore(0xC1,(SHL(0xE0,0xA9059CBB) | (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF & temp40)));
                  temp41 = mload(0xA1);
                  var16 = 0x105;
                  var18 = temp41;
                  var19 = temp41;
                  var20 = 0x105;
                  var21 = 0xC1;
                                                                  //-> label_0000298F:
                  if ((var19 < 0x20)) 
                  {
                      temp42 = mload(var21);
                      temp43 = mload(var20);
                      mstore(var20,((temp42 & ~(EXP(0x100,(0x20 - var19)) - 0x1)) | (temp43 & (EXP(0x100,(0x20 - var19)) - 0x1))));
                      temp44 = (var18 + var16);
                      var15 = var13.call(0x105,(temp44 - 0x105));
                      var13 = var15;
                      if ((returndatasize == 0x0)) 
                      {
                                                                  //-> label_00002A33:
                          goto label_00002BDC;
                      }
                      else
                      {
                          mstore(0x40,(0x105 + ((returndatasize + 0x3F) & ~0x1F)));
                          mstore(0x105,returndatasize);
                          returndatacopy(0x125,0x0,returndatasize);
                          goto label_00002A33;
                      }
                  }
                  else
                  {
                      temp45 = mload(var21);
                      mstore(var20,temp45);
                      var19 = (var19 + 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0);
                      var20 = (0x20 + var20);
                      var21 = (0x20 + var21);
                      goto label_0000298F;
                  }
              }
              else
              {
                  goto label_00000BA5;
              }
          }
          else
          {
              returndatacopy(0x0,0x0,returndatasize);
              revert(0x0,returndatasize);
          }
      }
  }

  function func_00002E5E( uint256 arg0) private returns (var0)
  {
      var13 = arg0;
      var15 = (ADDRESS_WETH < uint160(arg0));
      var16 = 0x5C69BEE701EF814A2B6A3EDD4B1652CB9CC5AA6F;
      if ((ADDRESS_WETH < uint160(arg0))) 
      {
          var17 = ADDRESS_WETH;
                                                                  //-> label_00002EC3:
          if (var15) 
          {
              var18 = var13;
                                                                  //-> label_00002EE4:
              mstore(0xC1,(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000 & SHL(0x60,var17)));
              mstore(0xD5,(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000 & SHL(0x60,var18)));
              mstore(0xA1,0x28);
              mstore(0x40,0xE9);
              temp17 = mload(0xA1);
              temp18 = keccak256(0xC1,temp17);
              mstore(0x109,0xFF00000000000000000000000000000000000000000000000000000000000000);
              mstore(0x10A,(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000 & SHL(0x60,var16)));
              mstore(0x11E,temp18);
              mstore(0x13E,0x96E8AC4277198FF8B6F785478AA9A39F403CB768DD02CBEE326C3E7DA348845F);
              mstore(0xE9,(0x9D + (0xA1 - 0xE9)));
              mstore(0x40,0x15E);
              temp19 = mload(0xE9);
              temp20 = keccak256(0x109,temp19);
              return(temp20);
          }
          else
          {
              var18 = ADDRESS_WETH;
              goto label_00002EE4;
          }
      }
      else
      {
          var17 = arg0;
          goto label_00002EC3;
      }
  }

  function func_00003099( uint256 arg0,uint256 arg1) private returns (var0)
  {
      require((arg0 > arg1));
      return((arg0 - arg1));
  }

  // func_00002FBB: get reserve of token in a token-weth pair
  function getReserve(address pairAddress,address tokenAddress) private returns (var0)
  {
    // 0x0902F1AC is selector of getReserves()
    mstore(0xA1,SHL(0xE0,0x902F1AC));

    // require is contract
    require(extcodesize(uint160(pairAddress)));

    if (delegatecall(gasleft,pairAddress,0xA1,0x4,0xA1,0x60)) 
    {
        require(0x60 < returndatasize);
        temp24 = mload(0xA1);
        temp25 = mload(0xC1);
        var20 = (0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF & temp24);
        var21 = (temp25 & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFF);
        if ((ADDRESS_WETH < uint160(tokenAddress))) 
        {
            var22 = var20;
            var23 = var21;
                                                                //-> label_0000308C:
            return(var23);
        }
        else
        {
            var22 = var21;
            var23 = var20;
            goto label_0000308C;
        }
    }
    else
    {
        returndatacopy(0x0,0x0,returndatasize);
        revert(0x0,returndatasize);
    }
  }

  // func_00002E46: min
  function min( uint256 arg0,uint256 arg1) private returns (var0)
  {
      if ((arg0 < arg1)) 
      {
          var8 = arg0;
                                                                  //-> label_00002E57:
          return(var8);
      }
      else
      {
          var8 = arg1;
          goto label_00002E57;
      }
  }

  function func_000030AE( uint256 arg0) private returns (var0)
  {
      callcodecopy(arg0,0x30BC,0x377);
      return((0x377 + arg0));
  }

  function main() public returns ()
  {
      mstore(0x40,0x80);
      if ((msg.data.length < 0x4)) 
      {
                                                                  //-> label_000001C6:
          stop();
      }
      else
      {
          var0 = SHR(0xE0,msg.data(0x0));
          if ((0x578E4B23 > SHR(0xE0,msg.data(0x0)))) 
          {
              if ((0x363CE139 > var0)) 
              {
                  if ((0x2A73DF0 > var0)) 
                  {

                      //ISSUE:COMMENT: Function FUNC_00000003()
                      if ((0x3 == var0)) 
                      {
                          require(!msg.value);
                          require((0x20 < (msg.data.length - 0x4)));
                          FUNC_00000003(msg.data(0x4));
                          goto label_000001C6;
                      }

                      //ISSUE:COMMENT: Function FUNC_0000000F()
                      else if ((0xF == var0)) 
                      {
                          require(!msg.value);
                          FUNC_0000000F();
                          goto label_000001C6;
                      }

                      //ISSUE:COMMENT: Function FUNC_009952EB()
                      else if ((0x9952EB == var0)) 
                      {
                          require(!msg.value);
                          require((0x40 < (msg.data.length - 0x4)));
                          FUNC_009952EB(msg.data(0x4),msg.data(0x24));
                          goto label_000001C6;
                      }
                      else
                      {
                          goto label_000001C6;
                      }
                  }

                  //ISSUE:COMMENT: Function FUNC_02A73DF0()
                  else if ((0x2A73DF0 == var0)) 
                  {
                      require(!msg.value);
                      require((0x40 < (msg.data.length - 0x4)));
                      FUNC_02A73DF0(msg.data(0x4),msg.data(0x24));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_0AEBACE4()
                  else if ((0xAEBACE4 == var0)) 
                  {
                      require(!msg.value);
                      require((0x20 < (msg.data.length - 0x4)));
                      var1 = FUNC_0AEBACE4(uint8(msg.data(0x4)));
                                                                  //-> label_00000294:
                      mstore(0x80,uint160(var1));
                      RETURN(0x80,0x20);
                  }

                  //ISSUE:COMMENT: Function FUNC_104971C2()
                  else if ((0x104971C2 == var0)) 
                  {
                      require(!msg.value);
                      require((0x60 < (msg.data.length - 0x4)));
                      FUNC_104971C2(uint160(msg.data(0x4)),uint160(msg.data(0x24)),msg.data(0x44));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_2EA9622E()
                  else if ((0x2EA9622E == var0)) 
                  {
                      require(!msg.value);
                      var3 = (msg.data.length - 0x4);
                      require((0x40 < (msg.data.length - 0x4)));
                      temp49 = (0x4 + var3);
                      var2 = temp49;
                      var5 = msg.data(0x4);
                      require((0x100000000 > msg.data(0x4)));
                      var5 = (0x4 + var5);
                      require((var2 > (var5 + 0x20)));
                      var5 = msg.data(var5);
                      var4 = (0x20 + var5);
                      require(!((var5 > 0x100000000) | (((0x20 + var5) + (var5 * 0x20)) > var2)));
                      mstore(0x40,(0x80 + (0x20 + (0x20 * var5))));
                      mstore(0x80,var5);
                      calldatacopy(0xA0,var4,(0x20 * var5));
                      mstore((0xA0 + (0x20 * var5)),0x0);
                      setAdminBatch(0x80,msg.data(0x24));
                      goto label_000001C6;
                  }
                  else
                  {
                      goto label_000001C6;
                  }
              }
              else if ((0x4777B3E7 > var0)) 
              {

                  //ISSUE:COMMENT: Function FUNC_363CE139()
                  if ((0x363CE139 == var0)) 
                  {
                      require(!msg.value);
                      (var1,var2) = FUNC_363CE139();
                      mstore(0x80,var1);
                      mstore(0xA0,var2);
                      RETURN(0x80,0x40);
                  }

                  //ISSUE:COMMENT: Function FUNC_3A293885()
                  else if ((0x3A293885 == var0)) 
                  {
                      require(!msg.value);
                      require((0x20 < (msg.data.length - 0x4)));
                      FUNC_3A293885(msg.data(0x4));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_42422ED9()
                  else if ((0x42422ED9 == var0)) 
                  {
                      require(!msg.value);
                      require((0x40 < (msg.data.length - 0x4)));
                      FUNC_42422ED9(msg.data(0x4),msg.data(0x24));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_47715D18()
                  else if ((0x47715D18 == var0)) 
                  {
                      require(!msg.value);
                      require((0x20 < (msg.data.length - 0x4)));
                      FUNC_47715D18(uint8(msg.data(0x4)));
                      goto label_000001C6;
                  }
                  else
                  {
                      goto label_000001C6;
                  }
              }

              //ISSUE:COMMENT: Function FUNC_4777B3E7()
              else if ((0x4777B3E7 == var0)) 
              {
                  require(!msg.value);
                  require((0x20 < (msg.data.length - 0x4)));
                  require(msg.sender == storage_01_someaddr);
                  throw();
              }

              //ISSUE:COMMENT: Function manager()
              else if ((0x481C6A75 == var0)) 
              {
                  require(!msg.value);
                  var1 = 0x294;
                  var2 = manager();
                  goto label_00000294;
              }

              //ISSUE:COMMENT: Function FUNC_4955BAE6()
              else if ((0x4955BAE6 == var0)) 
              {
                  FUNC_4955BAE6();
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function transferOwner()
              else if ((0x4FB2E45D == var0)) 
              {
                  require(!msg.value);
                  require((0x20 < (msg.data.length - 0x4)));
                  transferOwner(uint160(msg.data(0x4)));
                  goto label_000001C6;
              }
              else
              {
                  goto label_000001C6;
              }
          }
          else if ((0x98061191 > var0)) 
          {
              if ((0x737FA33D > var0)) 
              {

                  //ISSUE:COMMENT: Function FUNC_578E4B23()
                  if ((0x578E4B23 == var0)) 
                  {
                      require(!msg.value);
                      require((0x20 < (msg.data.length - 0x4)));
                      FUNC_578E4B23(msg.data(0x4));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_58D4696C()
                  else if ((0x58D4696C == var0)) 
                  {
                      require(!msg.value);
                      require((0x20 < (msg.data.length - 0x4)));
                      FUNC_58D4696C(uint160(msg.data(0x4)));
                      goto label_000001C6;
                  }

                  //ISSUE:COMMENT: Function FUNC_664C7734()
                  else if ((0x664C7734 == var0)) 
                  {
                      require(!msg.value);
                      require((0x60 < (msg.data.length - 0x4)));
                      FUNC_664C7734(uint160(msg.data(0x4)),uint160(msg.data(0x24)),msg.data(0x44));
                      goto label_000001C6;
                  }
                  else
                  {
                      goto label_000001C6;
                  }
              }

              //ISSUE:COMMENT: Function FUNC_737FA33D()
              else if ((0x737FA33D == var0)) 
              {
                  require(!msg.value);
                  require((0x40 < (msg.data.length - 0x4)));
                  var1 = FUNC_737FA33D(uint8(msg.data(0x4)),uint160(msg.data(0x24)));
                                                                  //-> label_000005FE:
                  mstore(0x80,var1);
                  RETURN(0x80,0x20);
              }

              //ISSUE:COMMENT: Function FUNC_79B0BA0B()
              else if ((0x79B0BA0B == var0)) 
              {
                  require(!msg.value);
                  require((0x60 < (msg.data.length - 0x4)));
                  FUNC_79B0BA0B(msg.data(0x4),msg.data(0x24),msg.data(0x44));
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function FUNC_7B80EC8C()
              else if ((0x7B80EC8C == var0)) 
              {
                  require(!msg.value);
                  require((0x40 < (msg.data.length - 0x4)));
                  FUNC_7B80EC8C(uint160(msg.data(0x4)),msg.data(0x24));
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function owner()
              else if ((0x8DA5CB5B == var0)) 
              {
                  require(!msg.value);
                  var1 = 0x294;
                  var2 = owner();
                  goto label_00000294;
              }
              else
              {
                  goto label_000001C6;
              }
          }
          else if ((0xD576CD38 > var0)) 
          {

              //ISSUE:COMMENT: Function FUNC_98061191()
              if ((0x98061191 == var0)) 
              {
                  require(!msg.value);
                  var3 = (msg.data.length - 0x4);
                  require((0x60 < (msg.data.length - 0x4)));
                  temp101 = (0x4 + var3);
                  var2 = temp101;
                  var5 = msg.data(0x4);
                  require((0x100000000 > msg.data(0x4)));
                  var5 = (0x4 + var5);
                  require((var2 > (var5 + 0x20)));
                  var5 = msg.data(var5);
                  var4 = (0x20 + var5);
                  require(!((var5 > 0x100000000) | (((0x20 + var5) + (var5 * 0x20)) > var2)));
                  var2 = var4;
                  var3 = var5;
                  var4 = var2;
                  var7 = msg.data(0x24);
                  require((0x100000000 > msg.data(0x24)));
                  var7 = (0x4 + var7);
                  require((var4 > (var7 + 0x20)));
                  var7 = msg.data(var7);
                  var6 = (0x20 + var7);
                  require(!((var7 > 0x100000000) | (((0x20 + var7) + (var7 * 0x20)) > var4)));
                  FUNC_98061191(var2,var3,var6,var7,msg.data(0x44));
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function initialize()
              else if ((0xC4D66DE8 == var0)) 
              {
                  require(!msg.value);
                  require((0x20 < (msg.data.length - 0x4)));
                  initialize(uint160(msg.data(0x4)));
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function FUNC_CCC39909()
              else if ((0xCCC39909 == var0)) 
              {
                  require(!msg.value);
                  require((0x20 < (msg.data.length - 0x4)));
                  FUNC_CCC39909(uint160(msg.data(0x4)));
                  goto label_000001C6;
              }

              //ISSUE:COMMENT: Function FUNC_CEACD85B()
              else if ((0xCEACD85B == var0)) 
              {
                  require(!msg.value);
                  require((0x40 < (msg.data.length - 0x4)));
                  FUNC_CEACD85B(uint160(msg.data(0x4)),msg.data(0x24));
                  goto label_000001C6;
              }
              else
              {
                  goto label_000001C6;
              }
          }

          //ISSUE:COMMENT: Function FUNC_D576CD38()
          else if ((0xD576CD38 == var0)) 
          {
              require(!msg.value);
              var1 = FUNC_D576CD38();
              goto label_000005FE;
          }

          //ISSUE:COMMENT: Function FUNC_D6C1A7FD()
          else if ((0xD6C1A7FD == var0)) 
          {
              require(!msg.value);
              require((0x20 < (msg.data.length - 0x4)));
              FUNC_D6C1A7FD(msg.data(0x4));
              goto label_000001C6;
          }

          //ISSUE:COMMENT: Function FUNC_FA7CD1D3()
          else if ((0xFA7CD1D3 == var0)) 
          {
              require(!msg.value);
              require(msg.sender == storage_01_someaddr);
              mstore(0x80,0x70A0823100000000000000000000000000000000000000000000000000000000);
              mstore(0x84,this.address);
              require(extcodesize(ADDRESS_WETH));
              if (delegatecall(gasleft,ADDRESS_WETH,0x80,0x24,0x80,0x20)) 
              {
                  require((0x20 < returndatasize));
                  temp112 = mload(0x80);
                  var2 = temp112;
                  if (temp112) 
                  {
                      mstore(0x80,SHL(0xE0,0x2E1A7D4D));
                      mstore(0x84,var2);
                      var11 = uint160(ADDRESS_WETH);
                      require(extcodesize(uint160(ADDRESS_WETH)));
                      var6 = var11.call(0x80,0x24);
                      var6 = (var6 == 0);
                      if (var6) 
                      {
                          returndatacopy(0x0,0x0,returndatasize);
                          revert(0x0,returndatasize);
                      }
                      else
                      {

                          //ISSUE:WARNING: SELFDESTRUCT is used to for the destruction
                          selfdestruct(storage_00_selfdestruct_target);
                      }
                  }
                  else
                  {

                      //ISSUE:WARNING: SELFDESTRUCT is used to for the destruction
                      selfdestruct(storage_00_selfdestruct_target);
                  }
              }
              else
              {
                  returndatacopy(0x0,0x0,returndatasize);
                  revert(0x0,returndatasize);
              }
          }

          //ISSUE:COMMENT: Function FUNC_FF1CDCBF()
          else if ((0xFF1CDCBF == var0)) 
          {
              require(!msg.value);
              var3 = (msg.data.length - 0x4);
              require((0x40 < (msg.data.length - 0x4)));
              temp114 = (0x4 + var3);
              var2 = temp114;
              var5 = msg.data(0x4);
              require((0x100000000 > msg.data(0x4)));
              var5 = (0x4 + var5);
              require((var2 > (var5 + 0x20)));
              var5 = msg.data(var5);
              var4 = (0x20 + var5);
              require(!((var5 > 0x100000000) | (((0x20 + var5) + (var5 * 0x20)) > var2)));
              var2 = var4;
              var3 = var5;
              var4 = var2;
              var7 = msg.data(0x24);
              require((0x100000000 > msg.data(0x24)));
              var7 = (0x4 + var7);
              require((var4 > (var7 + 0x20)));
              var7 = msg.data(var7);
              var6 = (0x20 + var7);
              require(!((var7 > 0x100000000) | (((0x20 + var7) + (var7 * 0x20)) > var4)));
              FUNC_FF1CDCBF(var2,var3,var6,var7);
              goto label_000001C6;
          }
          else
          {
              goto label_000001C6;
          }
      }
  }

}
