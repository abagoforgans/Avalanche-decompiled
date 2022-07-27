contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint8 decimals;
address owner; offset 8
mapping of uint8 stor3;
uint8 stor4;
uint256 buyFee;
uint256 sellFee;
uint256 sub_407c9511;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 sub_bf5d9d03;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address tokenManagerAddress;
array of address stor18;
mapping of uint8 stor19;

function sub_008413d0(?) {
    return bool(uint8(stor8.field_8))
}

function totalSupply() {
    return totalSupply
}

function tokenManager() {
    return tokenManagerAddress
}

function sellFee() {
    return sellFee
}

function decimals() {
    return decimals
}

function sub_407c9511(?) {
    return sub_407c9511
}

function buyFee() {
    return buyFee
}

function transferEnabled() {
    return bool(stor4)
}

function feesOnNormalTransfers() {
    return bool(uint8(stor8.field_0))
}

function sub_69eaa6b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_85566562(?) {
    return bool(uint8(stor8.field_16))
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor3[address(arg1)])
}

function sub_bf5d9d03(?) {
    return sub_bf5d9d03
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_4c94531f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_bf5d9d03 = arg1
}

function setTransferEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor4 = uint8(arg1)
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    uint8(stor8.field_0) = uint8(arg1)
}

function sub_888b553a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = Mask(248, 0, bool(arg1))
}

function sub_4c58571b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    Mask(240, 0, stor8.field_16) = Mask(240, 0, bool(arg1))
}

function sub_14cce6df(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require msg.sender == owner
    stor12[address(arg1)] = uint8(bool(arg2))
}

function sub_47e9c99a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require msg.sender == owner
    stor11[address(arg1)] = uint8(bool(arg2))
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
}

function updateBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_88e68b3f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor10[address(arg1)]:
        return bool(stor10[address(arg1)])
    return bool(uint8(stor8.field_8))
}

function sub_a1ce381a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor11[address(arg1)]:
        return bool(stor11[address(arg1)])
    return bool(uint8(stor8.field_16))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b39e7604(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor11[address(arg1)]:
        return buyFee, sellFee
    if not uint8(stor8.field_16):
        return buyFee, sellFee
    return buyFee, sub_407c9511
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 > 49:
        revert with 0, 'exceeded max buy fees'
    if arg2 > 49:
        revert with 0, 'exceeded max sell fees'
    if arg3 > 49:
        revert with 0, 'exceeded max tax receiver fees'
    buyFee = arg1
    sellFee = arg2
    sub_407c9511 = arg3
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor3[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor3[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor3[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_72622a61(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount larger than what's in the contract'
    call address(arg2) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor3[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MinterRole: caller does not have the Minter role'
    if totalSupply > !arg2:
        revert with 0, 17
    if totalSupply + arg2 <= test266151307():
        if totalSupply + arg2 < totalSupply:
            revert with 0, 17
        if totalSupply > !arg2:
            revert with 0, 17
        totalSupply += arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
    else:
        if test266151307() < totalSupply:
            revert with 0, 17
        if totalSupply > !(-totalSupply + test266151307()):
            revert with 0, 17
        totalSupply = test266151307()
        if balanceOf[address(arg1)] > !(-totalSupply + test266151307()):
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -totalSupply + test266151307()
}

function sub_de05e712(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require msg.sender == owner
    mem[100] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Amount larger than what's in the contract'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg3) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, mem[ceil32(return_data.size) + 196 len 28]
    call address(arg1).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function setTokenManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    tokenManagerAddress = arg1
    mem[96] = 0x161a29000000000000000000000000000000000000000000000000000000000
    call arg1.0x161a290 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _4 + 128
    while idx < (32 * _5) + _4 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    stor13[stor17] = 0
    idx = 0
    while idx < stor18.length:
        mem[0] = address(stor18[idx])
        mem[32] = 19
        stor19[address(stor18[idx])] = 0
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor13[address(arg1)] = 1
    stor18.length = _5
    if not _5:
        idx = 0
        while stor18.length > idx:
            uint256(stor18[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(return_data.size) + 128
        while ceil32(return_data.size) + (32 * _5) + 128 > idx:
            address(stor18[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _5) + 31) >> 5
        while stor18.length > idx:
            uint256(stor18[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor18.length:
        mem[0] = address(stor18[idx])
        mem[32] = 19
        stor19[address(stor18[idx])] = 1
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor0.length):
            if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if not bool(stor0.length) - (stor0.length.field_1 < 32):
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if not bool(stor0.length) - (stor0.length.field_1 < 32):
        revert with 0, 34
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if not bool(stor0.length) - (stor0.length.field_1 < 32):
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if not bool(stor1.length) - (stor1.length.field_1 < 32):
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if not bool(stor1.length) - (stor1.length.field_1 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if not bool(stor1.length) - (stor1.length.field_1 < 32):
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg1
    if not stor4:
        if owner != msg.sender:
            require stor12[msg.sender]
    if stor10[address(msg.sender)]:
        if uint8(stor8.field_8):
            revert with 0, 'Blacklisted'
    if stor10[address(arg1)]:
        if uint8(stor8.field_8):
            revert with 0, 'Blacklisted'
    if stor19[address(arg1)]:
        if not stor13[address(msg.sender)]:
            if arg2 > sub_bf5d9d03:
                if stor11[address(msg.sender)]:
                    if uint8(stor8.field_16):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount greater than allowed limit'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if stor13[address(msg.sender)]:
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor13[address(arg1)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if uint8(stor8.field_0):
                if not stor19[address(arg1)]:
                    if arg2 and buyFee > -1 / arg2:
                        revert with 0, 17
                    if balanceOf[stor17] > !(arg2 * buyFee / 100):
                        revert with 0, 17
                    balanceOf[stor17] += arg2 * buyFee / 100
                    emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                    if arg2 < arg2 * buyFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                    emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, arg1);
                else:
                    if not stor11[address(msg.sender)]:
                        if arg2 and sellFee > -1 / arg2:
                            revert with 0, 17
                        if balanceOf[stor17] > !(arg2 * sellFee / 100):
                            revert with 0, 17
                        balanceOf[stor17] += arg2 * sellFee / 100
                        emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                        if arg2 < arg2 * sellFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                        emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                    else:
                        if not uint8(stor8.field_16):
                            if arg2 and sellFee > -1 / arg2:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg2 * sellFee / 100
                            emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                            if arg2 < arg2 * sellFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                            emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                        else:
                            if arg2 and sub_407c9511 > -1 / arg2:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg2 * sub_407c9511 / 100
                            emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                            if arg2 < arg2 * sub_407c9511 / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                            emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, arg1);
            else:
                if stor19[address(msg.sender)]:
                    if not stor19[address(arg1)]:
                        if arg2 and buyFee > -1 / arg2:
                            revert with 0, 17
                        if balanceOf[stor17] > !(arg2 * buyFee / 100):
                            revert with 0, 17
                        balanceOf[stor17] += arg2 * buyFee / 100
                        emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                        if arg2 < arg2 * buyFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                        emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, arg1);
                    else:
                        if not stor11[address(msg.sender)]:
                            if arg2 and sellFee > -1 / arg2:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg2 * sellFee / 100
                            emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                            if arg2 < arg2 * sellFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                            emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                        else:
                            if not uint8(stor8.field_16):
                                if arg2 and sellFee > -1 / arg2:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg2 * sellFee / 100
                                emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                if arg2 < arg2 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                            else:
                                if arg2 and sub_407c9511 > -1 / arg2:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg2 * sub_407c9511 / 100
                                emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                                if arg2 < arg2 * sub_407c9511 / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                                emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, arg1);
                else:
                    if not stor19[address(arg1)]:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not stor19[address(arg1)]:
                            if arg2 and buyFee > -1 / arg2:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg2 * buyFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg2 * buyFee / 100
                            emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                            if arg2 < arg2 * buyFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                            emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, arg1);
                        else:
                            if not stor11[address(msg.sender)]:
                                if arg2 and sellFee > -1 / arg2:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg2 * sellFee / 100
                                emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                if arg2 < arg2 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                            else:
                                if not uint8(stor8.field_16):
                                    if arg2 and sellFee > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * sellFee / 100
                                    emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                    emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_407c9511 > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * sub_407c9511 / 100
                                    emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * sub_407c9511 / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                                    emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg2
    if not stor4:
        if owner != msg.sender:
            require stor12[msg.sender]
    if allowance[address(arg1)][msg.sender] != -1:
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        allowance[address(arg1)][msg.sender] -= arg3
    if stor10[address(arg1)]:
        if uint8(stor8.field_8):
            revert with 0, 'Blacklisted'
    if stor10[address(arg2)]:
        if uint8(stor8.field_8):
            revert with 0, 'Blacklisted'
    if stor19[address(arg2)]:
        if not stor13[address(arg1)]:
            if arg3 > sub_bf5d9d03:
                if stor11[address(arg1)]:
                    if uint8(stor8.field_16):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount greater than allowed limit'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if stor13[address(arg1)]:
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor13[address(arg2)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if uint8(stor8.field_0):
                if not stor19[address(arg2)]:
                    if arg3 and buyFee > -1 / arg3:
                        revert with 0, 17
                    if balanceOf[stor17] > !(arg3 * buyFee / 100):
                        revert with 0, 17
                    balanceOf[stor17] += arg3 * buyFee / 100
                    emit Transfer((arg3 * buyFee / 100), arg1, tokenManagerAddress);
                    if arg3 < arg3 * buyFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                    emit Transfer((arg3 - (arg3 * buyFee / 100)), arg1, arg2);
                else:
                    if not stor11[address(arg1)]:
                        if arg3 and sellFee > -1 / arg3:
                            revert with 0, 17
                        if balanceOf[stor17] > !(arg3 * sellFee / 100):
                            revert with 0, 17
                        balanceOf[stor17] += arg3 * sellFee / 100
                        emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                        if arg3 < arg3 * sellFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                        emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                    else:
                        if not uint8(stor8.field_16):
                            if arg3 and sellFee > -1 / arg3:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg3 * sellFee / 100
                            emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                            if arg3 < arg3 * sellFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                            emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                        else:
                            if arg3 and sub_407c9511 > -1 / arg3:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg3 * sub_407c9511 / 100
                            emit Transfer((arg3 * sub_407c9511 / 100), arg1, tokenManagerAddress);
                            if arg3 < arg3 * sub_407c9511 / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                            emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), arg1, arg2);
            else:
                if stor19[address(arg1)]:
                    if not stor19[address(arg2)]:
                        if arg3 and buyFee > -1 / arg3:
                            revert with 0, 17
                        if balanceOf[stor17] > !(arg3 * buyFee / 100):
                            revert with 0, 17
                        balanceOf[stor17] += arg3 * buyFee / 100
                        emit Transfer((arg3 * buyFee / 100), arg1, tokenManagerAddress);
                        if arg3 < arg3 * buyFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                        emit Transfer((arg3 - (arg3 * buyFee / 100)), arg1, arg2);
                    else:
                        if not stor11[address(arg1)]:
                            if arg3 and sellFee > -1 / arg3:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg3 * sellFee / 100
                            emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                            if arg3 < arg3 * sellFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                            emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                        else:
                            if not uint8(stor8.field_16):
                                if arg3 and sellFee > -1 / arg3:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg3 * sellFee / 100
                                emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                                if arg3 < arg3 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                            else:
                                if arg3 and sub_407c9511 > -1 / arg3:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg3 * sub_407c9511 / 100
                                emit Transfer((arg3 * sub_407c9511 / 100), arg1, tokenManagerAddress);
                                if arg3 < arg3 * sub_407c9511 / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                                emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), arg1, arg2);
                else:
                    if not stor19[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not stor19[address(arg2)]:
                            if arg3 and buyFee > -1 / arg3:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg3 * buyFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg3 * buyFee / 100
                            emit Transfer((arg3 * buyFee / 100), arg1, tokenManagerAddress);
                            if arg3 < arg3 * buyFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                            emit Transfer((arg3 - (arg3 * buyFee / 100)), arg1, arg2);
                        else:
                            if not stor11[address(arg1)]:
                                if arg3 and sellFee > -1 / arg3:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg3 * sellFee / 100
                                emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                                if arg3 < arg3 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                            else:
                                if not uint8(stor8.field_16):
                                    if arg3 and sellFee > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * sellFee / 100
                                    emit Transfer((arg3 * sellFee / 100), arg1, tokenManagerAddress);
                                    if arg3 < arg3 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                    emit Transfer((arg3 - (arg3 * sellFee / 100)), arg1, arg2);
                                else:
                                    if arg3 and sub_407c9511 > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * sub_407c9511 / 100
                                    emit Transfer((arg3 * sub_407c9511 / 100), arg1, tokenManagerAddress);
                                    if arg3 < arg3 * sub_407c9511 / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), arg1, arg2);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7cb2b79c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa1ce381a(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8f32d59b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return (msg.sender == owner)
                if unknown_0x9155e083(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    require msg.sender == owner
                    stor10[address(arg1)] = uint8(bool(arg2))
                if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x983b2d56(?????):
                        if unknown_0x98650275(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if not msg.sender:
                                revert with 0, 'Roles: account is the zero address'
                            if not stor3[address(msg.sender)]:
                                revert with 0, 'Roles: account does not have role'
                            stor3[address(msg.sender)] = 0
                            emit MinterRemoved(msg.sender);
                        else:
                            require unknown_0x9fe9f623(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == bool(arg1)
                            require msg.sender == owner
                            stor4 = uint8(bool(arg1))
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require msg.sender == owner
                        if not address(arg1):
                            revert with 0, 'Roles: account is the zero address'
                        if stor3[address(arg1)]:
                            revert with 0, 'Roles: account already has role'
                        stor3[address(arg1)] = 1
                        emit MinterAdded(address(arg1));
                require not msg.value
                if bool(stor1.length):
                    if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                        revert with 0, 34
                    if bool(stor1.length):
                        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, stor1.length):
                            if 31 < uint255(stor1.length) * 0.5:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor1.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                            mem[160] = 256 * stor1.length.field_8
                    else:
                        if not bool(stor1.length) - (stor1.length.field_1 < 32):
                            revert with 0, 34
                        if stor1.length.field_1:
                            if 31 < stor1.length.field_1:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while stor1.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                            mem[160] = 256 * stor1.length.field_8
                    mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                    if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                        mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
                if not bool(stor1.length) - (stor1.length.field_1 < 32):
                    revert with 0, 34
                if bool(stor1.length):
                    if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor1.length):
                        if 31 < uint255(stor1.length) * 0.5:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor1.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                        mem[160] = 256 * stor1.length.field_8
                else:
                    if not bool(stor1.length) - (stor1.length.field_1 < 32):
                        revert with 0, 34
                    if stor1.length.field_1:
                        if 31 < stor1.length.field_1:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while stor1.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                        mem[160] = 256 * stor1.length.field_8
                mem[ceil32(stor1.length.field_1) + 224 len ceil32(stor1.length.field_1)] = mem[160 len ceil32(stor1.length.field_1)]
                if ceil32(stor1.length.field_1) > stor1.length.field_1:
                    mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 224] = 0
                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 224 len 2 * ceil32(stor1.length.field_1)]), 
            if uint32(call.func_hash) >> 224 != unknown_0x7cb2b79c(?????):
                if unknown_0x85566562(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor8.field_16))
                if unknown_0x888b553a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    require msg.sender == owner
                    Mask(248, 0, stor8.field_8) = Mask(248, 0, bool(arg1))
                else:
                    if unknown_0x88e68b3f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if not stor10[address(arg1)]:
                            return bool(stor10[address(arg1)])
                        return bool(uint8(stor8.field_8))
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x8ebfc796(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    require msg.sender == owner
                    stor13[address(arg1)] = uint8(bool(arg2))
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require msg.sender == owner
                tokenManagerAddress = address(arg1)
                mem[128] = 0x161a29000000000000000000000000000000000000000000000000000000000
                call address(arg1).0x161a290 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _85 = mem[128]
                require mem[128] <= test266151307()
                require mem[128] + 159 < return_data.size + 128
                _122 = mem[mem[128] + 128]
                if mem[mem[128] + 128] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128] + 128]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129
                mem[ceil32(return_data.size) + 128] = mem[mem[128] + 128]
                require (32 * _122) + _85 + 32 <= return_data.size
                s = ceil32(return_data.size) + 160
                idx = _85 + 160
                while idx < (32 * _122) + _85 + 160:
                    require mem[idx] == mem[idx + 12 len 20]
                    mem[s] = mem[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                stor13[stor17] = 0
                idx = 0
                while idx < stor18.length:
                    mem[0] = address(stor18[idx])
                    mem[32] = 19
                    stor19[address(stor18[idx])] = 0
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[32] = 13
                stor13[address(arg1)] = 1
                stor18.length = mem[ceil32(return_data.size) + 128]
                mem[0] = 18
                if not mem[ceil32(return_data.size) + 128]:
                    idx = 0
                    while stor18.length > idx:
                        uint256(stor18[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = ceil32(return_data.size) + 160
                    while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 128]) + 160 > idx:
                        address(stor18[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 128]) + 31) >> 5
                    while stor18.length > idx:
                        uint256(stor18[idx]) = 0
                        idx = idx + 1
                        continue 
                idx = 0
                while idx < stor18.length:
                    mem[0] = address(stor18[idx])
                    mem[32] = 19
                    stor19[address(stor18[idx])] = 1
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        if unknown_0xcec10c11(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xcec10c11(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require msg.sender == owner
                if arg1 > 49:
                    revert with 0, 'exceeded max buy fees'
                if arg2 > 49:
                    revert with 0, 'exceeded max sell fees'
                if arg3 > 49:
                    revert with 0, 'exceeded max tax receiver fees'
                buyFee = arg1
                sellFee = arg2
                sub_407c9511 = arg3
            else:
                if unknown_0xd4399790(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor13[address(arg1)])
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if uint32(call.func_hash) >> 224 != unknown_0xde05e712(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf3a54f2c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        require msg.sender == owner
                        uint8(stor8.field_0) = uint8(bool(arg1))
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require msg.sender == owner
                        require address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg3 == address(arg3)
                    require msg.sender == owner
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 'Amount larger than what's in the contract'
                    mem[ceil32(return_data.size) + 228 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2, mem[ceil32(return_data.size) + 228 len 28]
                    call address(arg1).mem[ceil32(return_data.size) + 228 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(return_data.size) + 232 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 260] == bool(mem[ceil32(return_data.size) + 260])
                            if not mem[ceil32(return_data.size) + 260]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if unknown_0xa1ce381a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if not stor11[address(arg1)]:
                return bool(stor11[address(arg1)])
            return bool(uint8(stor8.field_16))
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if arg2 >= allowance[msg.sender][address(arg1)]:
                allowance[msg.sender][address(arg1)] = 0
            else:
                if allowance[msg.sender][address(arg1)] < arg2:
                    revert with 0, 17
                allowance[msg.sender][address(arg1)] -= arg2
            emit Approval(allowance[msg.sender][address(arg1)], msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xaa271e1a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not address(arg1):
                        revert with 0, 'Roles: account is the zero address'
                    return bool(stor3[address(arg1)])
                if uint32(call.func_hash) >> 224 != unknown_0xb39e7604(?????):
                    require unknown_0xbf5d9d03(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_bf5d9d03
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not stor11[address(arg1)]:
                    return buyFee, sellFee
                if not uint8(stor8.field_16):
                    return buyFee, sellFee
                return buyFee, sub_407c9511
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require address(arg1)
            if not stor4:
                if owner != msg.sender:
                    require stor12[msg.sender]
            if stor10[address(msg.sender)]:
                if uint8(stor8.field_8):
                    revert with 0, 'Blacklisted'
            if stor10[address(arg1)]:
                if uint8(stor8.field_8):
                    revert with 0, 'Blacklisted'
            if stor19[address(arg1)]:
                if not stor13[address(msg.sender)]:
                    if arg2 > sub_bf5d9d03:
                        if stor11[address(msg.sender)]:
                            if uint8(stor8.field_16):
                                revert with 0, 'Amount greater than allowed limit'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if stor13[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if stor13[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if uint8(stor8.field_0):
                        if not stor19[address(arg1)]:
                            if arg2 and buyFee > -1 / arg2:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg2 * buyFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg2 * buyFee / 100
                            emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                            if arg2 < arg2 * buyFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                            emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, address(arg1));
                        else:
                            if not stor11[address(msg.sender)]:
                                if arg2 and sellFee > -1 / arg2:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg2 * sellFee / 100
                                emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                if arg2 < arg2 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                            else:
                                if not uint8(stor8.field_16):
                                    if arg2 and sellFee > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * sellFee / 100
                                    emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                    emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                                else:
                                    if arg2 and sub_407c9511 > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * sub_407c9511 / 100
                                    emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * sub_407c9511 / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                                    emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, address(arg1));
                    else:
                        if stor19[address(msg.sender)]:
                            if not stor19[address(arg1)]:
                                if arg2 and buyFee > -1 / arg2:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg2 * buyFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg2 * buyFee / 100
                                emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                                if arg2 < arg2 * buyFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                                emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, address(arg1));
                            else:
                                if not stor11[address(msg.sender)]:
                                    if arg2 and sellFee > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * sellFee / 100
                                    emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                    emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                                else:
                                    if not uint8(stor8.field_16):
                                        if arg2 and sellFee > -1 / arg2:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg2 * sellFee / 100
                                        emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                        if arg2 < arg2 * sellFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                        emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                                    else:
                                        if arg2 and sub_407c9511 > -1 / arg2:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg2 * sub_407c9511 / 100
                                        emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                                        if arg2 < arg2 * sub_407c9511 / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                                        emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, address(arg1));
                        else:
                            if not stor19[address(arg1)]:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if not stor19[address(arg1)]:
                                    if arg2 and buyFee > -1 / arg2:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg2 * buyFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg2 * buyFee / 100
                                    emit Transfer((arg2 * buyFee / 100), msg.sender, tokenManagerAddress);
                                    if arg2 < arg2 * buyFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyFee / 100)
                                    emit Transfer((arg2 - (arg2 * buyFee / 100)), msg.sender, address(arg1));
                                else:
                                    if not stor11[address(msg.sender)]:
                                        if arg2 and sellFee > -1 / arg2:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg2 * sellFee / 100
                                        emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                        if arg2 < arg2 * sellFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                        emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                                    else:
                                        if not uint8(stor8.field_16):
                                            if arg2 and sellFee > -1 / arg2:
                                                revert with 0, 17
                                            if balanceOf[stor17] > !(arg2 * sellFee / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] += arg2 * sellFee / 100
                                            emit Transfer((arg2 * sellFee / 100), msg.sender, tokenManagerAddress);
                                            if arg2 < arg2 * sellFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFee / 100)
                                            emit Transfer((arg2 - (arg2 * sellFee / 100)), msg.sender, address(arg1));
                                        else:
                                            if arg2 and sub_407c9511 > -1 / arg2:
                                                revert with 0, 17
                                            if balanceOf[stor17] > !(arg2 * sub_407c9511 / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] += arg2 * sub_407c9511 / 100
                                            emit Transfer((arg2 * sub_407c9511 / 100), msg.sender, tokenManagerAddress);
                                            if arg2 < arg2 * sub_407c9511 / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_407c9511 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_407c9511 / 100)
                                            emit Transfer((arg2 - (arg2 * sub_407c9511 / 100)), msg.sender, address(arg1));
    else:
        if unknown_0x407c9511(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x4cd412d5(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x407c9511(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_407c9511
                if uint32(call.func_hash) >> 224 != unknown_0x40c10f19(?????):
                    if unknown_0x47062402(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return buyFee
                    if unknown_0x47e9c99a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        require msg.sender == owner
                        stor11[address(arg1)] = uint8(bool(arg2))
                    else:
                        if unknown_0x4c58571b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == bool(arg1)
                            require msg.sender == owner
                            Mask(240, 0, stor8.field_16) = Mask(240, 0, bool(arg1))
                        else:
                            require unknown_0x4c94531f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require msg.sender == owner
                            sub_bf5d9d03 = arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'Roles: account is the zero address'
                    if not stor3[address(msg.sender)]:
                        revert with 0, 'MinterRole: caller does not have the Minter role'
                    if totalSupply > !arg2:
                        revert with 0, 17
                    if totalSupply + arg2 <= test266151307():
                        if totalSupply + arg2 < totalSupply:
                            revert with 0, 17
                        if totalSupply > !arg2:
                            revert with 0, 17
                        totalSupply += arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                    else:
                        if test266151307() < totalSupply:
                            revert with 0, 17
                        if totalSupply > !(-totalSupply + test266151307()):
                            revert with 0, 17
                        totalSupply = test266151307()
                        if balanceOf[address(arg1)] > !(-totalSupply + test266151307()):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + -totalSupply + test266151307()
            else:
                if unknown_0x4cd412d5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor4)
                if unknown_0x5abe6711(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor8.field_0))
                if unknown_0x69eaa6b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor12[address(arg1)])
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require msg.sender == owner
                    emit OwnershipRenounced(owner);
                    owner = 0
                else:
                    require unknown_0x72622a61(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    require msg.sender == owner
                    if arg1 > eth.balance(this.address):
                        revert with 0, 'Amount larger than what's in the contract'
                    call address(arg2) with:
                       value arg1 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: AVAX_TRANSFER_FAILED'
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x008413d0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(uint8(stor8.field_8))
            if uint32(call.func_hash) >> 224 != name():
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                if uint32(call.func_hash) >> 224 != unknown_0x14cce6df(?????):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                require msg.sender == owner
                stor12[address(arg1)] = uint8(bool(arg2))
            require not msg.value
            if bool(stor0.length):
                if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
                    revert with 0, 34
                if bool(stor0.length):
                    if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor0.length):
                        if 31 < uint255(stor0.length) * 0.5:
                            mem[160] = uint256(stor0.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor0.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                        mem[160] = 256 * stor0.length.field_8
                else:
                    if not bool(stor0.length) - (stor0.length.field_1 < 32):
                        revert with 0, 34
                    if stor0.length.field_1:
                        if 31 < stor0.length.field_1:
                            mem[160] = uint256(stor0.field_0)
                            idx = 160
                            s = 0
                            while stor0.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                        mem[160] = 256 * stor0.length.field_8
                mem[ceil32(uint255(stor0.length) * 0.5) + 224 len ceil32(uint255(stor0.length) * 0.5)] = mem[160 len ceil32(uint255(stor0.length) * 0.5)]
                if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
                    mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
            if not bool(stor0.length) - (stor0.length.field_1 < 32):
                revert with 0, 34
            if bool(stor0.length):
                if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor0.length):
                    if 31 < uint255(stor0.length) * 0.5:
                        mem[160] = uint256(stor0.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor0.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor0[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                    mem[160] = 256 * stor0.length.field_8
            else:
                if not bool(stor0.length) - (stor0.length.field_1 < 32):
                    revert with 0, 34
                if stor0.length.field_1:
                    if 31 < stor0.length.field_1:
                        mem[160] = uint256(stor0.field_0)
                        idx = 160
                        s = 0
                        while stor0.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor0[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                    mem[160] = 256 * stor0.length.field_8
            mem[ceil32(stor0.length.field_1) + 224 len ceil32(stor0.length.field_1)] = mem[160 len ceil32(stor0.length.field_1)]
            if ceil32(stor0.length.field_1) > stor0.length.field_1:
                mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 224] = 0
            return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 224 len 2 * ceil32(stor0.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x2a709b14(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return tokenManagerAddress
            if unknown_0x2b14ca56(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sellFee
            if unknown_0x3092afd5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require msg.sender == owner
                if not address(arg1):
                    revert with 0, 'Roles: account is the zero address'
                if not stor3[address(arg1)]:
                    revert with 0, 'Roles: account does not have role'
                stor3[address(arg1)] = 0
                emit MinterRemoved(address(arg1));
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            allowance[msg.sender][address(arg1)] += arg2
            emit Approval(allowance[msg.sender][address(arg1)], msg.sender, address(arg1));
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            require address(arg2)
            if not stor4:
                if owner != msg.sender:
                    require stor12[msg.sender]
            if allowance[address(arg1)][msg.sender] != -1:
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                allowance[address(arg1)][msg.sender] -= arg3
            if stor10[address(arg1)]:
                if uint8(stor8.field_8):
                    revert with 0, 'Blacklisted'
            if stor10[address(arg2)]:
                if uint8(stor8.field_8):
                    revert with 0, 'Blacklisted'
            if stor19[address(arg2)]:
                if not stor13[address(arg1)]:
                    if arg3 > sub_bf5d9d03:
                        if stor11[address(arg1)]:
                            if uint8(stor8.field_16):
                                revert with 0, 'Amount greater than allowed limit'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if stor13[address(arg1)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if stor13[address(arg2)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if uint8(stor8.field_0):
                        if not stor19[address(arg2)]:
                            if arg3 and buyFee > -1 / arg3:
                                revert with 0, 17
                            if balanceOf[stor17] > !(arg3 * buyFee / 100):
                                revert with 0, 17
                            balanceOf[stor17] += arg3 * buyFee / 100
                            emit Transfer((arg3 * buyFee / 100), address(arg1), tokenManagerAddress);
                            if arg3 < arg3 * buyFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                            emit Transfer((arg3 - (arg3 * buyFee / 100)), address(arg1), address(arg2));
                        else:
                            if not stor11[address(arg1)]:
                                if arg3 and sellFee > -1 / arg3:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg3 * sellFee / 100
                                emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                if arg3 < arg3 * sellFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                            else:
                                if not uint8(stor8.field_16):
                                    if arg3 and sellFee > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * sellFee / 100
                                    emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                    if arg3 < arg3 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                    emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                                else:
                                    if arg3 and sub_407c9511 > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * sub_407c9511 / 100
                                    emit Transfer((arg3 * sub_407c9511 / 100), address(arg1), tokenManagerAddress);
                                    if arg3 < arg3 * sub_407c9511 / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                                    emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), address(arg1), address(arg2));
                    else:
                        if stor19[address(arg1)]:
                            if not stor19[address(arg2)]:
                                if arg3 and buyFee > -1 / arg3:
                                    revert with 0, 17
                                if balanceOf[stor17] > !(arg3 * buyFee / 100):
                                    revert with 0, 17
                                balanceOf[stor17] += arg3 * buyFee / 100
                                emit Transfer((arg3 * buyFee / 100), address(arg1), tokenManagerAddress);
                                if arg3 < arg3 * buyFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                                emit Transfer((arg3 - (arg3 * buyFee / 100)), address(arg1), address(arg2));
                            else:
                                if not stor11[address(arg1)]:
                                    if arg3 and sellFee > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * sellFee / 100
                                    emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                    if arg3 < arg3 * sellFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                    emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                                else:
                                    if not uint8(stor8.field_16):
                                        if arg3 and sellFee > -1 / arg3:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg3 * sellFee / 100
                                        emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                        if arg3 < arg3 * sellFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                        emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                                    else:
                                        if arg3 and sub_407c9511 > -1 / arg3:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg3 * sub_407c9511 / 100
                                        emit Transfer((arg3 * sub_407c9511 / 100), address(arg1), tokenManagerAddress);
                                        if arg3 < arg3 * sub_407c9511 / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                                        emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), address(arg1), address(arg2));
                        else:
                            if not stor19[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if not stor19[address(arg2)]:
                                    if arg3 and buyFee > -1 / arg3:
                                        revert with 0, 17
                                    if balanceOf[stor17] > !(arg3 * buyFee / 100):
                                        revert with 0, 17
                                    balanceOf[stor17] += arg3 * buyFee / 100
                                    emit Transfer((arg3 * buyFee / 100), address(arg1), tokenManagerAddress);
                                    if arg3 < arg3 * buyFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyFee / 100)
                                    emit Transfer((arg3 - (arg3 * buyFee / 100)), address(arg1), address(arg2));
                                else:
                                    if not stor11[address(arg1)]:
                                        if arg3 and sellFee > -1 / arg3:
                                            revert with 0, 17
                                        if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                            revert with 0, 17
                                        balanceOf[stor17] += arg3 * sellFee / 100
                                        emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                        if arg3 < arg3 * sellFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                        emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                                    else:
                                        if not uint8(stor8.field_16):
                                            if arg3 and sellFee > -1 / arg3:
                                                revert with 0, 17
                                            if balanceOf[stor17] > !(arg3 * sellFee / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] += arg3 * sellFee / 100
                                            emit Transfer((arg3 * sellFee / 100), address(arg1), tokenManagerAddress);
                                            if arg3 < arg3 * sellFee / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellFee / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFee / 100)
                                            emit Transfer((arg3 - (arg3 * sellFee / 100)), address(arg1), address(arg2));
                                        else:
                                            if arg3 and sub_407c9511 > -1 / arg3:
                                                revert with 0, 17
                                            if balanceOf[stor17] > !(arg3 * sub_407c9511 / 100):
                                                revert with 0, 17
                                            balanceOf[stor17] += arg3 * sub_407c9511 / 100
                                            emit Transfer((arg3 * sub_407c9511 / 100), address(arg1), tokenManagerAddress);
                                            if arg3 < arg3 * sub_407c9511 / 100:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_407c9511 / 100)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_407c9511 / 100)
                                            emit Transfer((arg3 - (arg3 * sub_407c9511 / 100)), address(arg1), address(arg2));
    return 1
}



}
