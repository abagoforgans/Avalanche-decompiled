contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize(address arg1, address arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
array of struct stor101;
array of uint256 stor102;
array of uint256 stor103;
uint256 stor104;
address owner;
array of struct stor201;
mapping of uint256 stor202;
mapping of uint8 stor203;
address stor205;
uint8 stor210; offset 184
uint8 stor210; offset 192
address stor210;
uint256 stor211;
uint8 sub_4abdefd5;
uint8 sellTax; offset 8
uint8 sub_e87ac763; offset 16
uint16 sub_30d748b1; offset 184
address stor215; offset 24
address stor216;
mapping of struct sub_bbba6ea0;
address sub_fff08013Address;

function totalSupply() {
    return totalSupply
}

function sub_30d748b1(?) {
    return sub_30d748b1
}

function sub_4abdefd5(?) {
    return sub_4abdefd5
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_bbba6ea0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bbba6ea0[arg1].field_0, sub_bbba6ea0[arg1].field_0, sub_bbba6ea0[arg1].field_0, sub_bbba6ea0[arg1].field_192
}

function sellTax() {
    return sellTax
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e87ac763(?) {
    return sub_e87ac763
}

function sub_fff08013(?) {
    return sub_fff08013Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSellTax(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sellTax = arg1
}

function sub_050cb2a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e87ac763 = uint8(arg1)
}

function sub_eaf1a71b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4abdefd5 = uint8(arg1)
}

function sub_aa1ac253(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_30d748b1 = uint16(arg1)
}

function sub_4e4bce64(?) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(216, 0, arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor211 = Mask(216, 0, arg1)
}

function excludeTaxAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor203[address(arg1)] = 1
}

function sub_b8b633de(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor210.field_184) = uint8(arg1)
}

function setBridgeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor216 = arg1
    stor203[address(arg1)] = 1
}

function setTreasuryAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor215 = arg1
    stor203[address(arg1)] = 1
}

function sub_0adf7634(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fff08013Address = address(arg1)
    emit 0x8540bb92: msg.sender, address(arg1)
}

function removeTaxAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not authorized to remove the contract from tax'
    stor203[address(arg1)] = 0
}

function sub_3732e3d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor210.field_192) > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'autoSellingRatio should be lower than 100'
    uint8(stor210.field_192) = uint8(arg1)
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

function excludedRedistributionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor202[address(arg1)]:
        stor201.length++
        stor201[stor201.length].field_0 = arg1
        stor201[stor201.length].field_160 = 0
        stor202[address(arg1)] = stor201.length
}

function setUniswapV2Pair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor205 = arg1
    if not stor202[address(arg1)]:
        stor201.length++
        stor201[stor201.length].field_0 = arg1
        stor201[stor201.length].field_160 = 0
        stor202[address(arg1)] = stor201.length
}

function setRedistributionContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor210.field_0) = arg1
    if not stor202[address(arg1)]:
        stor201.length++
        stor201[stor201.length].field_0 = arg1
        stor201[stor201.length].field_160 = 0
        stor202[address(arg1)] = stor201.length
    stor203[address(arg1)] = 1
}

function createRedistribution() {
    if address(stor210.field_0) != msg.sender:
        revert with 0, 'Bad caller'
    stor104++
    emit Snapshot(stor104);
    if var36002 >= stor201.length:
        if totalSupply < var36003:
            revert with 'NH{q', 17
        return stor104, totalSupply - var36003
    if var42001 >= stor201.length:
        revert with 'NH{q', 50
    if var52001 > !var52002:
        revert with 'NH{q', 17
    if var58001 == -1:
        revert with 'NH{q', 17
    # nil
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function totalSupplyAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor102.length:
        idx = stor102.length
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 'NH{q', 17
            if idx xor 0 / 2 >= stor102.length:
                revert with 'NH{q', 50
            mem[0] = 102
            if stor102[0.5 / idx xor 0] > arg1:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor102.length:
        return totalSupply
    if 0 >= stor103.length:
        revert with 'NH{q', 50
    return stor103
}

function removeRedistributionAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor202[address(arg1)]:
        if stor202[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor201.length < 1:
            revert with 'NH{q', 17
        if stor201.length - 1 != stor202[address(arg1)] - 1:
            if stor201.length - 1 >= stor201.length:
                revert with 'NH{q', 50
            if stor202[address(arg1)] - 1 >= stor201.length:
                revert with 'NH{q', 50
            stor201[stor202[address(arg1)]].field_0 = stor201[stor201.length].field_0
            stor202[stor201[stor201.length].field_0] = stor202[address(arg1)]
        if not stor201.length:
            revert with 'NH{q', 49
        stor201[stor201.length].field_0 = 0
        stor201.length--
        stor202[address(arg1)] = 0
}

function balanceOfAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor104:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor101[address(arg1)].field_0:
        idx = stor101[mem[0]].field_0
        while 0 < idx:
            if 0 > !(idx xor 0 / 2):
                revert with 'NH{q', 17
            if idx xor 0 / 2 >= stor101[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 101)
            if stor101[address(arg1)][0.5 / idx xor 0].field_0 > arg2:
                idx = idx xor 0 / 2
                continue 
            if 1 > !(idx xor 0 / 2):
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor101[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor101[address(arg1)].field_256:
        revert with 'NH{q', 50
    return stor101[address(arg1)][1].field_0
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor216 != msg.sender:
        revert with 0, 'Only bridge can mint'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if not stor101[address(arg1)].field_0:
        if 0 < stor104:
            stor101[address(arg1)].field_0++
            stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 = stor104
            stor101[address(arg1)].field_256++
            stor[stor101[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor101', 101)))].field_0 = balanceOf[address(arg1)]
    else:
        if stor101[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor101[address(arg1)].field_0 - 1 >= stor101[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 < stor104:
            stor101[address(arg1)].field_0++
            stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 = stor104
            stor101[address(arg1)].field_256++
            stor[stor101[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor101', 101)))].field_0 = balanceOf[address(arg1)]
    if not stor102.length:
        if 0 < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    else:
        if stor102.length < 1:
            revert with 'NH{q', 17
        if stor102.length - 1 >= stor102.length:
            revert with 'NH{q', 50
        if stor102[stor102.length] < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    if totalSupply > !arg2:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor216 != msg.sender:
        revert with 0, 'Only bridge can mint'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not stor101[address(arg1)].field_0:
        if 0 < stor104:
            stor101[address(arg1)].field_0++
            stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 = stor104
            stor101[address(arg1)].field_256++
            stor[stor101[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor101', 101)))].field_0 = balanceOf[address(arg1)]
    else:
        if stor101[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor101[address(arg1)].field_0 - 1 >= stor101[address(arg1)].field_0:
            revert with 'NH{q', 50
        if stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 < stor104:
            stor101[address(arg1)].field_0++
            stor101[address(arg1)][stor101[address(arg1)].field_0].field_0 = stor104
            stor101[address(arg1)].field_256++
            stor[stor101[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor101', 101)))].field_0 = balanceOf[address(arg1)]
    if not stor102.length:
        if 0 < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    else:
        if stor102.length < 1:
            revert with 'NH{q', 17
        if stor102.length - 1 >= stor102.length:
            revert with 'NH{q', 50
        if stor102[stor102.length] < stor104:
            stor102.length++
            stor102[stor102.length] = stor104
            stor103.length++
            stor103[stor103.length] = totalSupply
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_16455051(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (('cd', 36).length << 7) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require calldata.size - s >= 128
        _68 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[s] == uint64(cd[s])
        mem[_68] = cd[s]
        require cd[(s + 32)] == uint64(cd[(s + 32)])
        mem[_68 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == uint64(cd[(s + 64)])
        mem[_68 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == uint64(cd[(s + 96)])
        mem[_68 + 96] = cd[(s + 96)]
        mem[t] = _68
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'array size error'
    if sub_fff08013Address != msg.sender:
        revert with 0, 'Only Tax Agent'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 24 len 8] > 10000:
            revert with 0, 'MAXDISCOUNT'
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 56 len 8] > 10000:
            revert with 0, 'MAXDISCOUNT'
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 88 len 8] > 10000:
            revert with 0, 'MAXDISCOUNT'
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 219
        sub_bbba6ea0[mem[(32 * idx) + 140 len 20]].field_0 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 24 len 8]
        sub_bbba6ea0[mem[(32 * idx) + 140 len 20]].field_64 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 56 len 8]
        sub_bbba6ea0[mem[(32 * idx) + 140 len 20]].field_128 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 88 len 8]
        sub_bbba6ea0[mem[(32 * idx) + 140 len 20]].field_192 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 120 len 8]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}



}
