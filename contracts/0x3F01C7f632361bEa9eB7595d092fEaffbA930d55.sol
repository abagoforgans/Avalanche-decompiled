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
    if msg.sender == stor4:
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
                _146 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _150 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 232830 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _146 + (32 * _150) + 32 <= return_data.size
                idx = 0
                s = _146 + 224
                t = ceil32(return_data.size) + 224
                while idx < _150:
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
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _386 = mem[_382]
                require mem[_382] == mem[_382]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_382] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_382] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_382] and 2 > -1 / mem[_382]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _386
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _386
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_418] == bool(mem[_418])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _386
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
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _386, 0, 160, stor6, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
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
                _145 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _149 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 232830 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _145 + (32 * _149) + 32 <= return_data.size
                idx = 0
                s = _145 + 256
                t = ceil32(return_data.size) + 256
                while idx < _149:
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
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _385 = mem[_381]
                require mem[_381] == mem[_381]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_381] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_381] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_381] and 2 > -1 / mem[_381]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _385
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _385
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_417] == bool(mem[_417])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _385
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
                    args _385, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0xd9b3c963 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
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
                _148 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _152 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 232830 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _148 + (32 * _152) + 32 <= return_data.size
                idx = 0
                s = _148 + 224
                t = ceil32(return_data.size) + 224
                while idx < _152:
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
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _388 = mem[_384]
                require mem[_384] == mem[_384]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_384] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_384] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_384] and 2 > -1 / mem[_384]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _388
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == bool(mem[_420])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _388
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
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _388, 0, 160, stor6, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
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
                _147 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _151 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 232830 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _147 + (32 * _151) + 32 <= return_data.size
                idx = 0
                s = _147 + 256
                t = ceil32(return_data.size) + 256
                while idx < _151:
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
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _387 = mem[_383]
                require mem[_383] == mem[_383]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_383] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_383] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_383] and 2 > -1 / mem[_383]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _387
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _387
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == bool(mem[_419])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _387
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
                    args _387, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
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
    if msg.sender == stor4:
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
                _146 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _150 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 232830 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _146 + (32 * _150) + 32 <= return_data.size
                idx = 0
                s = _146 + 224
                t = ceil32(return_data.size) + 224
                while idx < _150:
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
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _386 = mem[_382]
                require mem[_382] == mem[_382]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_382] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_382] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_382] and 2 > -1 / mem[_382]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _386
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _386
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_418] == bool(mem[_418])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _386
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
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _386, 0, 160, stor6, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
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
                _145 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _149 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 232830 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _145 + (32 * _149) + 32 <= return_data.size
                idx = 0
                s = _145 + 256
                t = ceil32(return_data.size) + 256
                while idx < _149:
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
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _385 = mem[_381]
                require mem[_381] == mem[_381]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_381] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_381] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_381] and 2 > -1 / mem[_381]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _385
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _385
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_417] == bool(mem[_417])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _385
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
                    args _385, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor5)
            call stor5.0x269368d7 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, arg4
    else:
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
                _148 = mem[192 len 4], 232830
                require mem[192 len 4], 232830 <= test266151307()
                require mem[192 len 4], 232830 + 223 < return_data.size + 192
                _152 = mem[mem[192 len 4], 232830 + 192]
                if mem[mem[192 len 4], 232830 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], 232830 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], 232830 + 192]) + 193
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830 + 192]
                require _148 + (32 * _152) + 32 <= return_data.size
                idx = 0
                s = _148 + 224
                t = ceil32(return_data.size) + 224
                while idx < _152:
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
                require ext_code.size(stor1)
                call stor1.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
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
                _384 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _388 = mem[_384]
                require mem[_384] == mem[_384]
                if mem[ceil32(return_data.size) + 192] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 192] - 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 'NH{q', 50
                if mem[_384] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_384] < mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_384] and 2 > -1 / mem[_384]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _388
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _388
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == bool(mem[_420])
                mem[128] = address(arg2)
                mem[160] = address(arg1)
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _388
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
                require ext_code.size(stor1)
                call stor1.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _388, 0, 160, stor6, block.timestamp + 15, 2, mem[mem[64] + 196 len 64]
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
                _147 = mem[224 len 4], 232830
                require mem[224 len 4], 232830 <= test266151307()
                require mem[224 len 4], 232830 + 255 < return_data.size + 224
                _151 = mem[mem[224 len 4], 232830 + 224]
                if mem[mem[224 len 4], 232830 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225 > test266151307() or floor32(mem[mem[224 len 4], 232830 + 224]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + floor32(mem[mem[224 len 4], 232830 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 232830 + 224]
                require _147 + (32 * _151) + 32 <= return_data.size
                idx = 0
                s = _147 + 256
                t = ceil32(return_data.size) + 256
                while idx < _151:
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
                _383 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _387 = mem[_383]
                require mem[_383] == mem[_383]
                if mem[ceil32(return_data.size) + 224] < 1:
                    revert with 'NH{q', 17
                if mem[ceil32(return_data.size) + 224] - 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 'NH{q', 50
                if mem[_383] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 2 * mem[_383] <= mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]:
                    revert with 0, ' TRANSFER_FAILED'
                if mem[_383] and 2 > -1 / mem[_383]:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = 2 * _387
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, 2 * _387
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == bool(mem[_419])
                mem[128] = address(arg2)
                mem[192] = stor2
                if block.timestamp > -16:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _387
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
                    args _387, 0, 160, stor6, block.timestamp + 15, 3, mem[mem[64] + 196 len 96]
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
