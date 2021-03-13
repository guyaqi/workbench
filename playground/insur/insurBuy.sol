// 买保险
function FUNC_347489AE( uint256 arg0,uint256 arg1,uint256 arg2,uint256 arg3,uint256 arg4) public return ()
{

  require(!paused());
  if ((sload(0x97) == 0x2)) 
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

      require(temp67 == temp68);
      temp70 = mload(arg2);
      temp69 = mload(arg0);

      require(temp69 == temp70)

      require(arg4);

      var7 = 0x0;
      var8 = 0x0;
      var9 = 0x0;
                                                    //-> label_00000C16:
      temp71 = mload(arg0);

      if ((temp71 < var9)) 
      {
          temp72 = mload(0x40);
          mstore(temp72,SHL(0xE0,0x76136817));
          mstore((temp72 + 0x4),var7);
          mstore((temp72 + 0x24),((SHL(0xA0,0x1) - 0x1) & arg4));
          temp73 = mload(0x40);
          var13 = temp73;
          var14 = ((temp72 - temp73) + 0x44);
          var15 = temp73;
          var16 = (sload(0xCE) & (SHL(0xA0,0x1) - 0x1));
          require(extcodesize((sload(0xCE) & (SHL(0xA0,0x1) - 0x1))));

          require(delegatecall(gasleft,var16,var15,var14,var13,0x20));
          var9 = mload(0x40);

          require((0x20 < returndatasize));

          require(temp74);
          var10 = ((SHL(0xA0,0x1) - 0x1) & ((SHL(0xA0,0x1) - 0x1) & sload(0xCD)));
          var13 = arg1;
          var14 = arg2;
          temp75 = mload(0x40);
          mstore(temp75,SHL(0xE0,0xFC2F5C0D));
          var16 = (0x4 + temp75);
          var18 = (0x20 + (0x4 + temp75));
          var19 = (0x20 + (0x20 + (0x4 + temp75)));
          mstore((0x20 + (0x20 + (0x20 + (0x4 + temp75)))),((SHL(0xA0,0x1) - 0x1) & arg4));
          mstore((0x4 + temp75),((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))) - (0x4 + temp75)));
          temp76 = mload(arg0);
          mstore((0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))),temp76);
          var20 = (0x20 + (0x20 + (0x20 + (0x20 + (0x20 + (0x4 + temp75))))));
          temp77 = mload(arg0);
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
                              if ((arg3 > var9)) 
                              {
                                  var11 = func_00002651();
                                  var10 = var11;
                                  if ((0xEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE == (arg4 & (SHL(0xA0,0x1) - 0x1)))) 
                                  {
                                      
                                      if ((msg.value > var9)) 
                                      {
                                          temp187 = mload(0x40);
                                          mstore(temp187,SHL(0xE0,0x2AED081D));
                                          mstore((temp187 + 0x4),((SHL(0xA0,0x1) - 0x1) & arg4));
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

                                          require(!var15);
                                          goto label_000013B5;
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
                                      var19 = ((SHL(0xA0,0x1) - 0x1) & arg4);
                                      require(extcodesize(((SHL(0xA0,0x1) - 0x1) & arg4)));
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
                                              var19 = (arg4 & (SHL(0xA0,0x1) - 0x1));
                                              require(extcodesize((arg4 & (SHL(0xA0,0x1) - 0x1))));
                                              if (delegatecall(gasleft,var19,var18,var17,var16,0x20)) 
                                              {
                                                  var12 = mload(0x40);
                                                  require((0x20 < returndatasize));
                                                  temp92 = mload(var12);
                                                  if ((var9 < temp92)) 
                                                  {
                                                      var11 = func_000026F5((arg4 & (SHL(0xA0,0x1) - 0x1)),var10,this.address,var9);
                                                      var11 = func_00002808(((SHL(0xA0,0x1) - 0x1) & arg4),(sload(0xCF) & (SHL(0xA0,0x1) - 0x1)),var9);
                                                      temp96 = mload(0x40);
                                                      mstore(temp96,SHL(0xE0,0x2AED081D));
                                                      mstore((temp96 + 0x4),((SHL(0xA0,0x1) - 0x1) & arg4));
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
                                                          var12 = FUNC_E1133C3D(arg4,var9);
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
                                                                      var11 = func_0000285F(var10,arg4,var8,var9,arg0,arg1,arg2);
                                                                      goto label_000014AB;
                                                                  }
                                                              }
                                                          }
                                                          else
                                                          {
                                                              var11 = func_0000285F(var10,arg4,var8,var9,arg0,arg1,arg2);
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
          var11 = arg2;
          var12 = var9;
          temp201 = mload(arg2);
          assert((var9 < temp201));
          temp202 = (0x20 + (0x20 * var12));
          temp203 = mload((temp202 + var11));
          var10 = func_00002755(var7,temp203);
          var7 = var10;
          var12 = arg1;
          var13 = var9;
          temp204 = mload(arg1);
          assert((var9 < temp204));
          temp205 = (0x20 + (0x20 * var13));
          var12 = mload((temp205 + var12));
          var13 = arg2;
          var14 = var9;
          temp206 = mload(arg2);
          assert((var9 < temp206));
          temp207 = (0x20 + (0x20 * var14));
          temp208 = mload((temp207 + var13));
          var11 = func_000027AF(temp208,var12);
          var10 = func_00002755(var8,var11);
          temp209 = mload(arg0);
          var8 = var10;
          var10 = ((SHL(0xA0,0x1) - 0x1) & sload(0xCE));
          var12 = arg0;
          var13 = var9;
          assert((var9 < temp209));
          temp210 = (0x20 + (0x20 * var13));
          var12 = mload((temp210 + var12));
          var13 = arg2;
          var14 = var9;
          temp211 = mload(arg2);
          assert((var9 < temp211));
          temp212 = (0x20 + (0x20 * var14));
          temp214 = mload((temp212 + var13));
          temp213 = mload(0x40);
          mstore(temp213,SHL(0xE0,0x4400C176));
          mstore((0x4 + temp213),var12);
          mstore((0x20 + (0x4 + temp213)),temp214);
          mstore((0x20 + (0x20 + (0x4 + temp213))),((SHL(0xA0,0x1) - 0x1) & arg4));
          var14 = mload(0x40);
          var15 = ((0x20 + (0x20 + (0x20 + (0x4 + temp213)))) - var14);
          var16 = var14;
          var17 = var10;
          require(extcodesize(var10));

          require(delegatecall(gasleft,var17,var16,var15,var14,0x20))

          var10 = mload(0x40);
          require((0x20 < returndatasize));

          require(temp216);

          temp217 = mload(arg0);
          var10 = (sload(0xCE) & (SHL(0xA0,0x1) - 0x1));
          var12 = arg0;
          var13 = var9;
          assert((var9 < temp217));
          temp218 = (0x20 + (0x20 * var13));
          var12 = mload((temp218 + var12));
          var13 = arg2;
          var14 = var9;
          temp219 = mload(arg2);
          assert((var9 < temp219));
          temp220 = (0x20 + (0x20 * var14));
          temp222 = mload((temp220 + var13));
          temp221 = mload(0x40);
          mstore(temp221,SHL(0xE0,0x73EA4E2E));
          mstore((0x4 + temp221),var12);
          mstore((0x20 + (0x4 + temp221)),temp222);
          mstore((0x20 + (0x20 + (0x4 + temp221))),((SHL(0xA0,0x1) - 0x1) & arg4));
          var14 = mload(0x40);
          var15 = ((0x20 + (0x20 + (0x20 + (0x4 + temp221)))) - var14);
          var16 = var14;
          var18 = var10;
          var19 = (extcodesize(var10) == 0);
          require(extcodesize(var10));
          var13 = var18.call(var16,var15);
          var13 = (var13 == 0);

          require(!var13);
          var9 = (var9 + 0x1);
          goto label_00000C16;
      }

  }
}