contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address sub_808dc675Address;
uint256 whitelistSize;
uint8 stor4;
mapping of uint8 stor5;

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function contractEnabled() {
    return bool(stor4)
}

function whitelistEnabled() {
    return bool(uint8(stor2.field_160))
}

function sub_808dc675(?) {
    return sub_808dc675Address
}

function whitelistSize() {
    return whitelistSize
}

function _fallback() payable {
    revert
}

function setContractStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    stor4 = uint8(arg1)
}

function sub_59ce7d4c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(arg1))
}

function sub_abea48ae(?) payable {
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function add(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    if not stor5[address(arg1)]:
        if whitelistSize == -1:
            revert with 'NH{q', 17
        whitelistSize++
    stor5[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function remove(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    if stor5[address(arg1)]:
        if not whitelistSize:
            revert with 'NH{q', 17
        whitelistSize--
    stor5[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function sub_1f3b2006(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    if not stor5[address(arg1)]:
        if whitelistSize == -1:
            revert with 'NH{q', 17
        whitelistSize++
    stor5[address(arg1)] = 1
    emit AddedToWhitelist(address(arg1));
    stor1 = address(arg1)
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_c237ef4e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if stor1 != msg.sender:
        revert with 0, 'Not allowed.'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f8e9d942(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    if not stor4:
        revert with 0, 'Contract disabled.'
    if not uint8(stor2.field_160):
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        _49 = mem[128]
        mem[floor32(('cd', 68).length) + 101] = msg.sender
        mem[floor32(('cd', 68).length) + 133] = this.address
        require ext_code.size(address(_49))
        staticcall address(_49).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[4]:
            revert with 0, 'Not enough token allowance.'
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 133] = this.address
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 165] = cd[4]
        require ext_code.size(address(_49))
        call address(_49).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[4]
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[164])
        mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 133] = cd[4]
        require ext_code.size(address(_49))
        call address(_49).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[164]), cd[4]
    else:
        if not stor5[address(msg.sender)]:
            revert with 0, 'Not whitelisted.'
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        _54 = mem[128]
        mem[floor32(('cd', 68).length) + 101] = msg.sender
        mem[floor32(('cd', 68).length) + 133] = this.address
        require ext_code.size(address(_54))
        staticcall address(_54).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[4]:
            revert with 0, 'Not enough token allowance.'
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 133] = this.address
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 165] = cd[4]
        require ext_code.size(address(_54))
        call address(_54).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[4]
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[164])
        mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 133] = cd[4]
        require ext_code.size(address(_54))
        call address(_54).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[164]), cd[4]
    mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 101] = cd[4]
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 133] = cd[36]
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 165] = 160
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 68).length
    idx = 0
    s = 128
    t = floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 293
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[164]))
    call address(cd[164]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_748180e8(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    if not stor4:
        revert with 0, 'Contract disabled.'
    if not uint8(stor2.field_160):
        if msg.value < 10^13:
            revert with 'NH{q', 17
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - 10^13 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
    else:
        if not stor5[address(msg.sender)]:
            revert with 0, 'Not whitelisted.'
        if msg.value < 10^13:
            revert with 'NH{q', 17
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 261
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = cd[4]
        mem[floor32(('cd', 36).length) + 133] = 128
        mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 36).length) + 165] = address(cd[68])
        mem[floor32(('cd', 36).length) + 197] = cd[100]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).mem[mem[64] len 4] with:
           value 2 * 10^12 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(('cd', 36).length) + (32 * ('cd', 36).length) + -mem[64] + 257]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[132]))
        call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - 10^13 wei
             gas gas_remaining wei
            args cd[4], 128, address(cd[68]), cd[100], mem[mem[64] + 132 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8b9bd60f(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] == address(cd[132])
    if not stor4:
        revert with 0, 'Contract disabled.'
    if not uint8(stor2.field_160):
        if not stor4:
            revert with 0, 'Contract disabled.'
        if not uint8(stor2.field_160):
            if msg.value < 10^13:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - 10^13 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
        else:
            if not stor5[address(msg.sender)]:
                revert with 0, 'Not whitelisted.'
            if msg.value < 10^13:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 36).length) + (32 * ('cd', 36).length) + -mem[64] + 257]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = address(cd[68])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], 128, address(cd[68]), cd[100], mem[mem[64] + 132 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value - 10^13 wei
                 gas gas_remaining wei
                args cd[4], 128, address(cd[68]), cd[100], mem[mem[64] + 132 len (32 * mem[96]) + 32]
    else:
        if not stor5[address(msg.sender)]:
            revert with 0, 'Not whitelisted.'
        if not stor4:
            revert with 0, 'Contract disabled.'
        if not uint8(stor2.field_160):
            if msg.value < 10^13:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 36).length) + (32 * ('cd', 36).length) + -mem[64] + 257]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = address(cd[68])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], 128, address(cd[68]), cd[100], mem[mem[64] + 132 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            _486 = mem[96]
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < _486:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_482 + 68] = address(cd[68])
            mem[_482 + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value msg.value - 10^13 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _482 + (32 * _486) + -mem[64] + 160]
        else:
            if not stor5[address(msg.sender)]:
                revert with 0, 'Not whitelisted.'
            if msg.value < 10^13:
                revert with 'NH{q', 17
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + 261
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(cd[68]), cd[100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + 97] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + 101] = cd[4]
            mem[floor32(('cd', 36).length) + 133] = 128
            mem[floor32(('cd', 36).length) + 229] = ('cd', 36).length
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 36).length) + 165] = address(cd[68])
            mem[floor32(('cd', 36).length) + 197] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len floor32(('cd', 36).length) + (32 * ('cd', 36).length) + -mem[64] + 257]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            _295 = mem[96]
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < _295:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_291 + 68] = address(cd[68])
            mem[_291 + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _291 + (32 * _295) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            _375 = mem[96]
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < _375:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_371 + 68] = address(cd[68])
            mem[_371 + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _371 + (32 * _375) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = address(cd[68])
            mem[mem[64] + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 2 * 10^12 wei
                 gas gas_remaining wei
                args cd[4], 128, address(cd[68]), cd[100], mem[mem[64] + 132 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _483 = mem[64]
            mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            _487 = mem[96]
            mem[mem[64] + 132] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < _487:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_483 + 68] = address(cd[68])
            mem[_483 + 100] = cd[100]
            require ext_code.size(address(cd[132]))
            call address(cd[132]).mem[mem[64] len 4] with:
               value msg.value - 10^13 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _483 + (32 * _487) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 21000 > -gas_remaining - 1:
        revert with 'NH{q', 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 'NH{q', 17
    if 21000 > -(16 * calldata.size) - 1:
        revert with 'NH{q', 17
    if (16 * calldata.size) + 21000 > -14155:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    call stor0.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
