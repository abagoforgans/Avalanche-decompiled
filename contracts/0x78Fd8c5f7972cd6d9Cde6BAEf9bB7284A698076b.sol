contract main {




// =====================  Runtime code  =====================


#
#  - enterGame(uint256 arg1)
#  - placeCard(uint256 arg1, uint256 arg2)
#  - _fallback()
#
const sub_12de866e(?) = 300

const decimals = 0


mapping of uint256 balanceOf;
array of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 lastGameId;
mapping of struct stor7;
mapping of uint256 stor8;
uint256 sub_cd479fe9;
uint256 sub_5cf9e281;
address stor11;

function totalSupply() {
    return totalSupply
}

function sub_5cf9e281(?) {
    return sub_5cf9e281
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getLastGameId() {
    return lastGameId
}

function sub_cd479fe9(?) {
    return sub_cd479fe9
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9e7081cf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cd479fe9 = arg1
    emit 0x83bd9e1f: arg1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function exitGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor7[stor8[arg1]].field_2304:
        revert with 0, 'Game has already started'
    if msg.sender == stor7[stor8[arg1]].field_256:
        stor7[stor8[arg1]].field_256 = 0
    else:
        if stor7[stor8[arg1]].field_1280 != msg.sender:
            revert with 0, 'You are not in this pool'
        stor7[stor8[arg1]].field_1280 = 0
    emit 0xe813222b: stor7[stor8[arg1]].field_0, arg1, msg.sender
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
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

function getGameById(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 1088
    s = 3
    while 1152 > idx + 32:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1216
    s = 6
    while 1312 > idx + 32:
        mem[idx + 32] = stor7[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor7[arg1].field_0, 
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           stor7[arg1].field_768,
           mem[1120],
           stor7[arg1].field_1280,
           stor7[arg1].field_1536,
           mem[1248 len 64],
           bool(stor7[arg1].field_2304),
           bool(stor7[arg1].field_2312),
           stor7[arg1].field_2304,
           stor7[arg1].field_2304,
           stor7[arg1].field_2304,
           stor7[arg1].field_2560
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if msg.sender:
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfers between users are not allowed'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getGameByPoolSlot(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 1056
    s = 2
    while 1152 > idx + 32:
        mem[idx + 32] = stor7[stor8[arg1]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1216
    s = 6
    while 1312 > idx + 32:
        mem[idx + 32] = stor7[stor8[arg1]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor7[stor8[arg1]].field_0, 
           stor7[stor8[arg1]].field_256,
           stor7[stor8[arg1]].field_512,
           mem[1088 len 64],
           stor7[stor8[arg1]].field_1280,
           stor7[stor8[arg1]].field_1536,
           mem[1248 len 64],
           bool(stor7[stor8[arg1]].field_2304),
           bool(stor7[stor8[arg1]].field_2312),
           stor7[stor8[arg1]].field_2304,
           stor7[stor8[arg1]].field_2304,
           stor7[stor8[arg1]].field_2304,
           stor7[stor8[arg1]].field_2560
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 and sub_cd479fe9 > -1 / arg1:
        revert with 0, 17
    if eth.balance(this.address) < arg1 * sub_cd479fe9:
        revert with 0, 'Not enough balance on contract'
    call msg.sender with:
       value arg1 * sub_cd479fe9 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensExchanged(arg1, msg.sender);
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function startGames(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while arg1.length > uint8(idx):
        if uint8(idx) >= arg1.length:
            revert with 0, 50
        lastGameId++
        stor8[cd[((32 * uint8(idx)) + arg1 + 36)]] = lastGameId
        mem[0] = lastGameId
        mem[32] = 7
        stor7[stor6].field_0 = lastGameId
        stor7[stor6].field_2320 = 1
        emit 0x3d29d5e2: lastGameId, cd[((32 * uint8(idx)) + arg1 + 36)]
        if cd[((32 * uint8(idx)) + arg1 + 36)] > sub_5cf9e281:
            if uint8(idx) >= arg1.length:
                revert with 0, 50
            sub_5cf9e281 = cd[((32 * uint8(idx)) + arg1 + 36)]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg1:
        if arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'transfers between users are not allowed'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function abortGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor7[stor8[arg1]].field_256 != msg.sender:
        if stor7[stor8[arg1]].field_1280 != msg.sender:
            revert with 0, 'You are not playing in this pool'
    if not stor7[stor8[arg1]].field_2304:
        revert with 0, 'Game should be running'
    if stor7[stor8[arg1]].field_2312:
        revert with 0, 'Game should be running'
    if block.timestamp < stor7[stor8[arg1]].field_2560:
        revert with 0, 17
    if block.timestamp - stor7[stor8[arg1]].field_2560 < 300:
        revert with 0, 'Timeout has not passed'
    if stor7[stor8[arg1]].field_256 != msg.sender:
        if stor7[stor8[arg1]].field_1280 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't abort game at your turn'
        if 2 == stor7[stor8[arg1]].field_2320:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't abort game at your turn'
    else:
        if 1 == stor7[stor8[arg1]].field_2320:
            if stor7[stor8[arg1]].field_1280 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't abort game at your turn'
            if 2 == stor7[stor8[arg1]].field_2320:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't abort game at your turn'
    stor7[stor8[arg1]].field_2304 = 1
    if True and not Mask(160, 24, 0xffffffffffffffffff0000000000000000000000000000000000000000ff00ff and stor7[stor8[arg1]].field_2304) >> 24 and not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -2:
        revert with 0, 17
    totalSupply++
    if balanceOf[0 or Mask(160, 24, 0xffffffffffffffffff0000000000000000000000000000000000000000ff00ff and stor7[stor8[arg1]].field_2304) >> 24 or msg.sender] > -2:
        revert with 0, 17
    balanceOf[0 or Mask(160, 24, 0xffffffffffffffffff0000000000000000000000000000000000000000ff00ff and stor7[stor8[arg1]].field_2304) >> 24 or msg.sender]++
    emit Transfer(1, 0, 0 or Mask(160, 24, 0xffffffffffffffffff0000000000000000000000000000000000000000ff00ff and stor7[stor8[arg1]].field_2304) >> 24 or msg.sender);
    emit 0x2c9df089: stor7[stor8[arg1]].field_0, arg1, stor7[stor8[arg1]].field_2328
    idx = 0
    while uint8(idx) < 3:
        if uint8(idx) >= 3:
            revert with 0, 50
        if stor7[stor8[arg1]][uint8(idx)].field_512:
            mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = stor7[stor8[arg1]].field_256
            mem[164] = stor7[stor8[arg1]][uint8(idx)].field_512
            mem[196] = 1
            mem[228] = 160
            mem[260] = 0
            require ext_code.size(stor11)
            call stor11.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), stor7[stor8[arg1]].field_256, stor7[stor8[arg1]][uint8(idx)].field_512, 1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if stor7[stor8[arg1]][uint8(idx)].field_1536:
            if uint8(idx) >= 3:
                revert with 0, 50
            mem[96] = 0xf242432a00000000000000000000000000000000000000000000000000000000
            mem[100] = this.address
            mem[132] = stor7[stor8[arg1]].field_1280
            mem[164] = stor7[stor8[arg1]][uint8(idx)].field_1536
            mem[196] = 1
            mem[228] = 160
            mem[260] = 0
            require ext_code.size(stor11)
            call stor11.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args address(this.address), stor7[stor8[arg1]].field_1280, stor7[stor8[arg1]][uint8(idx)].field_1536, 1, 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function getAllGames() {
    if 1 > !sub_5cf9e281:
        revert with 0, 17
    if sub_5cf9e281 + 1 > test266151307():
        revert with 0, 65
    mem[96] = sub_5cf9e281 + 1
    mem[64] = (32 * sub_5cf9e281 + 1) + 128
    if not sub_5cf9e281 + 1:
        idx = 0
        while uint8(idx) <= sub_5cf9e281:
            mem[0] = stor8[idx << 248]
            mem[32] = 7
            _43 = mem[64]
            mem[64] = mem[64] + 288
            mem[_43] = stor7[stor8[idx << 248]].field_0
            _44 = mem[64]
            mem[64] = mem[64] + 64
            mem[_44] = stor7[stor8[idx << 248]].field_256
            _45 = mem[64]
            mem[64] = mem[64] + 96
            mem[_45] = stor7[stor8[idx << 248]].field_512
            s = _45
            t = sha3(stor8[idx << 248], 7) + 2
            while _45 + 96 > s + 32:
                mem[s + 32] = allowance[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_44 + 32] = _45
            mem[_43 + 32] = _44
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = stor7[stor8[idx << 248]].field_1280
            _83 = mem[64]
            mem[64] = mem[64] + 96
            mem[_83] = stor7[stor8[idx << 248]].field_1536
            s = _83
            t = sha3(stor8[idx << 248], 7) + 6
            while _83 + 96 > s + 32:
                mem[s + 32] = allowance[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_82 + 32] = _83
            mem[_43 + 64] = _82
            mem[_43 + 96] = bool(stor7[stor8[idx << 248]].field_2304)
            mem[_43 + 128] = bool(stor7[stor8[idx << 248]].field_2312)
            mem[_43 + 160] = stor7[stor8[idx << 248]].field_2320
            mem[_43 + 192] = stor7[stor8[idx << 248]].field_2328
            mem[_43 + 224] = stor7[stor8[idx << 248]].field_2488
            mem[_43 + 256] = stor7[stor8[idx << 248]].field_2560
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 128] = _43
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        mem[mem[64]] = 32
        _49 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _49:
            _143 = mem[t]
            mem[s] = mem[mem[t]]
            _146 = mem[_143 + 32]
            mem[s + 32] = mem[mem[_143 + 32] + 12 len 20]
            u = 0
            v = s + 64
            w = mem[_146 + 32]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            _177 = mem[_143 + 64]
            mem[s + 160] = mem[mem[_143 + 64] + 12 len 20]
            u = 0
            v = s + 192
            w = mem[_177 + 32]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[s + 288] = bool(mem[_143 + 96])
            mem[s + 320] = bool(mem[_143 + 128])
            mem[s + 352] = mem[_143 + 191 len 1]
            mem[s + 384] = mem[_143 + 204 len 20]
            mem[s + 416] = mem[_143 + 255 len 1]
            mem[s + 448] = mem[_143 + 256]
            idx = idx + 1
            s = s + 480
            t = t + 32
            continue 
    else:
        mem[(32 * sub_5cf9e281 + 1) + 128] = 0
        mem[(32 * sub_5cf9e281 + 1) + 416] = 0
        mem[(32 * sub_5cf9e281 + 1) + 480 len 96] = call.data[calldata.size len 96]
        mem[(32 * sub_5cf9e281 + 1) + 448] = (32 * sub_5cf9e281 + 1) + 480
        mem[var24002] = (32 * sub_5cf9e281 + 1) + 416
        mem[(32 * sub_5cf9e281 + 1) + 576] = 0
        mem[64] = (32 * sub_5cf9e281 + 1) + 736
        mem[(32 * sub_5cf9e281 + 1) + 640 len 96] = call.data[calldata.size len 96]
        mem[(32 * sub_5cf9e281 + 1) + 608] = (32 * sub_5cf9e281 + 1) + 640
        mem[var24002 + 32] = (32 * sub_5cf9e281 + 1) + 576
        mem[var24002 + 64] = 0
        mem[var24002 + 96] = 0
        mem[var24002 + 128] = 0
        mem[var24002 + 160] = 0
        mem[var24002 + 192] = 0
        mem[var24002 + 224] = 0
        mem[var24005] = var24003
        s = (32 * sub_5cf9e281 + 1) + 448
        s = (32 * sub_5cf9e281 + 1) + 416
        s = var24002
        s = var24003
        s = var24005
        idx = var24006
        while idx - 1:
            _152 = mem[64]
            mem[64] = mem[64] + 288
            mem[_152] = 0
            _153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_153] = 0
            mem[64] = mem[64] + 96
            mem[(32 * sub_5cf9e281 + 1) + 480 len 96] = call.data[calldata.size len 96]
            mem[_153 + 32] = (32 * sub_5cf9e281 + 1) + 480
            mem[_152 + 32] = _153
            mem[64] = mem[64] + 64
            mem[(32 * sub_5cf9e281 + 1) + 576] = 0
            mem[64] = mem[64] + 96
            mem[(32 * sub_5cf9e281 + 1) + 640 len 96] = call.data[calldata.size len 96]
            mem[(32 * sub_5cf9e281 + 1) + 608] = (32 * sub_5cf9e281 + 1) + 640
            mem[_152 + 64] = (32 * sub_5cf9e281 + 1) + 576
            mem[_152 + 96] = 0
            mem[_152 + 128] = 0
            mem[_152 + 160] = 0
            mem[_152 + 192] = 0
            mem[_152 + 224] = 0
            mem[_152 + 256] = 0
            mem[s + 32] = _152
            s = _153 + 32
            s = _153
            s = _152 + 32
            s = _152
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while uint8(idx) <= sub_5cf9e281:
            mem[0] = stor8[idx << 248]
            mem[32] = 7
            _174 = mem[64]
            mem[64] = mem[64] + 288
            mem[_174] = stor7[stor8[idx << 248]].field_0
            _175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_175] = stor7[stor8[idx << 248]].field_256
            _176 = mem[64]
            mem[64] = mem[64] + 96
            mem[_176] = stor7[stor8[idx << 248]].field_512
            s = _176
            t = sha3(stor8[idx << 248], 7) + 2
            while _176 + 96 > s + 32:
                mem[s + 32] = allowance[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_175 + 32] = _176
            mem[_174 + 32] = _175
            _195 = mem[64]
            mem[64] = mem[64] + 64
            mem[_195] = stor7[stor8[idx << 248]].field_1280
            _196 = mem[64]
            mem[64] = mem[64] + 96
            mem[_196] = stor7[stor8[idx << 248]].field_1536
            s = _196
            t = sha3(stor8[idx << 248], 7) + 6
            while _196 + 96 > s + 32:
                mem[s + 32] = allowance[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_195 + 32] = _196
            mem[_174 + 64] = _195
            mem[_174 + 96] = bool(stor7[stor8[idx << 248]].field_2304)
            mem[_174 + 128] = bool(stor7[stor8[idx << 248]].field_2312)
            mem[_174 + 160] = stor7[stor8[idx << 248]].field_2320
            mem[_174 + 192] = stor7[stor8[idx << 248]].field_2328
            mem[_174 + 224] = stor7[stor8[idx << 248]].field_2488
            mem[_174 + 256] = stor7[stor8[idx << 248]].field_2560
            if uint8(idx) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint8(idx)) + 128] = _174
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
        mem[mem[64]] = 32
        _181 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _181:
            _216 = mem[t]
            mem[s] = mem[mem[t]]
            _219 = mem[_216 + 32]
            mem[s + 32] = mem[mem[_216 + 32] + 12 len 20]
            u = 0
            v = s + 64
            w = mem[_219 + 32]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            _224 = mem[_216 + 64]
            mem[s + 160] = mem[mem[_216 + 64] + 12 len 20]
            u = 0
            v = s + 192
            w = mem[_224 + 32]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[s + 288] = bool(mem[_216 + 96])
            mem[s + 320] = bool(mem[_216 + 128])
            mem[s + 352] = mem[_216 + 191 len 1]
            mem[s + 384] = mem[_216 + 204 len 20]
            mem[s + 416] = mem[_216 + 255 len 1]
            mem[s + 448] = mem[_216 + 256]
            idx = idx + 1
            s = s + 480
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
