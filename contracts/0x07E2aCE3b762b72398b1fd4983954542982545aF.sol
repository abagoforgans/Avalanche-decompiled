contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
address stor4;
mapping of uint8 stor5;
address stor6;
address stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    revert
}

function deposit() payable {
    if not msg.value:
        revert with 0, 'Message must hold a value'
}

function sub_2d65302f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor9
    stor11 = arg1
}

function sub_df8f96e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor9
    stor10 = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor9
    stor6 = arg1
}

function changeBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        require msg.sender == stor9
    stor8 = arg1
}

function withdraw() {
    if stor6 != msg.sender:
        require msg.sender == stor9
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_c104baa1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6 != msg.sender:
        require msg.sender == stor9
    stor7 = address(arg1)
}

function sub_269368d7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if stor6 != msg.sender:
        require msg.sender == stor9
    require ext_code.size(stor7)
    call stor7.0x269368d7 with:
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
    if msg.sender == stor6:
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_394]
                require mem[_394] == mem[_394]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_394] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_394] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_394] and 2 > -1 / mem[_394]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _398
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _398
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_430] == bool(mem[_430])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _398, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _397 = mem[_393]
                require mem[_393] == mem[_393]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_393] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_393] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_393] and 2 > -1 / mem[_393]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _397
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _397
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_429] == bool(mem[_429])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _397
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _397, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        require msg.sender == stor9
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _400 = mem[_396]
                require mem[_396] == mem[_396]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_396] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_396] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_396] and 2 > -1 / mem[_396]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _400
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _400
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _400
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _400, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_395]
                require mem[_395] == mem[_395]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_395] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_395] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_395] and 2 > -1 / mem[_395]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _399
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == bool(mem[_431])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _399
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _399, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
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
    if msg.sender == stor6:
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_394]
                require mem[_394] == mem[_394]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_394] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_394] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_394] and 2 > -1 / mem[_394]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _398
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _398
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_430] == bool(mem[_430])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _398, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _397 = mem[_393]
                require mem[_393] == mem[_393]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_393] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_393] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_393] and 2 > -1 / mem[_393]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _397
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _397
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_429] == bool(mem[_429])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _397
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _397, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        require msg.sender == stor9
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _400 = mem[_396]
                require mem[_396] == mem[_396]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_396] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_396] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_396] and 2 > -1 / mem[_396]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _400
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _400
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _400
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _400, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_395]
                require mem[_395] == mem[_395]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_395] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_395] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_395] and 2 > -1 / mem[_395]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _399
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == bool(mem[_431])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _399
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _399, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
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
    if msg.sender == stor6:
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_394]
                require mem[_394] == mem[_394]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_394] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_394] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_394] and 2 > -1 / mem[_394]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _398
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _398
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_430] == bool(mem[_430])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _398, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _397 = mem[_393]
                require mem[_393] == mem[_393]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_393] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_393] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_393] and 2 > -1 / mem[_393]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _397
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _397
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_429] == bool(mem[_429])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _397
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _397, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        require msg.sender == stor9
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _400 = mem[_396]
                require mem[_396] == mem[_396]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_396] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_396] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_396] and 2 > -1 / mem[_396]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _400
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _400
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _400
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _400, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_395]
                require mem[_395] == mem[_395]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_395] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_395] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_395] and 2 > -1 / mem[_395]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _399
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == bool(mem[_431])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _399
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _399, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0xd9b3c963 with:
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
    if msg.sender == stor6:
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _394 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _398 = mem[_394]
                require mem[_394] == mem[_394]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_394] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_394] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_394] and 2 > -1 / mem[_394]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _398
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _398
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _430 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_430] == bool(mem[_430])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _398
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _398, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _393 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _397 = mem[_393]
                require mem[_393] == mem[_393]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_393] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_393] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_393] and 2 > -1 / mem[_393]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _397
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _397
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _429 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_429] == bool(mem[_429])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _397
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _397, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
        require msg.sender == stor9
        if block.number < arg5:
            revert with 0, 'TRANSFER _FAILED'
        mem[0] = address(arg2)
        mem[32] = 5
        if stor5[address(arg2)]:
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), arg3, arg4
        else:
            if address(arg1) == stor4:
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^15 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp + 15, 2, mem[mem[64] + 164 len 64]
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
                _396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _400 = mem[_396]
                require mem[_396] == mem[_396]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_396] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_396] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_396] and 2 > -1 / mem[_396]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _400
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _400
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _400
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _400, 0, 160, stor8, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
            else:
                mem[96] = 3
                mem[128] = stor4
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
                require ext_code.size(stor2)
                staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
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
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
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
                require ext_code.size(stor2)
                call stor2.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _395 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_395]
                require mem[_395] == mem[_395]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_395] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_395] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_395] and 2 > -1 / mem[_395]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _399
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_431] == bool(mem[_431])
                mem[128] = address(arg2)
                mem[192] = stor4
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _399
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
                require ext_code.size(stor2)
                call stor2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _399, 0, 160, stor8, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5[address(arg2)] = 1
            require ext_code.size(stor7)
            call stor7.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
