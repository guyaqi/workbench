function func_00F8(var arg0, var arg1, var arg2) {
        var var0 = msg.sender;
        var var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
        var var2 = 0x6352211e;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var2 & 0xffffffff) << 0xe0;
        var var3 = 0x1517;
        var var5 = temp0 + 0x04;
        var var4 = arg0;
        var3 = func_43E5(var4, var5);
        var4 = 0x20;
        var5 = memory[0x40:0x60];
        var var6 = var3 - var5;
        var var7 = var5;
        var var8 = var1;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
        var4 = !temp1;
    
        if (!var4) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            var1 = 0x1567;
            var2 = temp2 + temp3;
            var3 = temp2;
            var1 = func_3D43(var2, var3);
            var temp4 = memory[0x40:0x60];
            memory[0x40:0x60] = temp4 + 0x40;
            memory[temp4:temp4 + 0x20] = 0x1f;
            memory[temp4 + 0x20:temp4 + 0x20 + 0x20] = 0x596f7520617265206e6f74206f776e6572206f6620626f746820636172647300;
            var0 = temp4;
        
            if (var1 & 0xffffffffffffffffffffffffffffffffffffffff == var0) {
                var0 = msg.sender;
                var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                var2 = 0x6352211e;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                var3 = 0x1666;
                var5 = temp5 + 0x04;
                var4 = arg1;
                var3 = func_43E5(var4, var5);
                var4 = 0x20;
                var5 = memory[0x40:0x60];
                var6 = var3 - var5;
                var7 = var5;
                var8 = var1;
                var9 = !address(var8).code.length;
            
                if (var9) { revert(memory[0x00:0x00]); }
            
                var temp6;
                temp6, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                var4 = !temp6;
            
                if (!var4) {
                    var temp7 = memory[0x40:0x60];
                    var temp8 = returndata.length;
                    memory[0x40:0x60] = temp7 + (temp8 + 0x1f & ~0x1f);
                    var1 = 0x16b6;
                    var3 = temp7;
                    var2 = var3 + temp8;
                    var1 = func_3D43(var2, var3);
                    var temp9 = memory[0x40:0x60];
                    memory[0x40:0x60] = temp9 + 0x40;
                    memory[temp9:temp9 + 0x20] = 0x1f;
                    memory[temp9 + 0x20:temp9 + 0x20 + 0x20] = 0x596f7520617265206e6f74206f776e6572206f6620626f746820636172647300;
                    var0 = temp9;
                
                    if (var1 & 0xffffffffffffffffffffffffffffffffffffffff == var0) {
                        var0 = msg.sender;
                        var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                        var2 = 0x6352211e;
                        var temp10 = memory[0x40:0x60];
                        memory[temp10:temp10 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                        var3 = 0x17b5;
                        var4 = arg2;
                        var5 = temp10 + 0x04;
                        var3 = func_43E5(var4, var5);
                        var4 = 0x20;
                        var5 = memory[0x40:0x60];
                        var6 = var3 - var5;
                        var7 = var5;
                        var8 = var1;
                        var9 = !address(var8).code.length;
                    
                        if (var9) { revert(memory[0x00:0x00]); }
                    
                        var temp11;
                        temp11, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                        var4 = !temp11;
                    
                        if (!var4) {
                            var temp12 = memory[0x40:0x60];
                            var temp13 = returndata.length;
                            memory[0x40:0x60] = temp12 + (temp13 + 0x1f & ~0x1f);
                            var1 = 0x1805;
                            var3 = temp12;
                            var2 = var3 + temp13;
                            var1 = func_3D43(var2, var3);
                            var temp14 = memory[0x40:0x60];
                            memory[0x40:0x60] = temp14 + 0x40;
                            memory[temp14:temp14 + 0x20] = 0x1f;
                            memory[temp14 + 0x20:temp14 + 0x20 + 0x20] = 0x596f7520617265206e6f74206f776e6572206f6620626f746820636172647300;
                            var0 = temp14;
                        
                            if (var1 & 0xffffffffffffffffffffffffffffffffffffffff == var0) {
                                var0 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                var1 = 0x0c2c5b20;
                                var temp15 = memory[0x40:0x60];
                                memory[temp15:temp15 + 0x20] = (var1 & 0xffffffff) << 0xe0;
                                var2 = temp15 + 0x04;
                                var3 = 0x20;
                                var4 = memory[0x40:0x60];
                                var5 = var2 - var4;
                                var6 = var4;
                                var7 = var0;
                                var8 = !address(var7).code.length;
                            
                                if (var8) { revert(memory[0x00:0x00]); }
                            
                                var temp16;
                                temp16, memory[var4:var4 + var3] = address(var7).staticcall.gas(msg.gas)(memory[var6:var6 + var5]);
                                var3 = !temp16;
                            
                                if (!var3) {
                                    var temp17 = memory[0x40:0x60];
                                    var temp18 = returndata.length;
                                    memory[0x40:0x60] = temp17 + (temp18 + 0x1f & ~0x1f);
                                    var0 = 0x1932;
                                    var2 = temp17;
                                    var1 = var2 + temp18;
                                    var0 = func_3D95(var1, var2);
                                    var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                    var2 = 0xfcf49adf;
                                    var temp19 = memory[0x40:0x60];
                                    memory[temp19:temp19 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                                    var3 = 0x198b;
                                    var5 = temp19 + 0x04;
                                    var4 = arg0;
                                    var3 = func_43E5(var4, var5);
                                    var4 = 0x20;
                                    var5 = memory[0x40:0x60];
                                    var6 = var3 - var5;
                                    var7 = var5;
                                    var8 = var1;
                                    var9 = !address(var8).code.length;
                                
                                    if (var9) { revert(memory[0x00:0x00]); }
                                
                                    var temp20;
                                    temp20, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                                    var4 = !temp20;
                                
                                    if (!var4) {
                                        var temp21 = memory[0x40:0x60];
                                        var temp22 = returndata.length;
                                        memory[0x40:0x60] = temp21 + (temp22 + 0x1f & ~0x1f);
                                        var1 = 0x19db;
                                        var3 = temp21;
                                        var2 = var3 + temp22;
                                        var1 = func_3D95(var2, var3);
                                    
                                        if (var1 == var0) {
                                            var0 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                            var1 = 0x0c2c5b20;
                                            var temp23 = memory[0x40:0x60];
                                            memory[temp23:temp23 + 0x20] = (var1 & 0xffffffff) << 0xe0;
                                            var2 = temp23 + 0x04;
                                            var3 = 0x20;
                                            var4 = memory[0x40:0x60];
                                            var5 = var2 - var4;
                                            var6 = var4;
                                            var7 = var0;
                                            var8 = !address(var7).code.length;
                                        
                                            if (var8) { revert(memory[0x00:0x00]); }
                                        
                                            var temp24;
                                            temp24, memory[var4:var4 + var3] = address(var7).staticcall.gas(msg.gas)(memory[var6:var6 + var5]);
                                            var3 = !temp24;
                                        
                                            if (!var3) {
                                                var temp25 = memory[0x40:0x60];
                                                var temp26 = returndata.length;
                                                memory[0x40:0x60] = temp25 + (temp26 + 0x1f & ~0x1f);
                                                var0 = 0x1ab9;
                                                var2 = temp25;
                                                var1 = var2 + temp26;
                                                var0 = func_3D95(var1, var2);
                                                var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var2 = 0xfcf49adf;
                                                var temp27 = memory[0x40:0x60];
                                                memory[temp27:temp27 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                                                var3 = 0x1b12;
                                                var5 = temp27 + 0x04;
                                                var4 = arg1;
                                                var3 = func_43E5(var4, var5);
                                                var4 = 0x20;
                                                var5 = memory[0x40:0x60];
                                                var6 = var3 - var5;
                                                var7 = var5;
                                                var8 = var1;
                                                var9 = !address(var8).code.length;
                                            
                                                if (var9) { revert(memory[0x00:0x00]); }
                                            
                                                var temp28;
                                                temp28, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                                                var4 = !temp28;
                                            
                                                if (!var4) {
                                                    var temp29 = memory[0x40:0x60];
                                                    var temp30 = returndata.length;
                                                    memory[0x40:0x60] = temp29 + (temp30 + 0x1f & ~0x1f);
                                                    var1 = 0x1b62;
                                                    var3 = temp29;
                                                    var2 = var3 + temp30;
                                                    var1 = func_3D95(var2, var3);
                                                
                                                    if (var1 == var0) {
                                                        var0 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var1 = 0x08ac39ca;
                                                        var temp31 = memory[0x40:0x60];
                                                        memory[temp31:temp31 + 0x20] = (var1 & 0xffffffff) << 0xe0;
                                                        var2 = temp31 + 0x04;
                                                        var3 = 0x20;
                                                        var4 = memory[0x40:0x60];
                                                        var5 = var2 - var4;
                                                        var6 = var4;
                                                        var7 = var0;
                                                        var8 = !address(var7).code.length;
                                                    
                                                        if (var8) { revert(memory[0x00:0x00]); }
                                                    
                                                        var temp32;
                                                        temp32, memory[var4:var4 + var3] = address(var7).staticcall.gas(msg.gas)(memory[var6:var6 + var5]);
                                                        var3 = !temp32;
                                                    
                                                        if (!var3) {
                                                            var temp33 = memory[0x40:0x60];
                                                            var temp34 = returndata.length;
                                                            memory[0x40:0x60] = temp33 + (temp34 + 0x1f & ~0x1f);
                                                            var0 = 0x1c40;
                                                            var2 = temp33;
                                                            var1 = var2 + temp34;
                                                            var0 = func_3D95(var1, var2);
                                                            var1 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                            var2 = 0xfcf49adf;
                                                            var temp35 = memory[0x40:0x60];
                                                            memory[temp35:temp35 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                                                            var3 = 0x1c99;
                                                            var4 = arg2;
                                                            var5 = temp35 + 0x04;
                                                            var3 = func_43E5(var4, var5);
                                                            var4 = 0x20;
                                                            var5 = memory[0x40:0x60];
                                                            var6 = var3 - var5;
                                                            var7 = var5;
                                                            var8 = var1;
                                                            var9 = !address(var8).code.length;
                                                        
                                                            if (var9) { revert(memory[0x00:0x00]); }
                                                        
                                                            var temp36;
                                                            temp36, memory[var5:var5 + var4] = address(var8).staticcall.gas(msg.gas)(memory[var7:var7 + var6]);
                                                            var4 = !temp36;
                                                        
                                                            if (!var4) {
                                                                var temp37 = memory[0x40:0x60];
                                                                var temp38 = returndata.length;
                                                                memory[0x40:0x60] = temp37 + (temp38 + 0x1f & ~0x1f);
                                                                var1 = 0x1ce9;
                                                                var3 = temp37;
                                                                var2 = var3 + temp38;
                                                                var1 = func_3D95(var2, var3);
                                                            
                                                                if (var1 == var0) {
                                                                    var0 = 0x00;
                                                                    var1 = var0;
                                                                    var2 = storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                    var3 = 0xee200473;
                                                                    var temp39 = memory[0x40:0x60];
                                                                    memory[temp39:temp39 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                                                    var4 = 0x1d87;
                                                                    var6 = temp39 + 0x04;
                                                                    var5 = arg2;
                                                                    var4 = func_43E5(var5, var6);
                                                                    var5 = 0x60;
                                                                    var6 = memory[0x40:0x60];
                                                                    var7 = var4 - var6;
                                                                    var8 = var6;
                                                                    var9 = var2;
                                                                    var var10 = !address(var9).code.length;
                                                                
                                                                    if (var10) { revert(memory[0x00:0x00]); }
                                                                
                                                                    var temp40;
                                                                    temp40, memory[var6:var6 + var5] = address(var9).staticcall.gas(msg.gas)(memory[var8:var8 + var7]);
                                                                    var5 = !temp40;
                                                                
                                                                    if (!var5) {
                                                                        var temp41 = memory[0x40:0x60];
                                                                        var temp42 = returndata.length;
                                                                        memory[0x40:0x60] = temp41 + (temp42 + 0x1f & ~0x1f);
                                                                        var2 = 0x1dd7;
                                                                        var4 = temp41;
                                                                        var3 = var4 + temp42;
                                                                        var2, var3, var4 = func_3DBE(var3, var4);
                                                                        var1 = var3;
                                                                        var0 = var2;
                                                                    
                                                                        if (var0 == 0x9ccc45e44802148c90adfc06c53ea2830921c3e2f194f9b669bdc882b5f7f20f) {
                                                                            var temp43 = memory[0x40:0x60];
                                                                            memory[0x40:0x60] = temp43 + 0x60;
                                                                            memory[temp43:temp43 + 0x20] = 0x23;
                                                                            memory[temp43 + 0x20:temp43 + 0x20 + 0x23] = code[0x4900:0x4923];
                                                                            var2 = temp43;
                                                                        
                                                                            if (!var1) {
                                                                                var2 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                                var3 = 0x8f50ff85;
                                                                                var4 = arg0;
                                                                                var5 = block.timestamp;
                                                                                var6 = 0x1ee8;
                                                                                var7 = 0x015180;
                                                                                var8 = block.timestamp;
                                                                                var6 = func_44F8(var7, var8);
                                                                                var temp44 = memory[0x40:0x60];
                                                                                memory[temp44:temp44 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                                                                var temp45 = var4;
                                                                                var4 = 0x1f09;
                                                                                var temp46 = var5;
                                                                                var5 = temp45;
                                                                                var temp47 = var6;
                                                                                var6 = temp46;
                                                                                var7 = temp47;
                                                                                var9 = temp44 + 0x04;
                                                                                var8 = 0x00;
                                                                                var4 = func_4452(var5, var6, var7, var8, var9);
                                                                                var5 = 0x00;
                                                                                var6 = memory[0x40:0x60];
                                                                                var7 = var4 - var6;
                                                                                var8 = var6;
                                                                                var9 = 0x00;
                                                                                var10 = var2;
                                                                                var var11 = !address(var10).code.length;
                                                                            
                                                                                if (var11) { revert(memory[0x00:0x00]); }
                                                                            
                                                                                var temp48;
                                                                                temp48, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                                                                                var5 = !temp48;
                                                                            
                                                                                if (!var5) {
                                                                                    var2 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                                    var3 = 0x8f50ff85;
                                                                                    var4 = arg1;
                                                                                    var5 = block.timestamp;
                                                                                    var6 = 0x1f88;
                                                                                    var8 = block.timestamp;
                                                                                    var7 = 0x015180;
                                                                                    var6 = func_44F8(var7, var8);
                                                                                    var temp49 = memory[0x40:0x60];
                                                                                    memory[temp49:temp49 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                                                                    var temp50 = var4;
                                                                                    var4 = 0x1fa9;
                                                                                    var temp51 = var5;
                                                                                    var5 = temp50;
                                                                                    var temp52 = var6;
                                                                                    var6 = temp51;
                                                                                    var7 = temp52;
                                                                                    var8 = 0x00;
                                                                                    var9 = temp49 + 0x04;
                                                                                    var4 = func_4452(var5, var6, var7, var8, var9);
                                                                                    var5 = 0x00;
                                                                                    var6 = memory[0x40:0x60];
                                                                                    var7 = var4 - var6;
                                                                                    var8 = var6;
                                                                                    var9 = 0x00;
                                                                                    var10 = var2;
                                                                                    var11 = !address(var10).code.length;
                                                                                
                                                                                    if (var11) { revert(memory[0x00:0x00]); }
                                                                                
                                                                                    var temp53;
                                                                                    temp53, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                                                                                    var5 = !temp53;
                                                                                
                                                                                    if (!var5) {
                                                                                        var2 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                                        var3 = 0x847e0204;
                                                                                        var4 = msg.sender;
                                                                                        var5 = 0x2022;
                                                                                        var6 = arg0;
                                                                                        var7 = arg1;
                                                                                        var5 = func_3640(var6, var7);
                                                                                        var temp54 = memory[0x40:0x60];
                                                                                        memory[temp54:temp54 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                                                                        var temp55 = var4;
                                                                                        var4 = 0x203f;
                                                                                        var temp56 = var5;
                                                                                        var5 = temp55;
                                                                                        var7 = temp54 + 0x04;
                                                                                        var6 = temp56;
                                                                                        var4 = func_421B(var5, var6, var7);
                                                                                        var5 = 0x00;
                                                                                        var6 = memory[0x40:0x60];
                                                                                        var7 = var4 - var6;
                                                                                        var8 = var6;
                                                                                        var9 = 0x00;
                                                                                        var10 = var2;
                                                                                        var11 = !address(var10).code.length;
                                                                                    
                                                                                        if (var11) { revert(memory[0x00:0x00]); }
                                                                                    
                                                                                        var temp57;
                                                                                        temp57, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                                                                                        var5 = !temp57;
                                                                                    
                                                                                        if (!var5) {
                                                                                            var2 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                                            var3 = 0xe69ec162;
                                                                                            var temp58 = memory[0x40:0x60];
                                                                                            memory[temp58:temp58 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                                                                            var4 = 0x20cc;
                                                                                            var5 = msg.sender;
                                                                                            var7 = temp58 + 0x04;
                                                                                            var6 = arg2;
                                                                                            var4 = func_4244(var5, var6, var7);
                                                                                            var5 = 0x00;
                                                                                            var6 = memory[0x40:0x60];
                                                                                            var7 = var4 - var6;
                                                                                            var8 = var6;
                                                                                            var9 = 0x00;
                                                                                            var10 = var2;
                                                                                            var11 = !address(var10).code.length;
                                                                                        
                                                                                            if (var11) { revert(memory[0x00:0x00]); }
                                                                                        
                                                                                            var temp59;
                                                                                            temp59, memory[var6:var6 + var5] = address(var10).call.gas(msg.gas).value(var9)(memory[var8:var8 + var7]);
                                                                                            var5 = !temp59;
                                                                                        
                                                                                            if (!var5) { return; }
                                                                                        
                                                                                            var temp60 = returndata.length;
                                                                                            memory[0x00:0x00 + temp60] = returndata[0x00:0x00 + temp60];
                                                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                                                        } else {
                                                                                            var temp61 = returndata.length;
                                                                                            memory[0x00:0x00 + temp61] = returndata[0x00:0x00 + temp61];
                                                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                                                        }
                                                                                    } else {
                                                                                        var temp62 = returndata.length;
                                                                                        memory[0x00:0x00 + temp62] = returndata[0x00:0x00 + temp62];
                                                                                        revert(memory[0x00:0x00 + returndata.length]);
                                                                                    }
                                                                                } else {
                                                                                    var temp63 = returndata.length;
                                                                                    memory[0x00:0x00 + temp63] = returndata[0x00:0x00 + temp63];
                                                                                    revert(memory[0x00:0x00 + returndata.length]);
                                                                                }
                                                                            } else {
                                                                                var temp64 = memory[0x40:0x60];
                                                                                memory[temp64:temp64 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                                var temp65 = var2;
                                                                                var2 = 0x1e91;
                                                                                var3 = temp65;
                                                                                var4 = temp64 + 0x04;
                                                                                var2 = func_42A3(var3, var4);
                                                                                var temp66 = memory[0x40:0x60];
                                                                                revert(memory[temp66:temp66 + var2 - temp66]);
                                                                            }
                                                                        } else {
                                                                            var temp67 = memory[0x40:0x60];
                                                                            memory[temp67:temp67 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                            var2 = 0x1e35;
                                                                            var3 = temp67 + 0x04;
                                                                            var2 = func_4365(var3);
                                                                            var temp68 = memory[0x40:0x60];
                                                                            revert(memory[temp68:temp68 + var2 - temp68]);
                                                                        }
                                                                    } else {
                                                                        var temp69 = returndata.length;
                                                                        memory[0x00:0x00 + temp69] = returndata[0x00:0x00 + temp69];
                                                                        revert(memory[0x00:0x00 + returndata.length]);
                                                                    }
                                                                } else {
                                                                    var temp70 = memory[0x40:0x60];
                                                                    memory[temp70:temp70 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                    var1 = temp70 + 0x04;
                                                                    var0 = 0x1d20;
                                                                    var0 = func_4385(var1);
                                                                    var temp71 = memory[0x40:0x60];
                                                                    revert(memory[temp71:temp71 + var0 - temp71]);
                                                                }
                                                            } else {
                                                                var temp72 = returndata.length;
                                                                memory[0x00:0x00 + temp72] = returndata[0x00:0x00 + temp72];
                                                                revert(memory[0x00:0x00 + returndata.length]);
                                                            }
                                                        } else {
                                                            var temp73 = returndata.length;
                                                            memory[0x00:0x00 + temp73] = returndata[0x00:0x00 + temp73];
                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                        }
                                                    } else {
                                                        var temp74 = memory[0x40:0x60];
                                                        memory[temp74:temp74 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                        var1 = temp74 + 0x04;
                                                        var0 = 0x1b99;
                                                        var0 = func_43C5(var1);
                                                        var temp75 = memory[0x40:0x60];
                                                        revert(memory[temp75:temp75 + var0 - temp75]);
                                                    }
                                                } else {
                                                    var temp76 = returndata.length;
                                                    memory[0x00:0x00 + temp76] = returndata[0x00:0x00 + temp76];
                                                    revert(memory[0x00:0x00 + returndata.length]);
                                                }
                                            } else {
                                                var temp77 = returndata.length;
                                                memory[0x00:0x00 + temp77] = returndata[0x00:0x00 + temp77];
                                                revert(memory[0x00:0x00 + returndata.length]);
                                            }
                                        } else {
                                            var temp78 = memory[0x40:0x60];
                                            memory[temp78:temp78 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                            var1 = temp78 + 0x04;
                                            var0 = 0x1a12;
                                            var0 = func_4345(var1);
                                            var temp79 = memory[0x40:0x60];
                                            revert(memory[temp79:temp79 + var0 - temp79]);
                                        }
                                    } else {
                                        var temp80 = returndata.length;
                                        memory[0x00:0x00 + temp80] = returndata[0x00:0x00 + temp80];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    }
                                } else {
                                    var temp81 = returndata.length;
                                    memory[0x00:0x00 + temp81] = returndata[0x00:0x00 + temp81];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var temp82 = memory[0x40:0x60];
                                memory[temp82:temp82 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                var temp83 = var0;
                                var0 = 0x188a;
                                var1 = temp83;
                                var2 = temp82 + 0x04;
                                var0 = func_42A3(var1, var2);
                                var temp84 = memory[0x40:0x60];
                                revert(memory[temp84:temp84 + var0 - temp84]);
                            }
                        } else {
                            var temp85 = returndata.length;
                            memory[0x00:0x00 + temp85] = returndata[0x00:0x00 + temp85];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var temp86 = memory[0x40:0x60];
                        memory[temp86:temp86 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var temp87 = var0;
                        var0 = 0x173b;
                        var1 = temp87;
                        var2 = temp86 + 0x04;
                        var0 = func_42A3(var1, var2);
                        var temp88 = memory[0x40:0x60];
                        revert(memory[temp88:temp88 + var0 - temp88]);
                    }
                } else {
                    var temp89 = returndata.length;
                    memory[0x00:0x00 + temp89] = returndata[0x00:0x00 + temp89];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp90 = memory[0x40:0x60];
                memory[temp90:temp90 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var temp91 = var0;
                var0 = 0x15ec;
                var1 = temp91;
                var2 = temp90 + 0x04;
                var0 = func_42A3(var1, var2);
                var temp92 = memory[0x40:0x60];
                revert(memory[temp92:temp92 + var0 - temp92]);
            }
        } else {
            var temp93 = returndata.length;
            memory[0x00:0x00 + temp93] = returndata[0x00:0x00 + temp93];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }