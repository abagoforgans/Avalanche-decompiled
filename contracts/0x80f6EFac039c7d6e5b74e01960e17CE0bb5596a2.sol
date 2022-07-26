contract main {




// =====================  Runtime code  =====================


address stor0;

function redeem(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'OWNER'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            call stor0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if return_data.size:
                _24 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_24] = return_data.size
                mem[_24 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'NOT SENT'
        else:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _32 = mem[_31]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _33 = mem[64]
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = _32
            _34 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_34 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_34 + 36 len 28]
            _37 = mem[_34]
            s = 0
            while s < _37:
                mem[s + _33 + 100] = mem[_34 + s + 32]
                s = s + 32
                continue 
            if ceil32(_37) <= _37:
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _37 + _33 + -mem[64] + 96]
                if return_data.size:
                    _45 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_45] = return_data.size
                    mem[_45 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_33 + _37 + 100] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _37 + _33 + -mem[64] + 96]
                if return_data.size:
                    _47 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_47] = return_data.size
                    mem[_47 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    staticcall address(call.data[35 len 20], mem[116 len 12]) >> 96.getReserves() with:
            gas 20000 wei
    require ext_call.return_data[0] == Mask(112, 0, call.data[49 len 6], mem[116 len 12]) >> 144
    if 0xa9059cbb00000000000000000000000000000000000000000000000000000000 > !(uint8(ext_call.return_data[10 len 22]) >> 248):
        revert with 'NH{q', 17
    call address(call.data[4 len 20], mem[116 len 12]) >> 96 with:
       funct Mask(32, 224, (uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) >> 224
         gas 10^6 wei
        args Mask(256, -96, call.data[35 len 20], mem[116 len 12]) << 96, Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
    if 0x22c0d9f00000000000000000000000000000000000000000000000000000000 > !uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000):
        revert with 'NH{q', 17
    if not bool(uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
        call address(call.data[35 len 20], mem[116 len 12]) >> 96 with:
           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
             gas 10^6 wei
            args 0, Mask(112, -64, mem[116 len 12]) << 208, Mask(256, -96, call.data[69 len 20], mem[124 len 12]) << 96, 128, 0
        require ext_call.success
        if calldata.size <= 117:
            if not Mask(1, 1, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args 0, Mask(256, -144, call.data[89 len 14], 0) << 144, this.address, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], 0) << 144, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, 0, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
            else:
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args Mask(256, -144, call.data[89 len 14], 0) << 144, 0, this.address, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], 0) << 256, this.address, 128, 0
                            else:
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, -112, call.data[89 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], 0) << 256, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], 0) << 256, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(112, -112, call.data[89 len 14], 0) << 256, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(112, -112, call.data[89 len 14], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) << 144, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require 0 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
        else:
            if not Mask(1, 1, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args 0, Mask(256, -144, call.data[89 len 14], call.data[117 len 6], 0) << 144, Mask(256, -96, call.data[103 len 20], 0) << 96, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], call.data[117 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], 0) << 144, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, 0, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
            else:
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args Mask(256, -144, call.data[89 len 14], call.data[117 len 6], 0) << 144, 0, Mask(256, -96, call.data[103 len 20], 0) << 96, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], call.data[117 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                            else:
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require 0 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
    else:
        call address(call.data[35 len 20], mem[116 len 12]) >> 96 with:
           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
             gas 10^6 wei
            args Mask(112, -64, mem[116 len 12]) << 208, 0, Mask(256, -96, call.data[69 len 20], mem[124 len 12]) << 96, 128, 0
        require ext_call.success
        if calldata.size <= 117:
            call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                 gas 10^6 wei
                args 0, 0, this.address, 128, 0
            require ext_call.success
            if not Mask(1, 1, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require 0 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], 0) << 144, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, 0, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
            else:
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require 0 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call this.address with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 185:
                                require ext_call.success
                                require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                else:
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], 0) << 144, this.address, 128, 0
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], 0) << 144, 0, this.address, 128, 0
                        require ext_call.success
                        if calldata.size <= 151:
                            require ext_call.success
                            if calldata.size <= 185:
                                require ext_call.success
                                require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                else:
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if calldata.size <= 185:
                                if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call address(call.data[171 len 20], 0) >> 96 with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call address(call.data[171 len 20], 0) >> 96 with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    call this.address with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call address(call.data[171 len 20], 0) >> 96 with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                        else:
                                            call address(call.data[171 len 20], 0) >> 96 with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call this.address with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, 0, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
        else:
            if not Mask(1, 1, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args 0, Mask(256, -144, call.data[89 len 14], call.data[117 len 6], 0) << 144, Mask(256, -96, call.data[103 len 20], 0) << 96, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], call.data[117 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                            else:
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], 0) << 144, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], 0) << 144, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[123 len 14], call.data[151 len 6], 0) << 144, 0, Mask(256, -96, call.data[137 len 20], 0) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[123 len 14], call.data[151 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) << 256, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, -112, call.data[123 len 14], call.data[151 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], Mask(96, -112, call.data[123 len 14], call.data[151 len 6], 0) << 112) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[123 len 14], call.data[151 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
            else:
                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                     gas 10^6 wei
                    args Mask(256, -144, call.data[89 len 14], call.data[117 len 6], 0) << 144, 0, Mask(256, -96, call.data[103 len 20], 0) << 96, 128, 0
                require ext_call.success
                if calldata.size <= 117:
                    require ext_call.success
                    if calldata.size <= 151:
                        require ext_call.success
                        if calldata.size <= 185:
                            require ext_call.success
                            require Mask(112, 0, call.data[89 len 14], call.data[117 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                            else:
                                call address(call.data[103 len 20], 0) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if calldata.size <= 185:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args 0, Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                call address(call.data[69 len 20], mem[124 len 12]) >> 96 with:
                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                     gas 10^6 wei
                                    args Mask(256, -144, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[185 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[171 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                else:
                    if calldata.size <= 151:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) << 256, 0, this.address, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, -112, call.data[89 len 14], call.data[117 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require Mask(112, 0, call.data[157 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call this.address with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                    else:
                        if not Mask(1, 2, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args 0, Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], 0) << 144, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], 0) << 256, this.address, 128, 0
                                            else:
                                                call this.address with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                        else:
                            call address(call.data[103 len 20], 0) >> 96 with:
                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                 gas 10^6 wei
                                args Mask(256, -144, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 144, 0, Mask(256, -96, call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) << 96, 128, 0
                            require ext_call.success
                            if calldata.size <= 151:
                                require ext_call.success
                                if calldata.size <= 185:
                                    require ext_call.success
                                    require Mask(112, 0, call.data[151 len 6], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, this.address, 128, 0
                                    else:
                                        call address(call.data[103 len 20], 0) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) << 144, 0, this.address, 128, 0
                                    require ext_call.success
                                    require Mask(112, 0, call.data[191 len 14], Mask(32, -112, call.data[89 len 14], call.data[117 len 6], 0) << 224) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                            else:
                                if calldata.size <= 185:
                                    call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                       funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                         gas 10^6 wei
                                        args 0, 0, this.address, 128, 0
                                    require ext_call.success
                                    if calldata.size <= 185:
                                        require ext_call.success
                                        require 0 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                        else:
                                            call this.address with:
                                               funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                 gas 10^6 wei
                                                args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                        require ext_call.success
                                        require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                else:
                                    if not Mask(1, 3, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args 0, Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(256, -144, call.data[191 len 14], 0) << 144, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(256, -144, call.data[191 len 14], 0) << 144, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, 0, call.data[191 len 14], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                    else:
                                        call address(call.data[137 len 20], Mask(96, -112, call.data[89 len 14], call.data[117 len 6], 0) << 112) >> 96 with:
                                           funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                             gas 10^6 wei
                                            args Mask(256, -144, call.data[157 len 14], call.data[185 len 6], 0) << 144, 0, Mask(256, -96, call.data[171 len 20], 0) << 96, 128, 0
                                        require ext_call.success
                                        if calldata.size <= 185:
                                            require ext_call.success
                                            require Mask(112, 0, call.data[157 len 14], call.data[185 len 6], 0) >> 144 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
                                        else:
                                            if not Mask(1, 4, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000):
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args 0, Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, this.address, 128, 0
                                            else:
                                                call address(call.data[171 len 20], 0) >> 96 with:
                                                   funct Mask(32, 224, uint8((uint8(ext_call.return_data[10 len 22]) >> 248) - 0x56fa634500000000000000000000000000000000000000000000000000000000) + 0x22c0d9f00000000000000000000000000000000000000000000000000000000) >> 224
                                                     gas 10^6 wei
                                                    args Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) << 256, 0, this.address, 128, 0
                                            require ext_call.success
                                            require Mask(112, -112, call.data[157 len 14], call.data[185 len 6], 0) >> 32 >= Mask(80, 0, ext_call.return_data[10 len 22]) >> 176
}



}
