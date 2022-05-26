contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
    revert
}

function deposit() payable {
    if not msg.value:
        revert with 0, 'Message must hold a value'
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        require msg.sender == stor7
    stor4 = arg1
}

function changeBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        require msg.sender == stor7
    stor6 = arg1
}

function withdraw() {
    if stor4 != msg.sender:
        require msg.sender == stor7
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_c104baa1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4 != msg.sender:
        require msg.sender == stor7
    stor5 = address(arg1)
}

function sub_269368d7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor4 != msg.sender:
        require msg.sender == stor7
    require ext_code.size(stor5)
    call stor5.0x269368d7 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9905bae5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor4 != msg.sender:
        require msg.sender == stor7
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor2:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _152 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _156 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _152 + (32 * _156) + 32 <= return_data.size
                idx = 0
                s = _152 + 224
                t = ceil32(return_data.size) + 224
                while idx < _156:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _272 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_272 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _272 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_388]
                require mem[_388] == mem[_388]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_388] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_388] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_388] and 2 > -1 / mem[_388]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _392
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == bool(mem[_424])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _392
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _444 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _444) + 32]
            else:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _151 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _155 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _151 + (32 * _155) + 32 <= return_data.size
                idx = 0
                s = _151 + 256
                t = ceil32(return_data.size) + 256
                while idx < _155:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _271 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_271 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_387]
                require mem[_387] == mem[_387]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_387] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_387] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_387] and 2 > -1 / mem[_387]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _391
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == bool(mem[_423])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _391
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _443 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _443) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) != stor2:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _149 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _153 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _149 + (32 * _153) + 32 <= return_data.size
                idx = 0
                s = _149 + 256
                t = ceil32(return_data.size) + 256
                while idx < _153:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_385]
                require mem[_385] == mem[_385]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_385] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_385] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_385] and 2 > -1 / mem[_385]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _389
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == bool(mem[_421])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _389
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _389, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            else:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _150 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _154 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _150 + (32 * _154) + 32 <= return_data.size
                idx = 0
                s = _150 + 224
                t = ceil32(return_data.size) + 224
                while idx < _154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _270 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_270 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _270 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_386]
                require mem[_386] == mem[_386]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_386] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_386] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_386] and 2 > -1 / mem[_386]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _390
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _390
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _438 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _390
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _442 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < _442:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_438 + 100] = stor6
                mem[_438 + 132] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _438 + (32 * _442) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f8b60144(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor4 != msg.sender:
        require msg.sender == stor7
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor2:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _152 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _156 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _152 + (32 * _156) + 32 <= return_data.size
                idx = 0
                s = _152 + 224
                t = ceil32(return_data.size) + 224
                while idx < _156:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _272 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_272 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _272 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_388]
                require mem[_388] == mem[_388]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_388] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_388] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_388] and 2 > -1 / mem[_388]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _392
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == bool(mem[_424])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _392
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _444 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _444) + 32]
            else:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _151 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _155 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _151 + (32 * _155) + 32 <= return_data.size
                idx = 0
                s = _151 + 256
                t = ceil32(return_data.size) + 256
                while idx < _155:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _271 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_271 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_387]
                require mem[_387] == mem[_387]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_387] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_387] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_387] and 2 > -1 / mem[_387]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _391
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == bool(mem[_423])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _391
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _443 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _443) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) != stor2:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _149 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _153 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _149 + (32 * _153) + 32 <= return_data.size
                idx = 0
                s = _149 + 256
                t = ceil32(return_data.size) + 256
                while idx < _153:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_385]
                require mem[_385] == mem[_385]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_385] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_385] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_385] and 2 > -1 / mem[_385]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _389
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == bool(mem[_421])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _389
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _389, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            else:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _150 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _154 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _150 + (32 * _154) + 32 <= return_data.size
                idx = 0
                s = _150 + 224
                t = ceil32(return_data.size) + 224
                while idx < _154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _270 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_270 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _270 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_386]
                require mem[_386] == mem[_386]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_386] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_386] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_386] and 2 > -1 / mem[_386]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _390
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _390
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _438 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _390
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _442 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < _442:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_438 + 100] = stor6
                mem[_438 + 132] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _438 + (32 * _442) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2b1b9e4d(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor4 != msg.sender:
        require msg.sender == stor7
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor2:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _152 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _156 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _152 + (32 * _156) + 32 <= return_data.size
                idx = 0
                s = _152 + 224
                t = ceil32(return_data.size) + 224
                while idx < _156:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _272 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_272 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _272 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_388]
                require mem[_388] == mem[_388]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_388] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_388] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_388] and 2 > -1 / mem[_388]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _392
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == bool(mem[_424])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _392
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _444 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _444) + 32]
            else:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _151 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _155 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _151 + (32 * _155) + 32 <= return_data.size
                idx = 0
                s = _151 + 256
                t = ceil32(return_data.size) + 256
                while idx < _155:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _271 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_271 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_387]
                require mem[_387] == mem[_387]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_387] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_387] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_387] and 2 > -1 / mem[_387]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _391
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == bool(mem[_423])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _391
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _443 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _443) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) != stor2:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _149 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _153 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _149 + (32 * _153) + 32 <= return_data.size
                idx = 0
                s = _149 + 256
                t = ceil32(return_data.size) + 256
                while idx < _153:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_385]
                require mem[_385] == mem[_385]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_385] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_385] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_385] and 2 > -1 / mem[_385]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _389
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == bool(mem[_421])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _389
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _389, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            else:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _150 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _154 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _150 + (32 * _154) + 32 <= return_data.size
                idx = 0
                s = _150 + 224
                t = ceil32(return_data.size) + 224
                while idx < _154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _270 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_270 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _270 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_386]
                require mem[_386] == mem[_386]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_386] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_386] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_386] and 2 > -1 / mem[_386]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _390
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _390
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _438 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _390
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _442 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < _442:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_438 + 100] = stor6
                mem[_438 + 132] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _438 + (32 * _442) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4224c39(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor4 != msg.sender:
        require msg.sender == stor7
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor2:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _152 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _156 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _152 + (32 * _156) + 32 <= return_data.size
                idx = 0
                s = _152 + 224
                t = ceil32(return_data.size) + 224
                while idx < _156:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _272 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_272 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _272 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_388]
                require mem[_388] == mem[_388]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_388] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_388] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_388] and 2 > -1 / mem[_388]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _392
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _392
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == bool(mem[_424])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _392
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _444 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _444) + 32]
            else:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _151 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _155 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _151 + (32 * _155) + 32 <= return_data.size
                idx = 0
                s = _151 + 256
                t = ceil32(return_data.size) + 256
                while idx < _155:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _271 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_271 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + -mem[64] + 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _391 = mem[_387]
                require mem[_387] == mem[_387]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_387] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_387] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_387] and 2 > -1 / mem[_387]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _391
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == bool(mem[_423])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _391
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _443 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 96], stor6, block.timestamp + 15, mem[mem[64] + 164 len (32 * _443) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 3
        if stor3[address(arg2)]:
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) != stor2:
                mem[96] = 3
                mem[128] = stor2
                mem[160] = address(arg1)
                mem[192] = address(arg2)
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = 10^15
                mem[260] = 64
                mem[292] = 3
                idx = 0
                s = 128
                t = 324
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 3, mem[324 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _149 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _153 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], 232830 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], 232830 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _149 + (32 * _153) + 32 <= return_data.size
                idx = 0
                s = _149 + 256
                t = ceil32(return_data.size) + 256
                while idx < _153:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 3
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 3, mem[mem[64] + 164 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _385 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _389 = mem[_385]
                require mem[_385] == mem[_385]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_385] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_385] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_385] and 2 > -1 / mem[_385]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _389
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _389
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == bool(mem[_421])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _389
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _389, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            else:
                mem[96] = 2
                mem[128] = address(arg1)
                mem[160] = address(arg2)
                mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[196] = 10^15
                mem[228] = 64
                mem[260] = 2
                idx = 0
                s = 128
                t = 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor1)
                staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 10^15, 64, 2, mem[292 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _150 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _154 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], 232830 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], 232830 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _150 + (32 * _154) + 32 <= return_data.size
                idx = 0
                s = _150 + 224
                t = ceil32(return_data.size) + 224
                while idx < _154:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _270 = mem[64]
                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_270 + 100] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _270 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _386 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _390 = mem[_386]
                require mem[_386] == mem[_386]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_386] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_386] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_386] and 2 > -1 / mem[_386]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _390
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _390
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                mem[128] = address(arg2)
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                _438 = mem[64]
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _390
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _442 = mem[96]
                mem[mem[64] + 164] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < _442:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_438 + 100] = stor6
                mem[_438 + 132] = block.timestamp + 15
                require ext_code.size(stor1)
                call stor1.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _438 + (32 * _442) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
