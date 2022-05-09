contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;
uint256 stor10;

function _fallback() payable {
    revert
}

function getBalanceOfContract() {
    require msg.sender == stor0
    return eth.balance(this.address)
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellTokens(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require msg.sender == stor0
    require 0 < stor7.length
    mem[0] = 7
    stor7 = arg1
    stor4 = arg4
    idx = 0
    while idx < arg3:
        _5 = mem[64]
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = stor9
        mem[mem[64] + 100] = stor4
        mem[mem[64] + 132] = stor10
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = stor7.length
        if not stor7.length:
            require ext_code.size(stor3)
            call stor3.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, stor9, 160, stor4, stor10, stor7.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = 7
        mem[mem[64] + 196] = stor7
        s = mem[64] + 196
        t = sha3(7)
        while mem[64] + (32 * stor7.length) + 196 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * stor7.length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _5 + floor32((32 * stor7.length) - 1) + 197
        continue 
}

function buyTokenNine(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require msg.sender == stor0
    require 1 < stor6.length
    mem[0] = 6
    address(stor6.field_256) = arg1
    stor4 = arg5
    idx = 0
    while idx < arg4:
        _5 = mem[64]
        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 68] = stor4
        mem[mem[64] + 100] = stor10
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = stor6.length
        if not stor6.length:
            require ext_code.size(stor3)
            call stor3.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args arg3, 128, stor4, stor10, stor6.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = 6
        mem[mem[64] + 164] = address(stor6.field_0)
        s = mem[64] + 164
        t = sha3(6)
        while mem[64] + (32 * stor6.length) + 164 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * stor6.length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _5 + floor32((32 * stor6.length) - 1) + 165
        continue 
}

function buyTokenBusd(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require msg.sender == stor0
    require 1 < stor8.length
    mem[0] = 8
    address(stor8.field_256) = arg1
    stor4 = arg4
    idx = 0
    while idx < arg3:
        _5 = mem[64]
        mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = stor9
        mem[mem[64] + 100] = stor4
        mem[mem[64] + 132] = stor10
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = stor8.length
        if not stor8.length:
            require ext_code.size(stor3)
            call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, stor9, 160, stor4, stor10, stor8.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = 8
        mem[mem[64] + 196] = address(stor8.field_0)
        s = mem[64] + 196
        t = sha3(8)
        while mem[64] + (32 * stor8.length) + 196 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * stor8.length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _5 + floor32((32 * stor8.length) - 1) + 197
        continue 
}

function buyTokenBasic(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require msg.sender == stor0
    require 1 < stor6.length
    mem[0] = 6
    address(stor6.field_256) = arg1
    stor4 = arg4
    idx = 0
    while idx < arg3:
        _5 = mem[64]
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = stor9
        mem[mem[64] + 68] = stor4
        mem[mem[64] + 100] = stor10
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = stor6.length
        if not stor6.length:
            require ext_code.size(stor3)
            call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args stor9, 128, stor4, stor10, stor6.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = 6
        mem[mem[64] + 164] = address(stor6.field_0)
        s = mem[64] + 164
        t = sha3(6)
        while mem[64] + (32 * stor6.length) + 164 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor3)
        call stor3.mem[mem[64] len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * stor6.length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _5 + floor32((32 * stor6.length) - 1) + 165
        continue 
}

function sub_71ec43ae(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require msg.sender == stor0
    require 1 < stor6.length
    mem[0] = 6
    address(stor6.field_256) = arg1
    if stor2 < arg4.length:
        require stor2 < arg4.length
        _5 = mem[(32 * stor2) + 128]
        stor2++
        idx = 0
        while idx < arg3:
            _14 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor9
            mem[mem[64] + 68] = address(_5)
            mem[mem[64] + 100] = stor10
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor6.length
            if not stor6.length:
                require ext_code.size(stor3)
                call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args stor9, 128, address(_5), stor10, stor6.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[0] = 6
            mem[mem[64] + 164] = address(stor6.field_0)
            s = mem[64] + 164
            t = sha3(6)
            while mem[64] + (32 * stor6.length) + 164 > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(stor3)
            call stor3.mem[mem[64] len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _14 + (32 * stor6.length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = _14 + floor32((32 * stor6.length) - 1) + 165
            continue 
    else:
        stor2 = 0
        require stor2 < arg4.length
        _7 = mem[(32 * stor2) + 128]
        stor2++
        idx = 0
        while idx < arg3:
            _15 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor9
            mem[mem[64] + 68] = address(_7)
            mem[mem[64] + 100] = stor10
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor6.length
            if not stor6.length:
                require ext_code.size(stor3)
                call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg2 wei
                     gas gas_remaining wei
                    args stor9, 128, address(_7), stor10, stor6.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            mem[0] = 6
            mem[mem[64] + 164] = address(stor6.field_0)
            s = mem[64] + 164
            t = sha3(6)
            while mem[64] + (32 * stor6.length) + 164 > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            require ext_code.size(stor3)
            call stor3.mem[mem[64] len 4] with:
               value arg2 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _15 + (32 * stor6.length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = _15 + floor32((32 * stor6.length) - 1) + 165
            continue 
}



}
