contract main {




// =====================  Runtime code  =====================


address owner;
uint256 commission;
uint256 stor2; offset 1
uint256 sub_facc03cb;
uint256 maxTxLimit;
array of address stor4;
array of address stor5;
address feeAddress;

function feeAddress() {
    return feeAddress
}

function maxTxLimit() {
    return maxTxLimit
}

function owner() {
    return owner
}

function commission() {
    return commission
}

function sub_facc03cb(?) {
    return sub_facc03cb
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a2548ad3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    sub_facc03cb = arg1
    emit 0x42c2d408: arg1
}

function setMaxTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    maxTxLimit = arg1
    emit 0xc8c7c461: arg1
}

function setCommission(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invalid amount'
    commission = arg1
    emit CommissionUpdated(arg1);
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    feeAddress = arg1
    emit FeeAddressUpdated(arg1);
}

function isInWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == arg1:
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_d67410b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == address(arg1):
            return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == arg1:
            revert with 0, 'Already added to whitelsit'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor5.length++
    stor5[stor5.length] = arg1
    emit AddedToWhitelist(arg1);
}

function sub_eef608a1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already added to token list for discount'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor4.length++
    stor4[stor4.length] = address(arg1)
    emit 0x3afc84e2: address(arg1)
}

function sub_ad7ad3b0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == msg.sender:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if commission and arg2 > -1 / commission:
        revert with 'NH{q', 17
    if commission * arg2 <= sub_facc03cb:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] == address(arg1):
                return (commission * arg2 / 2)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        return (commission * arg2)
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == address(arg1):
            return stor2
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return sub_facc03cb
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            if stor5[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor5.length - 1 >= stor5.length:
                revert with 'NH{q', 50
            if idx >= stor5.length:
                revert with 'NH{q', 50
            stor5[idx] = stor5[stor5.length]
            if stor5.length < 1:
                revert with 'NH{q', 17
            if stor5.length - 1 >= stor5.length:
                revert with 'NH{q', 50
            stor5[stor5.length] = 0
            if not stor5.length:
                revert with 'NH{q', 49
            stor5[stor5.length] = 0
            stor5.length--
            emit RemovedFromWhitelist(arg1);
        emit RemovedFromWhitelist(arg1);
    revert with 0, 'Not exist in whitelist'
}

function sub_b1337df6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != address(arg1):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor4.length < 1:
                revert with 'NH{q', 17
            if stor4.length - 1 >= stor4.length:
                revert with 'NH{q', 50
            if idx >= stor4.length:
                revert with 'NH{q', 50
            stor4[idx] = stor4[stor4.length]
            if stor4.length < 1:
                revert with 'NH{q', 17
            if stor4.length - 1 >= stor4.length:
                revert with 'NH{q', 50
            stor4[stor4.length] = 0
            if not stor4.length:
                revert with 'NH{q', 49
            stor4[stor4.length] = 0
            stor4.length--
            emit 0x359958b7: address(arg1)
        emit 0x359958b7: address(arg1)
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not exist in token list for discount'
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    if not arg1:
        revert with 0, 'Invalid token'
    if arg2.length > maxTxLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 200 addresses'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop token amount must be greater than zero.'
    if arg3 and arg2.length > -1 / arg3:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3 * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), arg3
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_47] == bool(mem[_47])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == msg.sender:
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if commission and arg2.length > -1 / commission:
        revert with 'NH{q', 17
    if commission * arg2.length <= sub_facc03cb:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if commission * arg2.length / 2 > 0:
                if commission * arg2.length / 2 != msg.value:
                    revert with 0, 'must send correct fee'
                call feeAddress with:
                   value commission * arg2.length / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if commission * arg2.length > 0:
            if commission * arg2.length != msg.value:
                revert with 0, 'must send correct fee'
            call feeAddress with:
               value commission * arg2.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor2 > 0:
                if stor2 != msg.value:
                    revert with 0, 'must send correct fee'
                call feeAddress with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if sub_facc03cb > 0:
            if sub_facc03cb != msg.value:
                revert with 0, 'must send correct fee'
            call feeAddress with:
               value sub_facc03cb wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not arg1:
        revert with 0, 'Invalid token'
    if arg2.length > maxTxLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GAS Error: max airdrop limit is 200 addresses'
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + arg3 + 36)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Airdrop token amount must be greater than zero.'
        if idx >= arg3.length:
            revert with 'NH{q', 50
        if s > -cd[((32 * idx) + arg3 + 36)] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[100] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        if idx >= arg3.length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_80] == bool(mem[_80])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] == msg.sender:
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if commission and arg2.length > -1 / commission:
        revert with 'NH{q', 17
    if commission * arg2.length <= sub_facc03cb:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if commission * arg2.length / 2 > 0:
                if commission * arg2.length / 2 != msg.value:
                    revert with 0, 'must send correct fee'
                call feeAddress with:
                   value commission * arg2.length / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if commission * arg2.length > 0:
            if commission * arg2.length != msg.value:
                revert with 0, 'must send correct fee'
            call feeAddress with:
               value commission * arg2.length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if stor2 > 0:
                if stor2 != msg.value:
                    revert with 0, 'must send correct fee'
                call feeAddress with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if sub_facc03cb > 0:
            if sub_facc03cb != msg.value:
                revert with 0, 'must send correct fee'
            call feeAddress with:
               value sub_facc03cb wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
