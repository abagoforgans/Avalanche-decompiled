contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;
address destinationAddress;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
uint256 stor8;

function getDestinationAddress() {
    require msg.sender == stor0
    return destinationAddress
}

function getRouterAddress() {
    require msg.sender == stor0
    return stor1.length
}

function _fallback() payable {
    revert
}

function getBalanceOfContract() {
    require msg.sender == stor0
    return eth.balance(this.address)
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor1.length = arg1
}

function changeDestination(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    destinationAddress = arg1
}

function sub_03ff6b10(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require 0 < stor6.length
    address(stor6.field_0) = arg1
}

function sub_a6bdaf52(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require 0 < stor4.length
    address(stor4.field_0) = arg1
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
        args stor1.length, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellTokens(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require msg.sender == stor0
    require 0 < stor5.length
    mem[0] = 5
    stor5 = arg1
    destinationAddress = arg4
    idx = 0
    while idx < arg3:
        _5 = mem[64]
        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = stor7
        mem[mem[64] + 100] = destinationAddress
        mem[mem[64] + 132] = stor8
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = stor5.length
        if not stor5.length:
            require ext_code.size(stor1.length)
            call stor1.length.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg2, stor7, 160, destinationAddress, stor8, stor5.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = 5
        mem[mem[64] + 196] = stor5
        s = mem[64] + 196
        t = sha3(5)
        while mem[64] + (32 * stor5.length) + 196 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(stor1.length)
        call stor1.length.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _5 + (32 * stor5.length) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = _5 + floor32((32 * stor5.length) - 1) + 197
        continue 
}

function sub_b8e12af0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require msg.sender == stor0
    require 1 < stor4.length
    mem[0] = 4
    address(stor4.field_256) = address(cd[4])
    idx = 0
    while idx < ('cd', 132).length:
        destinationAddress = address(cd[((32 * idx) + cd[132] + 36)])
        s = 0
        while s < cd[100]:
            _8 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 68] = destinationAddress
            mem[mem[64] + 100] = stor8
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor4.length
            if not stor4.length:
                require ext_code.size(stor1.length)
                call stor1.length.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args cd[68], 128, destinationAddress, stor8, stor4.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            mem[0] = 4
            mem[mem[64] + 164] = address(stor4.field_0)
            idx = mem[64] + 164
            s = sha3(4)
            while mem[64] + (32 * stor4.length) + 164 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor1.length)
            call stor1.length.mem[mem[64] len 4] with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _8 + (32 * stor4.length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = _8 + floor32((32 * stor4.length) - 1) + 165
            continue 
        idx = idx + 1
        continue 
}

function sub_4176d496(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require msg.sender == stor0
    require 1 < stor4.length
    mem[0] = 4
    address(stor4.field_256) = address(cd[4])
    idx = 0
    while idx < ('cd', 100).length:
        destinationAddress = address(cd[((32 * idx) + cd[100] + 36)])
        s = 0
        while s < cd[68]:
            _8 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor7
            mem[mem[64] + 68] = destinationAddress
            mem[mem[64] + 100] = stor8
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor4.length
            if not stor4.length:
                require ext_code.size(stor1.length)
                call stor1.length.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value cd[36] wei
                     gas gas_remaining wei
                    args stor7, 128, destinationAddress, stor8, stor4.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            mem[0] = 4
            mem[mem[64] + 164] = address(stor4.field_0)
            idx = mem[64] + 164
            s = sha3(4)
            while mem[64] + (32 * stor4.length) + 164 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor1.length)
            call stor1.length.mem[mem[64] len 4] with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _8 + (32 * stor4.length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = _8 + floor32((32 * stor4.length) - 1) + 165
            continue 
        idx = idx + 1
        continue 
}

function sub_813c14b7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require msg.sender == stor0
    require 1 < stor6.length
    address(stor6.field_256) = address(cd[4])
    idx = 0
    while idx < ('cd', 100).length:
        destinationAddress = address(cd[((32 * idx) + cd[100] + 36)])
        s = 0
        while s < cd[68]:
            mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = stor7
            mem[mem[64] + 100] = destinationAddress
            mem[mem[64] + 132] = stor8
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = stor6.length
            if not stor6.length:
                require ext_code.size(stor1.length)
                call stor1.length.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36], stor7, 160, destinationAddress, stor8, stor6.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = s + 1
                continue 
            mem[0] = 6
            mem[mem[64] + 196] = address(stor6.field_0)
            idx = mem[64] + 196
            s = sha3(6)
            while mem[64] + (32 * stor6.length) + 196 > idx + 32:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(stor1.length)
            call stor1.length.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], stor7, Array(len=stor6.length, data=mem[mem[64] + 196 len 32 * stor6.length]), destinationAddress, stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = mem[64] + floor32((32 * stor6.length) - 1) + 197
            continue 
        idx = idx + 1
        continue 
}



}
