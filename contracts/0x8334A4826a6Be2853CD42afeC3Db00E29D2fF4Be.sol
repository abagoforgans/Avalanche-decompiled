contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;

function _fallback() payable {
    revert
}

function addWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    stor2[address(arg1)] = 1
}

function removeWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    stor2[address(arg1)] = 0
}

function withdrawEth() {
    require msg.sender == stor1
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function bulkAddWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function bulkApprove(address arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require stor2[msg.sender]
    idx = 0
    while idx < arg2.length:
        mem[100] = address(cd[((32 * idx) + arg2 + 36)])
        mem[132] = -1
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg2 + 36)]), -1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_026d5e27(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    require stor2[msg.sender]
    if ('cd', 100).length <= 0:
        revert with 0, 'SafeMath: modulo by zero'
    require ('cd', 100).length
    require not cd[68] % ('cd', 100).length
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    require cd[68] <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = cd[68]
    mem[64] = (32 * ('cd', 4).length) + (32 * cd[68]) + 160
    if not cd[68]:
        if ('cd', 100).length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ('cd', 100).length
        idx = 0
        while idx < ('cd', 100).length:
            s = 0
            t = 0
            while s < cd[68] / ('cd', 100).length:
                require idx < ('cd', 100).length
                require t < cd[68]
                mem[(32 * t) + (32 * ('cd', 4).length) + 160] = address(cd[((32 * idx) + cd[100] + 36)])
                if t + 1 < t:
                    revert with 0, 'ds-math-add-overflow'
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            continue 
        if cd[68] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require cd[68]
        idx = 0
        while idx < cd[68]:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _52 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _53 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 68] = address(_52)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
               value cd[132] / cd[68] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _53 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[(32 * ('cd', 4).length) + 160 len 32 * cd[68]] = call.data[calldata.size len 32 * cd[68]]
        if ('cd', 100).length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ('cd', 100).length
        idx = 0
        while idx < ('cd', 100).length:
            s = 0
            t = 0
            while s < cd[68] / ('cd', 100).length:
                require idx < ('cd', 100).length
                require t < cd[68]
                mem[(32 * t) + (32 * ('cd', 4).length) + 160] = address(cd[((32 * idx) + cd[100] + 36)])
                if t + 1 < t:
                    revert with 0, 'ds-math-add-overflow'
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            continue 
        if cd[68] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require cd[68]
        idx = 0
        while idx < cd[68]:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _57 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _58 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 68] = address(_57)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            s = 0
            while s < 32 * mem[96]:
                mem[s + mem[64] + 164] = mem[s + 128]
                s = s + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
               value cd[132] / cd[68] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _58 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_83aecbb3(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    require stor2[msg.sender]
    if ('cd', 100).length <= 0:
        revert with 0, 'SafeMath: modulo by zero'
    require ('cd', 100).length
    require not cd[68] % ('cd', 100).length
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    require cd[68] <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = cd[68]
    mem[64] = (32 * ('cd', 4).length) + (32 * cd[68]) + 160
    if not cd[68]:
        if ('cd', 100).length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ('cd', 100).length
        idx = 0
        while idx < ('cd', 100).length:
            s = 0
            t = 0
            while s < cd[68] / ('cd', 100).length:
                require idx < ('cd', 100).length
                require t < cd[68]
                mem[(32 * t) + (32 * ('cd', 4).length) + 160] = address(cd[((32 * idx) + cd[100] + 36)])
                if t + 1 < t:
                    revert with 0, 'ds-math-add-overflow'
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            continue 
        idx = 0
        s = cd[132]
        while idx < cd[68]:
            require ext_code.size(stor0)
            staticcall stor0.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[96] < 2:
                revert with 0, 'JoeLibrary: INVALID_PATH'
            _2466 = mem[96]
            require mem[96] <= test266151307()
            _2472 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _2466) + 32
            if not _2466:
                require mem[_2472] - 1 < mem[_2472]
                mem[(32 * mem[_2472] - 1) + _2472 + 32] = cd[36]
                t = mem[96] - 1
                while t:
                    require t - 1 < mem[96]
                    _3679 = mem[(32 * t - 1) + 128]
                    require t < mem[96]
                    _3691 = mem[(32 * t) + 128]
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                            if not mem[(32 * t - 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3834 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                            mem[mem[64] + 52] = address(_3691)
                            _3835 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3837 = sha3(mem[_3835 + 32 len mem[_3835]])
                            mem[_3834 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3834 + 105] = address(ext_call.return_data[0])
                            mem[_3834 + 125] = _3837
                            mem[_3834 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3834 + 72] = 85
                            mem[64] = _3834 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3837, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3837, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3834 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2472]
                            if mem[(32 * t) + _2472 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3834 + 295 len 26]
                            if address(_3679) == address(_3679):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3834 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3834 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3834 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3834 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if not mem[(32 * t) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3841 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                            mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                            _3842 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3844 = sha3(mem[_3842 + 32 len mem[_3842]])
                            mem[_3841 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3841 + 105] = address(ext_call.return_data[0])
                            mem[_3841 + 125] = _3844
                            mem[_3841 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3841 + 72] = 85
                            mem[64] = _3841 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3844, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3844, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3841 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2472]
                            if mem[(32 * t) + _2472 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3841 + 295 len 26]
                            if address(_3679) == address(_3679):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3841 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3841 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3841 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3841 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                            if not mem[(32 * t - 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3848 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                            mem[mem[64] + 52] = address(_3691)
                            _3849 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3851 = sha3(mem[_3849 + 32 len mem[_3849]])
                            mem[_3848 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3848 + 105] = address(ext_call.return_data[0])
                            mem[_3848 + 125] = _3851
                            mem[_3848 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3848 + 72] = 85
                            mem[64] = _3848 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3851, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3851, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3848 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2472]
                            if mem[(32 * t) + _2472 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3848 + 295 len 26]
                            if address(_3691) == address(_3679):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3848 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3848 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3848 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3848 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if not mem[(32 * t) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3855 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                            mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                            _3856 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3858 = sha3(mem[_3856 + 32 len mem[_3856]])
                            mem[_3855 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3855 + 105] = address(ext_call.return_data[0])
                            mem[_3855 + 125] = _3858
                            mem[_3855 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3855 + 72] = 85
                            mem[64] = _3855 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3858, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3858, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3855 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2472]
                            if mem[(32 * t) + _2472 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3855 + 295 len 26]
                            if address(_3691) == address(_3679):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3855 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3855 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3855 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3855 + 291 len 30]
                                if not mem[(32 * t) + _2472 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2472 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2472]
                                    mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                    t = t - 1
                    continue 
                require 0 < mem[_2472]
                _3690 = mem[_2472 + 32]
                if mem[_2472 + 32] > s:
                    revert with 0, 'not enough monies'
                if s - mem[_2472 + 32] > s:
                    revert with 0, 'ds-math-sub-underflow'
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _3726 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _3727 = mem[64]
                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 68] = address(_3726)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 164] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                   value _3690 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _3727 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4870 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4874 = mem[_4870]
                require mem[_4870] <= 4294967296
                require mem[_4870] + 32 <= return_data.size
                require mem[_4870 + mem[_4870]] <= 4294967296 and mem[_4870] + (32 * mem[_4870 + mem[_4870]]) + 32 <= return_data.size
                mem[_4870 + ceil32(return_data.size)] = mem[_4870 + mem[_4870]]
                _4886 = mem[_4870 + _4874]
                t = 0
                while t < 32 * _4886:
                    mem[t + _4870 + ceil32(return_data.size) + 32] = mem[t + _4870 + _4874 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4886) + _4870 + ceil32(return_data.size) + 32
                idx = idx + 1
                s = s - _3690
                continue 
            mem[_2472 + 32 len 32 * _2466] = call.data[calldata.size len 32 * _2466]
            require mem[_2472] - 1 < mem[_2472]
            mem[(32 * mem[_2472] - 1) + _2472 + 32] = cd[36]
            t = mem[96] - 1
            while t:
                require t - 1 < mem[96]
                require t < mem[96]
                _3693 = mem[(32 * t) + 128]
                if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                    if not mem[(32 * t - 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3862 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                        mem[mem[64] + 52] = address(_3693)
                        _3863 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3865 = sha3(mem[_3863 + 32 len mem[_3863]])
                        mem[_3862 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3862 + 105] = address(ext_call.return_data[0])
                        mem[_3862 + 125] = _3865
                        mem[_3862 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3862 + 72] = 85
                        mem[64] = _3862 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3865, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3865, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3862 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2472]
                        if mem[(32 * t) + _2472 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3862 + 295 len 26]
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3862 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3862 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3862 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3862 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3869 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                        mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                        _3870 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3872 = sha3(mem[_3870 + 32 len mem[_3870]])
                        mem[_3869 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3869 + 105] = address(ext_call.return_data[0])
                        mem[_3869 + 125] = _3872
                        mem[_3869 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3869 + 72] = 85
                        mem[64] = _3869 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3872, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3872, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3869 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2472]
                        if mem[(32 * t) + _2472 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3869 + 295 len 26]
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3869 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3869 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3869 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3869 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                else:
                    if not mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3876 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                        mem[mem[64] + 52] = address(_3693)
                        _3877 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3879 = sha3(mem[_3877 + 32 len mem[_3877]])
                        mem[_3876 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3876 + 105] = address(ext_call.return_data[0])
                        mem[_3876 + 125] = _3879
                        mem[_3876 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3876 + 72] = 85
                        mem[64] = _3876 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3879, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3879, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3876 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2472]
                        if mem[(32 * t) + _2472 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3876 + 295 len 26]
                        if address(_3693) == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3876 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3876 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3876 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3876 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3883 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                        mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                        _3884 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3886 = sha3(mem[_3884 + 32 len mem[_3884]])
                        mem[_3883 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3883 + 105] = address(ext_call.return_data[0])
                        mem[_3883 + 125] = _3886
                        mem[_3883 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3883 + 72] = 85
                        mem[64] = _3883 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3886, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3886, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3883 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2472]
                        if mem[(32 * t) + _2472 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3883 + 295 len 26]
                        if address(_3693) == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3883 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3883 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3883 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3883 + 291 len 30]
                            if not mem[(32 * t) + _2472 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2472 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / mem[(32 * t) + _2472 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2472 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2472]
                                mem[(32 * t - 1) + _2472 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2472 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2472 + 32])) + 1
                t = t - 1
                continue 
            require 0 < mem[_2472]
            _3692 = mem[_2472 + 32]
            if mem[_2472 + 32] > s:
                revert with 0, 'not enough monies'
            if s - mem[_2472 + 32] > s:
                revert with 0, 'ds-math-sub-underflow'
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _3730 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _3731 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 68] = address(_3730)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            t = 0
            while t < 32 * mem[96]:
                mem[t + mem[64] + 164] = mem[t + 128]
                t = t + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
               value _3692 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _3731 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4871 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4876 = mem[_4871]
            require mem[_4871] <= 4294967296
            require mem[_4871] + 32 <= return_data.size
            require mem[_4871 + mem[_4871]] <= 4294967296 and mem[_4871] + (32 * mem[_4871 + mem[_4871]]) + 32 <= return_data.size
            mem[_4871 + ceil32(return_data.size)] = mem[_4871 + mem[_4871]]
            _4887 = mem[_4871 + _4876]
            t = 0
            while t < 32 * _4887:
                mem[t + _4871 + ceil32(return_data.size) + 32] = mem[t + _4871 + _4876 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _4887) + _4871 + ceil32(return_data.size) + 32
            idx = idx + 1
            s = s - _3692
            continue 
    else:
        mem[(32 * ('cd', 4).length) + 160 len 32 * cd[68]] = call.data[calldata.size len 32 * cd[68]]
        if ('cd', 100).length <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ('cd', 100).length
        idx = 0
        while idx < ('cd', 100).length:
            s = 0
            t = 0
            while s < cd[68] / ('cd', 100).length:
                require idx < ('cd', 100).length
                require t < cd[68]
                mem[(32 * t) + (32 * ('cd', 4).length) + 160] = address(cd[((32 * idx) + cd[100] + 36)])
                if t + 1 < t:
                    revert with 0, 'ds-math-add-overflow'
                s = s + 1
                t = t + 1
                continue 
            idx = idx + 1
            continue 
        idx = 0
        s = cd[132]
        while idx < cd[68]:
            require ext_code.size(stor0)
            staticcall stor0.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[96] < 2:
                revert with 0, 'JoeLibrary: INVALID_PATH'
            _2469 = mem[96]
            require mem[96] <= test266151307()
            _2473 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _2469) + 32
            if not _2469:
                require mem[_2473] - 1 < mem[_2473]
                mem[(32 * mem[_2473] - 1) + _2473 + 32] = cd[36]
                t = mem[96] - 1
                while t:
                    require t - 1 < mem[96]
                    require t < mem[96]
                    _3695 = mem[(32 * t) + 128]
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                            if not mem[(32 * t - 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3890 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                            mem[mem[64] + 52] = address(_3695)
                            _3891 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3893 = sha3(mem[_3891 + 32 len mem[_3891]])
                            mem[_3890 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3890 + 105] = address(ext_call.return_data[0])
                            mem[_3890 + 125] = _3893
                            mem[_3890 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3890 + 72] = 85
                            mem[64] = _3890 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3893, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3893, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3890 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2473]
                            if mem[(32 * t) + _2473 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3890 + 295 len 26]
                            if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3890 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3890 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3890 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3890 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if not mem[(32 * t) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3897 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                            mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                            _3898 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3900 = sha3(mem[_3898 + 32 len mem[_3898]])
                            mem[_3897 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3897 + 105] = address(ext_call.return_data[0])
                            mem[_3897 + 125] = _3900
                            mem[_3897 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3897 + 72] = 85
                            mem[64] = _3897 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3900, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3900, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3897 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2473]
                            if mem[(32 * t) + _2473 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3897 + 295 len 26]
                            if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3897 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3897 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3897 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3897 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                            if not mem[(32 * t - 1) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3904 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                            mem[mem[64] + 52] = address(_3695)
                            _3905 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3907 = sha3(mem[_3905 + 32 len mem[_3905]])
                            mem[_3904 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3904 + 105] = address(ext_call.return_data[0])
                            mem[_3904 + 125] = _3907
                            mem[_3904 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3904 + 72] = 85
                            mem[64] = _3904 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3907, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3907, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3904 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2473]
                            if mem[(32 * t) + _2473 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3904 + 295 len 26]
                            if address(_3695) == mem[(32 * t - 1) + 140 len 20]:
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3904 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3904 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3904 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3904 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if not mem[(32 * t) + 140 len 20]:
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            _3911 = mem[64]
                            mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                            mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                            _3912 = mem[64]
                            mem[mem[64]] = 40
                            mem[64] = mem[64] + 72
                            _3914 = sha3(mem[_3912 + 32 len mem[_3912]])
                            mem[_3911 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                            mem[_3911 + 105] = address(ext_call.return_data[0])
                            mem[_3911 + 125] = _3914
                            mem[_3911 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                            mem[_3911 + 72] = 85
                            mem[64] = _3911 + 189
                            require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3914, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                            staticcall address(sha3(0, address(ext_call.return_data[0]), _3914, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                    gas gas_remaining wei
                            mem[_3911 + 189 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            require t < mem[_2473]
                            if mem[(32 * t) + _2473 + 32] <= 0:
                                revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3911 + 295 len 26]
                            if address(_3695) == mem[(32 * t - 1) + 140 len 20]:
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3911 + 291 len 30]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3911 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3911 + 291 len 30]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3911 + 291 len 30]
                                if not mem[(32 * t) + _2473 + 32]:
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                                else:
                                    require mem[(32 * t) + _2473 + 32]
                                    if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                        revert with 0, 'ds-math-sub-underflow'
                                    if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                    if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                        revert with 0, 'ds-math-add-overflow'
                                    require t - 1 < mem[_2473]
                                    mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                    t = t - 1
                    continue 
                require 0 < mem[_2473]
                _3694 = mem[_2473 + 32]
                if mem[_2473 + 32] > s:
                    revert with 0, 'not enough monies'
                if s - mem[_2473 + 32] > s:
                    revert with 0, 'ds-math-sub-underflow'
                require idx < mem[(32 * ('cd', 4).length) + 128]
                _3734 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                _3735 = mem[64]
                mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 68] = address(_3734)
                mem[mem[64] + 100] = block.timestamp
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                t = 0
                while t < 32 * mem[96]:
                    mem[t + mem[64] + 164] = mem[t + 128]
                    t = t + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.mem[mem[64] len 4] with:
                   value _3694 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (32 * mem[96]) + _3735 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4872 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4878 = mem[_4872]
                require mem[_4872] <= 4294967296
                require mem[_4872] + 32 <= return_data.size
                require mem[_4872 + mem[_4872]] <= 4294967296 and mem[_4872] + (32 * mem[_4872 + mem[_4872]]) + 32 <= return_data.size
                mem[_4872 + ceil32(return_data.size)] = mem[_4872 + mem[_4872]]
                _4888 = mem[_4872 + _4878]
                t = 0
                while t < 32 * _4888:
                    mem[t + _4872 + ceil32(return_data.size) + 32] = mem[t + _4872 + _4878 + 32]
                    t = t + 32
                    continue 
                mem[64] = (32 * _4888) + _4872 + ceil32(return_data.size) + 32
                idx = idx + 1
                s = s - _3694
                continue 
            mem[_2473 + 32 len 32 * _2469] = call.data[calldata.size len 32 * _2469]
            require mem[_2473] - 1 < mem[_2473]
            mem[(32 * mem[_2473] - 1) + _2473 + 32] = cd[36]
            t = mem[96] - 1
            while t:
                require t - 1 < mem[96]
                require t < mem[96]
                _3697 = mem[(32 * t) + 128]
                if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                    if not mem[(32 * t - 1) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3918 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                        mem[mem[64] + 52] = address(_3697)
                        _3919 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3921 = sha3(mem[_3919 + 32 len mem[_3919]])
                        mem[_3918 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3918 + 105] = address(ext_call.return_data[0])
                        mem[_3918 + 125] = _3921
                        mem[_3918 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3918 + 72] = 85
                        mem[64] = _3918 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3921, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3921, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3918 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2473]
                        if mem[(32 * t) + _2473 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3918 + 295 len 26]
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3918 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3918 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3918 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3918 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3925 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                        mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                        _3926 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3928 = sha3(mem[_3926 + 32 len mem[_3926]])
                        mem[_3925 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3925 + 105] = address(ext_call.return_data[0])
                        mem[_3925 + 125] = _3928
                        mem[_3925 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3925 + 72] = 85
                        mem[64] = _3925 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3928, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3928, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3925 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2473]
                        if mem[(32 * t) + _2473 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3925 + 295 len 26]
                        if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3925 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3925 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3925 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3925 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                else:
                    if not mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    if mem[(32 * t - 1) + 140 len 20] == mem[(32 * t) + 140 len 20]:
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if mem[(32 * t - 1) + 140 len 20] < mem[(32 * t) + 140 len 20]:
                        if not mem[(32 * t - 1) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3932 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t - 1) + 128])
                        mem[mem[64] + 52] = address(_3697)
                        _3933 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3935 = sha3(mem[_3933 + 32 len mem[_3933]])
                        mem[_3932 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3932 + 105] = address(ext_call.return_data[0])
                        mem[_3932 + 125] = _3935
                        mem[_3932 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3932 + 72] = 85
                        mem[64] = _3932 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3935, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3935, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3932 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2473]
                        if mem[(32 * t) + _2473 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3932 + 295 len 26]
                        if address(_3697) == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3932 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3932 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3932 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3932 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                    else:
                        if not mem[(32 * t) + 140 len 20]:
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        _3939 = mem[64]
                        mem[mem[64] + 32] = address(mem[(32 * t) + 128])
                        mem[mem[64] + 52] = address(mem[(32 * t - 1) + 128])
                        _3940 = mem[64]
                        mem[mem[64]] = 40
                        mem[64] = mem[64] + 72
                        _3942 = sha3(mem[_3940 + 32 len mem[_3940]])
                        mem[_3939 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_3939 + 105] = address(ext_call.return_data[0])
                        mem[_3939 + 125] = _3942
                        mem[_3939 + 157] = 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91
                        mem[_3939 + 72] = 85
                        mem[64] = _3939 + 189
                        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), _3942, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
                        staticcall address(sha3(0, address(ext_call.return_data[0]), _3942, 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).getReserves() with:
                                gas gas_remaining wei
                        mem[_3939 + 189 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require t < mem[_2473]
                        if mem[(32 * t) + _2473 + 32] <= 0:
                            revert with 0, 32, 38, 0x594a6f654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e, mem[_3939 + 295 len 26]
                        if address(_3697) == mem[(32 * t - 1) + 140 len 20]:
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3939 + 291 len 30]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3939 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[50 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[18 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[50 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                        else:
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3939 + 291 len 30]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0, 32, 34, 0xfe4a6f654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3939 + 291 len 30]
                            if not mem[(32 * t) + _2473 + 32]:
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                            else:
                                require mem[(32 * t) + _2473 + 32]
                                if ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / mem[(32 * t) + _2473 + 32] != ext_call.return_data[50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / 1000 != ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32] > ext_call.return_data[18 len 14]:
                                    revert with 0, 'ds-math-sub-underflow'
                                if (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]) / 997 != ext_call.return_data[18 len 14] - mem[(32 * t) + _2473 + 32]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])
                                if (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1 < 1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32]):
                                    revert with 0, 'ds-math-add-overflow'
                                require t - 1 < mem[_2473]
                                mem[(32 * t - 1) + _2473 + 32] = (1000 * ext_call.return_data[50 len 14] * mem[(32 * t) + _2473 + 32] / (997 * ext_call.return_data[18 len 14]) - (997 * mem[(32 * t) + _2473 + 32])) + 1
                t = t - 1
                continue 
            require 0 < mem[_2473]
            _3696 = mem[_2473 + 32]
            if mem[_2473 + 32] > s:
                revert with 0, 'not enough monies'
            if s - mem[_2473 + 32] > s:
                revert with 0, 'ds-math-sub-underflow'
            require idx < mem[(32 * ('cd', 4).length) + 128]
            _3738 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            _3739 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 68] = address(_3738)
            mem[mem[64] + 100] = block.timestamp
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            t = 0
            while t < 32 * mem[96]:
                mem[t + mem[64] + 164] = mem[t + 128]
                t = t + 32
                continue 
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
               value _3696 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * mem[96]) + _3739 + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4873 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4880 = mem[_4873]
            require mem[_4873] <= 4294967296
            require mem[_4873] + 32 <= return_data.size
            require mem[_4873 + mem[_4873]] <= 4294967296 and mem[_4873] + (32 * mem[_4873 + mem[_4873]]) + 32 <= return_data.size
            mem[_4873 + ceil32(return_data.size)] = mem[_4873 + mem[_4873]]
            _4889 = mem[_4873 + _4880]
            t = 0
            while t < 32 * _4889:
                mem[t + _4873 + ceil32(return_data.size) + 32] = mem[t + _4873 + _4880 + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _4889) + _4873 + ceil32(return_data.size) + 32
            idx = idx + 1
            s = s - _3696
            continue 
}



}
