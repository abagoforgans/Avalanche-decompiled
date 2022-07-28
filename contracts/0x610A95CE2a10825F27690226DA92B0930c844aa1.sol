contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
uint256 serviceFee;

function serviceFee() {
    return serviceFee
}

function owner() {
    return owner
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

function updateServiceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    serviceFee = arg1
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw balance.'
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

function sub_6b10d65b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if msg.value < serviceFee:
        revert with 0, 'Service fee must be provided.'
    if stor1[address(msg.sender)].field_0:
        if stor1[address(msg.sender)].field_0 == stor1[address(msg.sender)].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor1[address(msg.sender)].field_0 = 0
            idx = 0
            while stor1[address(msg.sender)].field_1 + 31 / 32 > idx:
                stor1[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[address(msg.sender)].field_0 = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor1[address(msg.sender)][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor1[address(msg.sender)].field_1 + 31 / 32 > idx:
                stor1[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor1[address(msg.sender)].field_0 == stor1[address(msg.sender)].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor1[address(msg.sender)].field_0 = 0
            idx = 0
            while stor1[address(msg.sender)].field_1 + 31 / 32 > idx:
                stor1[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor1[address(msg.sender)].field_0 = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor1[address(msg.sender)][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor1[address(msg.sender)].field_1 + 31 / 32 > idx:
                stor1[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_95123b0b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1[address(arg1)].field_0:
        if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[address(arg1)].field_0:
            if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[address(arg1)].field_1:
                if 31 < stor1[address(arg1)].field_1:
                    mem[128] = stor1[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor1[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_1), data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
                mem[128] = 256 * stor1[address(arg1)].field_8
        else:
            if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor1[address(arg1)].field_1:
                if 31 < stor1[address(arg1)].field_1:
                    mem[128] = stor1[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor1[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_1), data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
                mem[128] = 256 * stor1[address(arg1)].field_8
        mem[ceil32(stor1[address(arg1)].field_1) + 192 len ceil32(stor1[address(arg1)].field_1)] = mem[128 len ceil32(stor1[address(arg1)].field_1)]
        if ceil32(stor1[address(arg1)].field_1) > stor1[address(arg1)].field_1:
            mem[ceil32(stor1[address(arg1)].field_1) + stor1[address(arg1)].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[address(arg1)].field_1), data=mem[128 len ceil32(stor1[address(arg1)].field_1)], mem[(2 * ceil32(stor1[address(arg1)].field_1)) + 192 len 2 * ceil32(stor1[address(arg1)].field_1)]), 
    if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
        revert with 'NH{q', 34
    if stor1[address(arg1)].field_0:
        if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[address(arg1)].field_1:
            if 31 < stor1[address(arg1)].field_1:
                mem[128] = stor1[address(arg1)].field_0
                idx = 128
                s = 0
                while stor1[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
            mem[128] = 256 * stor1[address(arg1)].field_8
    else:
        if stor1[address(arg1)].field_0 == stor1[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor1[address(arg1)].field_1:
            if 31 < stor1[address(arg1)].field_1:
                mem[128] = stor1[address(arg1)].field_0
                idx = 128
                s = 0
                while stor1[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)])
            mem[128] = 256 * stor1[address(arg1)].field_8
    mem[ceil32(stor1[address(arg1)].field_1) + 192 len ceil32(stor1[address(arg1)].field_1)] = mem[128 len ceil32(stor1[address(arg1)].field_1)]
    if ceil32(stor1[address(arg1)].field_1) > stor1[address(arg1)].field_1:
        mem[ceil32(stor1[address(arg1)].field_1) + stor1[address(arg1)].field_1 + 192] = 0
    return Array(len=stor1[address(arg1)].field_0, data=mem[128 len ceil32(stor1[address(arg1)].field_1)], mem[(2 * ceil32(stor1[address(arg1)].field_1)) + 192 len 2 * ceil32(stor1[address(arg1)].field_1)]), 
}



}
