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
                _26 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_26] = return_data.size
                mem[_26 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_33]
            require mem[_33] == mem[_33]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _35 = mem[64]
            mem[mem[64] + 36] = stor0
            mem[mem[64] + 68] = _34
            _36 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_36 + 32] = mem[_36 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _39 = mem[_36]
            s = 0
            while s < _39:
                mem[_35 + s + 100] = mem[_36 + s + 32]
                s = s + 32
                continue 
            if ceil32(_39) <= _39:
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _35 + _39 + -mem[64] + 96]
                if return_data.size:
                    _47 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_47] = return_data.size
                    mem[_47 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_35 + _39 + 100] = 0
                call address(cd[((32 * idx) + arg1 + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _35 + _39 + -mem[64] + 96]
                if return_data.size:
                    _49 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_49] = return_data.size
                    mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    call address(call.data[4 len 20], mem[212 len 12]) >> 96.0xa9059cbb with:
         gas 10^6 wei
        args Mask(256, -96, call.data[44 len 20], mem[212 len 12]) << 96, uint64(mem[200 len 24]) >> 192
    staticcall address(call.data[44 len 20], mem[212 len 12]) >> 96.getReserves() with:
            gas 20000 wei
    if Mask(256, -192, mem[200 len 24]) and 0 > -1 / uint64(mem[200 len 24]) >> 192:
        revert with 'NH{q', 17
    if 0 and Mask(112, 0, ext_call.return_data[32]) > -1 / 0:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if 10000 * Mask(112, 0, ext_call.return_data[0]) > -1:
        revert with 'NH{q', 17
    if not 10000 * Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    call address(call.data[44 len 20], mem[212 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas 10^6 wei
        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), Mask(256, -96, call.data[86 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
    staticcall address(call.data[86 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
            gas 20000 wei
    if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / 0 / 10000 * Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if 0 and Mask(112, 0, ext_call.return_data[32]) > -1 / 0:
        revert with 'NH{q', 17
    if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if 10000 * Mask(112, 0, ext_call.return_data[0]) > -1:
        revert with 'NH{q', 17
    if not 10000 * Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if calldata.size <= 108:
        call address(call.data[86 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas 10^6 wei
            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), this.address, 128, 0
        if calldata.size > 108:
            staticcall this.address.getReserves() with:
                    gas 20000 wei
            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / 0 / 10000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 0 and ext_call.return_data[32] > -1 / 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            if not 10000 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if calldata.size <= 150:
                call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 10^6 wei
                    args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                if calldata.size > 150:
                    staticcall this.address.getReserves() with:
                            gas 20000 wei
                    if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 and ext_call.return_data[32] > -1 / 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10000 * ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    if not 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if calldata.size <= 192:
                        call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                        if calldata.size > 192:
                            staticcall this.address.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                    else:
                        call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[212 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                        if calldata.size > 192:
                            staticcall address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
            else:
                call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 10^6 wei
                    args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[170 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                if calldata.size > 150:
                    staticcall address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                            gas 20000 wei
                    if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 and ext_call.return_data[32] > -1 / 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10000 * ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    if not 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if calldata.size <= 192:
                        call address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                        if calldata.size > 192:
                            staticcall this.address.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                    else:
                        call address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[212 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                        if calldata.size > 192:
                            staticcall address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
    else:
        call address(call.data[86 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas 10^6 wei
            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), Mask(256, -96, call.data[128 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
        if calldata.size > 108:
            staticcall address(call.data[128 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                    gas 20000 wei
            if 0 / 10000 * Mask(112, 0, ext_call.return_data[0]) and 0 > -1 / 0 / 10000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 0 and ext_call.return_data[32] > -1 / 0:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[0] > -1:
                revert with 'NH{q', 17
            if not 10000 * ext_call.return_data[0]:
                revert with 'NH{q', 18
            if calldata.size <= 150:
                call address(call.data[128 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 10^6 wei
                    args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                if calldata.size > 150:
                    staticcall this.address.getReserves() with:
                            gas 20000 wei
                    if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 and ext_call.return_data[32] > -1 / 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10000 * ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    if not 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if calldata.size <= 192:
                        call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                        if calldata.size > 192:
                            staticcall this.address.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                    else:
                        call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[212 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                        if calldata.size > 192:
                            staticcall address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
            else:
                call address(call.data[128 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas 10^6 wei
                    args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[170 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                if calldata.size > 150:
                    staticcall address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                            gas 20000 wei
                    if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 and ext_call.return_data[32] > -1 / 0:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10000 * ext_call.return_data[0] > -1:
                        revert with 'NH{q', 17
                    if not 10000 * ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if calldata.size <= 192:
                        call address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                        if calldata.size > 192:
                            staticcall this.address.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call this.address.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
                    else:
                        call address(call.data[170 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas 10^6 wei
                            args 0, 0 / 10000 * ext_call.return_data[0], Mask(256, -96, call.data[212 len 20], ext_call.return_data[20 len 12]) << 96, 128, 0
                        if calldata.size > 192:
                            staticcall address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.getReserves() with:
                                    gas 20000 wei
                            if 0 / 10000 * ext_call.return_data[0] and 0 > -1 / 0 / 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0 and ext_call.return_data[32] > -1 / 0:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] and 10000 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 10000 * ext_call.return_data[0] > -1:
                                revert with 'NH{q', 17
                            if not 10000 * ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            call address(call.data[212 len 20], ext_call.return_data[20 len 12]) >> 96.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas 10^6 wei
                                args 0, 0 / 10000 * ext_call.return_data[0], this.address, 128, 0
    require ext_code.size(uint64(call.data[4 len 20]))
    staticcall uint64(call.data[4 len 20]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= Mask(96, 0, mem[212 len 12]) >> 160:
        revert with 0, '!'
}



}
