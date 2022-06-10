contract main {




// =====================  Runtime code  =====================


#
#  - stakeEnd(uint256 arg1, uint40 arg2)
#  - xfLobbyMembers(uint256 arg1, address arg2)
#  - stakeStart(uint256 arg1, uint256 arg2)
#  - stakeGoodAccounting(address arg1, uint256 arg2, uint40 arg3)
#
const name = 'ASP', 0

const decimals = 8

const symbol = 'ASP', 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor3;
bool stor4; offset 256
uint64 stor4;
uint64 stor4; offset 144
uint128 stor4;
uint128 stor4; offset 72
uint128 stor4; offset 184
uint16 stor5;
uint64 stor5;
uint64 stor5; offset 88
uint128 stor5;
uint128 stor5; offset 16
mapping of struct dailyData;
array of struct stakeLists;
mapping of uint256 xfLobby;
mapping of struct xfLobbyEntry;

function totalSupply() {
    return totalSupply
}

function stakeLists(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < stakeLists[arg1].field_0
    return stakeLists[arg1][arg2].field_0, 
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_200,
           stakeLists[arg1][arg2].field_0
}

function xfLobbyEntry(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not xfLobbyEntry[arg2][address(arg1)][1][arg3].field_0:
        revert with 0, 'ASP: Param invalid'
    return xfLobbyEntry[arg2][address(arg1)][1][arg3].field_0, xfLobbyEntry[arg2][address(arg1)][1][arg3].field_96
}

function stakeCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeLists[address(arg1)].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function xfLobby(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return xfLobby[arg1]
}

function dailyData(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return dailyData[arg1].field_0, dailyData[arg1].field_256, dailyData[arg1].field_512
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function currentDay() {
    if block.timestamp >= 457032 * 24 * 3600:
        return (block.timestamp - (457032 * 24 * 3600) / 24 * 3600)
    else:
        return 0
}

function allocatedSupply() {
    if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
        revert with 'NH{q', 17
    return (totalSupply + Mask(72, 0, stor4.field_0))
}

function globals() {
    return Mask(72, 0, stor4.field_0), 
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           Mask(72, 0, stor4.field_0),
           uint16(stor5.field_0),
           Mask(72, 0, stor5.field_0),
           stor5.field_88 % 1099511627776
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: not enough balance!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function globalInfo() {
    if block.timestamp >= 457032 * 24 * 3600:
        return Mask(72, 0, stor4.field_0), 
               Mask(72, 0, stor4.field_0),
               stor4.field_0 % 1099511627776,
               Mask(72, 0, stor4.field_0),
               uint16(stor5.field_0),
               Mask(72, 0, stor5.field_0),
               stor5.field_0 % 1099511627776,
               block.timestamp,
               totalSupply,
               xfLobby[block.timestamp - (457032 * 24 * 3600) / 24 * 3600]
    return Mask(72, 0, stor4.field_0), 
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           Mask(72, 0, stor4.field_0),
           uint16(stor5.field_0),
           Mask(72, 0, stor5.field_0),
           stor5.field_0 % 1099511627776,
           block.timestamp,
           totalSupply,
           xfLobby[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function xfLobbyPendingDays(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = 160
    mem[96 len 64] = call.data[calldata.size len 64]
    if block.timestamp < 457032 * 24 * 3600:
        if not var45001:
            revert with 'NH{q', 17
        if not var49002:
            return call.data[calldata.size len 64]
        mem[0] = arg1
        mem[32] = sha3(var51001, 9)
        if xfLobbyEntry[var51001][address(arg1)].field_40 > xfLobbyEntry[var51001][address(arg1)].field_0:
            if Mask(248, 0, var51001) * 0.00390625 >= 2:
                revert with 'NH{q', 50
            mem[(Mask(240, 8, var51001) >> 3) + 96] = 1
        if not var51001:
            revert with 'NH{q', 17
        var51001 = var51001 - 1
        continue 
    if block.timestamp - (457032 * 24 * 3600) / 24 * 3600 > -2:
        revert with 'NH{q', 17
    if not var59001:
        revert with 'NH{q', 17
    if not var63002:
        return call.data[calldata.size len 64]
    mem[0] = arg1
    mem[32] = sha3(var65001, 9)
    if xfLobbyEntry[var65001][address(arg1)].field_40 > xfLobbyEntry[var65001][address(arg1)].field_0:
        if Mask(248, 0, var65001) * 0.00390625 >= 2:
            revert with 'NH{q', 50
        mem[(Mask(240, 8, var65001) >> 3) + 96] = 1
    if not var65001:
        revert with 'NH{q', 17
    var65001 = var65001 - 1
    continue 
}

function xfLobbyEnter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.value:
        revert with 0, 'ASP: Amount required'
    if block.timestamp >= 457032 * 24 * 3600:
        if xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40 == test266151307():
            revert with 'NH{q', 17
        xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40 = xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40 + 1 % 1099511627776
        xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)][1][xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_0].field_0 = Mask(96, 0, msg.value)
        xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)][1][xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_0].field_96 = arg1
        if xfLobby[block.timestamp - (457032 * 24 * 3600) / 24 * 3600] > -msg.value - 1:
            revert with 'NH{q', 17
        xfLobby[block.timestamp - (457032 * 24 * 3600) / 24 * 3600] += msg.value
        emit XfLobbyEnter(block.timestamp, block.timestamp - (457032 * 24 * 3600) / 24 * 3600, xfLobbyEntry[block.timestamp - (457032 * 24 * 3600) / 24 * 3600][address(msg.sender)].field_40, msg.value);
    else:
        if xfLobbyEntry[0][address(msg.sender)].field_40 == test266151307():
            revert with 'NH{q', 17
        xfLobbyEntry[0][address(msg.sender)].field_40 = xfLobbyEntry[0][address(msg.sender)].field_40 + 1 % 1099511627776
        xfLobbyEntry[0][address(msg.sender)][1][xfLobbyEntry[0][address(msg.sender)].field_0].field_0 = Mask(96, 0, msg.value)
        xfLobbyEntry[0][address(msg.sender)][1][xfLobbyEntry[0][address(msg.sender)].field_0].field_96 = arg1
        if xfLobby[0] > -msg.value - 1:
            revert with 'NH{q', 17
        xfLobby[0] += msg.value
        emit XfLobbyEnter(block.timestamp, 0, xfLobbyEntry[0][address(msg.sender)].field_40, msg.value);
}

function xfLobbyRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        revert with 0, 'ASP: invalid range'
    if block.timestamp >= 457032 * 24 * 3600:
        if arg2 > block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
            revert with 0, 'ASP: invalid range'
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2 - arg1
        if not arg2 - arg1:
            if var69001 == -1:
                revert with 'NH{q', 17
            if var79001 == -1:
                revert with 'NH{q', 17
            if var83002 >= arg2 - arg1:
                revert with 'NH{q', 50
            mem[(32 * var85001) + 128] = var85003
            if var85005 < arg2:
                if var93001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(32 * arg2 - arg1) + 128] = 32
                mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
                mem[(32 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = mem[128 len 32 * arg2 - arg1]
                return memory
                  from (32 * arg2 - arg1) + 128
                   len (96 * arg2) + (-96 * arg1) + 64
        else:
            mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            if var70001 == -1:
                revert with 'NH{q', 17
            if var80001 == -1:
                revert with 'NH{q', 17
            if var84002 >= arg2 - arg1:
                revert with 'NH{q', 50
            mem[(32 * var86001) + 128] = var86003
            if var86005 < arg2:
                if var94001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(32 * arg2 - arg1) + 128] = 32
                mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
                mem[(32 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                return memory
                  from (32 * arg2 - arg1) + 128
                   len (96 * arg2) + (-96 * arg1) + 64
    else:
        if arg2 > 0:
            revert with 0, 'ASP: invalid range'
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2 - arg1
        if not arg2 - arg1:
            if var55001 == -1:
                revert with 'NH{q', 17
            if var65001 == -1:
                revert with 'NH{q', 17
            if var69002 >= arg2 - arg1:
                revert with 'NH{q', 50
            mem[(32 * var71001) + 128] = var71003
            if var71005 < arg2:
                if var79001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(32 * arg2 - arg1) + 128] = 32
                mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
                mem[(32 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = mem[128 len 32 * arg2 - arg1]
                return memory
                  from (32 * arg2 - arg1) + 128
                   len (96 * arg2) + (-96 * arg1) + 64
        else:
            mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            if var56001 == -1:
                revert with 'NH{q', 17
            if var66001 == -1:
                revert with 'NH{q', 17
            if var70002 >= arg2 - arg1:
                revert with 'NH{q', 50
            mem[(32 * var72001) + 128] = var72003
            if var72005 < arg2:
                if var80001 == -1:
                    revert with 'NH{q', 17
                # nil
            else:
                mem[(32 * arg2 - arg1) + 128] = 32
                mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
                mem[(32 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                return memory
                  from (32 * arg2 - arg1) + 128
                   len (96 * arg2) + (-96 * arg1) + 64
}

function dailyDataRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        revert with 0, 'ASP: range invalid'
    if arg2 > uint16(stor5.field_0):
        revert with 0, 'ASP: range invalid'
    if arg2 >= arg1:
        if arg2 - arg1 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2 - arg1
        if not arg2 - arg1:
            if arg2 >= arg1:
                if arg2 - arg1 > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
                if not arg2 - arg1:
                    if arg2 >= arg1:
                        if arg2 - arg1 > test266151307():
                            revert with 'NH{q', 65
                        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
                        mem[64] = (98 * arg2) + (-98 * arg1) + 192
                        if not arg2 - arg1:
                            if var70001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var72001) + 128] = var72003
                            if var78001 != -1:
                                if var82002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var84001) + (32 * arg2 - arg1) + 160] = var84003
                                mem[0] = var84005
                                mem[32] = 6
                                if var90001 != -1:
                                    if var94002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var94002) + (64 * arg2 - arg1) + 192] = var94004
                                    s = var94002
                                    t = var94004
                                    u = var94001
                                    idx = var94006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1748 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1748:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1748) + 160
                                        _1796 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1748) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1748) + 384
                                        while idx < _1796:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1748) + (32 * _1796) + 192
                        else:
                            mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                            if var71001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var73001) + 128] = var73003
                            if var79001 != -1:
                                if var83002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var85001) + (32 * arg2 - arg1) + 160] = var85003
                                mem[0] = var85005
                                mem[32] = 6
                                if var91001 != -1:
                                    if var95002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var95002) + (64 * arg2 - arg1) + 192] = var95004
                                    s = var95002
                                    t = var95004
                                    u = var95001
                                    idx = var95006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1749 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1749:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1749) + 160
                                        _1797 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1749) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1749) + 384
                                        while idx < _1797:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1749) + (32 * _1797) + 192
                else:
                    mem[(32 * arg2 - arg1) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                    if arg2 >= arg1:
                        if arg2 - arg1 > test266151307():
                            revert with 'NH{q', 65
                        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
                        mem[64] = (98 * arg2) + (-98 * arg1) + 192
                        if not arg2 - arg1:
                            if var71001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var73001) + 128] = var73003
                            if var79001 != -1:
                                if var83002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var85001) + (32 * arg2 - arg1) + 160] = var85003
                                mem[0] = var85005
                                mem[32] = 6
                                if var91001 != -1:
                                    if var95002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var95002) + (64 * arg2 - arg1) + 192] = var95004
                                    s = var95002
                                    t = var95004
                                    u = var95001
                                    idx = var95006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1750 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1750:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1750) + 160
                                        _1798 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1750) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1750) + 384
                                        while idx < _1798:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1750) + (32 * _1798) + 192
                        else:
                            mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                            if var72001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var74001) + 128] = var74003
                            if var80001 != -1:
                                if var84002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var86001) + (32 * arg2 - arg1) + 160] = var86003
                                mem[0] = var86005
                                mem[32] = 6
                                if var92001 != -1:
                                    if var96002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var96002) + (64 * arg2 - arg1) + 192] = var96004
                                    s = var96002
                                    t = var96004
                                    u = var96001
                                    idx = var96006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1751 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1751:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1751) + 160
                                        _1799 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1751) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1751) + 384
                                        while idx < _1799:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1751) + (32 * _1799) + 192
        else:
            mem[128 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
            if arg2 >= arg1:
                if arg2 - arg1 > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * arg2 - arg1) + 128] = arg2 - arg1
                if not arg2 - arg1:
                    if arg2 >= arg1:
                        if arg2 - arg1 > test266151307():
                            revert with 'NH{q', 65
                        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
                        mem[64] = (98 * arg2) + (-98 * arg1) + 192
                        if not arg2 - arg1:
                            if var71001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var73001) + 128] = var73003
                            if var79001 != -1:
                                if var83002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var85001) + (32 * arg2 - arg1) + 160] = var85003
                                mem[0] = var85005
                                mem[32] = 6
                                if var91001 != -1:
                                    if var95002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var95002) + (64 * arg2 - arg1) + 192] = var95004
                                    s = var95002
                                    t = var95004
                                    u = var95001
                                    idx = var95006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1752 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1752:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1752) + 160
                                        _1800 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1752) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1752) + 384
                                        while idx < _1800:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1752) + (32 * _1800) + 192
                        else:
                            mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                            if var72001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var74001) + 128] = var74003
                            if var80001 != -1:
                                if var84002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var86001) + (32 * arg2 - arg1) + 160] = var86003
                                mem[0] = var86005
                                mem[32] = 6
                                if var92001 != -1:
                                    if var96002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var96002) + (64 * arg2 - arg1) + 192] = var96004
                                    s = var96002
                                    t = var96004
                                    u = var96001
                                    idx = var96006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1753 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1753:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1753) + 160
                                        _1801 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1753) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1753) + 384
                                        while idx < _1801:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1753) + (32 * _1801) + 192
                else:
                    mem[(32 * arg2 - arg1) + 160 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                    if arg2 >= arg1:
                        if arg2 - arg1 > test266151307():
                            revert with 'NH{q', 65
                        mem[(64 * arg2 - arg1) + 160] = arg2 - arg1
                        mem[64] = (98 * arg2) + (-98 * arg1) + 192
                        if not arg2 - arg1:
                            if var72001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var74001) + 128] = var74003
                            if var80001 != -1:
                                if var84002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var86001) + (32 * arg2 - arg1) + 160] = var86003
                                mem[0] = var86005
                                mem[32] = 6
                                if var92001 != -1:
                                    if var96002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var96002) + (64 * arg2 - arg1) + 192] = var96004
                                    s = var96002
                                    t = var96004
                                    u = var96001
                                    idx = var96006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1754 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1754:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1754) + 160
                                        _1802 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1754) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1754) + 384
                                        while idx < _1802:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1754) + (32 * _1802) + 192
                        else:
                            mem[(64 * arg2 - arg1) + 192 len 32 * arg2 - arg1] = call.data[calldata.size len 32 * arg2 - arg1]
                            if var73001 >= arg2 - arg1:
                                revert with 'NH{q', 50
                            mem[(32 * var75001) + 128] = var75003
                            if var81001 != -1:
                                if var85002 >= arg2 - arg1:
                                    revert with 'NH{q', 50
                                mem[(32 * var87001) + (32 * arg2 - arg1) + 160] = var87003
                                mem[0] = var87005
                                mem[32] = 6
                                if var93001 != -1:
                                    if var97002 >= arg2 - arg1:
                                        revert with 'NH{q', 50
                                    mem[(32 * var97002) + (64 * arg2 - arg1) + 192] = var97004
                                    s = var97002
                                    t = var97004
                                    u = var97001
                                    idx = var97006
                                    while idx != -1:
                                        if idx + 1 < arg2:
                                            if u >= arg2 - arg1:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + 128] = dailyData[idx + 1].field_512
                                            if u == -1:
                                                revert with 'NH{q', 17
                                            if u >= mem[(32 * arg2 - arg1) + 128]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u) + (32 * arg2 - arg1) + 160] = dailyData[idx + 1].field_0
                                            mem[0] = idx + 1
                                            mem[32] = 6
                                            if u + 1 == -1:
                                                revert with 'NH{q', 17
                                            if u + 1 >= mem[(64 * arg2 - arg1) + 160]:
                                                revert with 'NH{q', 50
                                            mem[(32 * u + 3) + (64 * arg2 - arg1) + 192] = dailyData[idx + 1].field_256
                                            s = u + 1
                                            t = dailyData[idx + 1].field_256
                                            u = u + 2
                                            idx = idx + 1
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 192] = 96
                                        mem[(98 * arg2) + (-98 * arg1) + 288] = arg2 - arg1
                                        idx = 0
                                        u = 128
                                        v = (98 * arg2) + (-98 * arg1) + 320
                                        while idx < arg2 - arg1:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 224] = (32 * arg2 - arg1) + 128
                                        _1755 = mem[(32 * arg2 - arg1) + 128]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 320] = mem[(32 * arg2 - arg1) + 128]
                                        idx = 0
                                        u = (32 * arg2 - arg1) + 160
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + 352
                                        while idx < _1755:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        mem[(98 * arg2) + (-98 * arg1) + 256] = (32 * arg2 - arg1) + (32 * _1755) + 160
                                        _1803 = mem[(64 * arg2 - arg1) + 160]
                                        mem[(98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1755) + 352] = mem[(64 * arg2 - arg1) + 160]
                                        idx = 0
                                        u = (64 * arg2 - arg1) + 192
                                        v = (98 * arg2) + (-98 * arg1) + (32 * arg2 - arg1) + (32 * _1755) + 384
                                        while idx < _1803:
                                            mem[v] = mem[u]
                                            mem[(32 * s) + (64 * arg2 - arg1) + 192] = t
                                            idx = idx + 1
                                            u = u + 32
                                            v = v + 32
                                            continue 
                                        return memory
                                          from (98 * arg2) + (-98 * arg1) + 192
                                           len (32 * arg2 - arg1) + (32 * _1755) + (32 * _1803) + 192
    revert with 'NH{q', 17
}

function dailyDataUpdate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < 457032 * 24 * 3600:
        revert with 0, 'ASP: Too early'
    else:
        if block.timestamp - (457032 * 24 * 3600) / 24 * 3600 <= 1:
            revert with 0, 'ASP: Too early'
        else:
            if not arg1:
                if uint16(stor5.field_0) < block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                    if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                        revert with 'NH{q', 17
                    else:
                        if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                            revert with 'NH{q', 17
                        else:
                            if not Mask(72, 0, stor4.field_184):
                                dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                if not Mask(72, 0, stor4.field_72):
                                    if var115001 == -1:
                                        revert with 'NH{q', 17
                                    else:
                                        if var119001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                            emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var119001, msg.sender);
                                            if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                if var119001 != uint16(stor5.field_0):
                                                    uint16(stor5.field_0) = uint16(var119001)
                                                else:
                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        uint16(stor5.field_0) = uint16(var119001)
                                                    else:
                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                        else:
                                                            uint16(stor5.field_0) = uint16(var119001)
                                            else:
                                                if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                    if var119001 != uint16(stor5.field_0):
                                                        uint16(stor5.field_0) = uint16(var119001)
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                            uint16(stor5.field_0) = uint16(var119001)
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                                uint16(stor5.field_0) = uint16(var119001)
                                                else:
                                                    if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                        if var119001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var119001)
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var119001)
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var119001)
                                                    else:
                                                        if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                            if var119001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var119001)
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var119001)
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var119001)
                                                        else:
                                                            if var119001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var119001)
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var119001)
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var119001)
                                        else:
                                            if var135003 and 50000 > -1 / var135003:
                                                revert with 'NH{q', 17
                                            else:
                                                # nil
                                else:
                                    if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        if var123001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var127001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var127001, msg.sender);
                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                    Mask(72, 0, stor4.field_72) = 0
                                                    stor4.field_256 % 1 = 0
                                                    if var127001 != uint16(stor5.field_0):
                                                        uint16(stor5.field_0) = uint16(var127001)
                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                            uint16(stor5.field_0) = uint16(var127001)
                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if Mask(72, 0, stor4.field_72) != 0:
                                                        Mask(72, 0, stor4.field_72) = 0
                                                        stor4.field_256 % 1 = 0
                                                        if var127001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var127001)
                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                            Mask(72, 0, stor4.field_72) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var127001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                if var127001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var127001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                Mask(72, 0, stor4.field_72) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var127001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var127001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                            else:
                                                if var143003 and 50000 > -1 / var143003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                            else:
                                if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                    revert with 'NH{q', 17
                                else:
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var123001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var127001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var127001, msg.sender);
                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                    Mask(72, 0, stor4.field_184) = 0
                                                    stor4.field_256 % 1 = 0
                                                    if var127001 != uint16(stor5.field_0):
                                                        uint16(stor5.field_0) = uint16(var127001)
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                            uint16(stor5.field_0) = uint16(var127001)
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                else:
                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                        Mask(72, 0, stor4.field_184) = 0
                                                        stor4.field_256 % 1 = 0
                                                        if var127001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var127001)
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                    else:
                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                            Mask(72, 0, stor4.field_184) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var127001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var127001)
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                        else:
                                                            if 0 == Mask(72, 0, stor4.field_184):
                                                                if var127001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var127001)
                                                            else:
                                                                Mask(72, 0, stor4.field_184) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var127001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var127001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var127001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var127001)
                                            else:
                                                if var143003 and 50000 > -1 / var143003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var131001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var135001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var135001, msg.sender);
                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                        Mask(72, 0, stor4.field_72) = 0
                                                        stor4.field_256 % 1 = 0
                                                        Mask(72, 0, stor4.field_184) = 0
                                                        stor4.field_256 % 1 = 0
                                                        if var135001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var135001)
                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var135001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var135001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                            Mask(72, 0, stor4.field_72) = 0
                                                            stor4.field_256 % 1 = 0
                                                            Mask(72, 0, stor4.field_184) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var135001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var135001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var135001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var135001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                Mask(72, 0, stor4.field_72) = 0
                                                                stor4.field_256 % 1 = 0
                                                                Mask(72, 0, stor4.field_184) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var135001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var135001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var135001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var135001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                    if var135001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var135001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var135001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var135001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var135001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var135001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var135001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var135001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var151003 and 50000 > -1 / var151003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                else:
                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                        else:
                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                            else:
                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                else:
                    else:
                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                            else:
                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                else:
                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                    else:
                        else:
                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                else:
                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                    else:
                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                        else:
                            else:
                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                    else:
                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                        else:
                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                            else:
                                else:
                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                    else:
                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                        else:
                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                            else:
            else:
                if arg1 > block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'ASP: beforeDay cannot be in the future'
                else:
                    if uint16(stor5.field_0) < arg1:
                        if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                            revert with 'NH{q', 17
                        else:
                            if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                                revert with 'NH{q', 17
                            else:
                                if not Mask(72, 0, stor4.field_184):
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var116001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var120001 >= arg1:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var120001, msg.sender);
                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                    if var120001 != uint16(stor5.field_0):
                                                        uint16(stor5.field_0) = uint16(var120001)
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                            uint16(stor5.field_0) = uint16(var120001)
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                                uint16(stor5.field_0) = uint16(var120001)
                                                else:
                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                        if var120001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var120001)
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var120001)
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var120001)
                                                    else:
                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                            if var120001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var120001)
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var120001)
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var120001)
                                                        else:
                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                if var120001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var120001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var120001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var120001)
                                                            else:
                                                                if var120001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var120001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var120001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var120001)
                                            else:
                                                if var136003 and 50000 > -1 / var136003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var124001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var128001 >= arg1:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var128001, msg.sender);
                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                        Mask(72, 0, stor4.field_72) = 0
                                                        stor4.field_256 % 1 = 0
                                                        if var128001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var128001)
                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                            Mask(72, 0, stor4.field_72) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var128001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                Mask(72, 0, stor4.field_72) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var128001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                    if var128001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var128001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var144003 and 50000 > -1 / var144003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                else:
                                    if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                        dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                        dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                        if not Mask(72, 0, stor4.field_72):
                                            if var124001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var128001 >= arg1:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var128001, msg.sender);
                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                        Mask(72, 0, stor4.field_184) = 0
                                                        stor4.field_256 % 1 = 0
                                                        if var128001 != uint16(stor5.field_0):
                                                            uint16(stor5.field_0) = uint16(var128001)
                                                        else:
                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                uint16(stor5.field_0) = uint16(var128001)
                                                            else:
                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                else:
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                    else:
                                                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                            Mask(72, 0, stor4.field_184) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var128001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var128001)
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                        else:
                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                Mask(72, 0, stor4.field_184) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var128001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                            else:
                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                    if var128001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                else:
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var128001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                else:
                                                    if var144003 and 50000 > -1 / var144003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                        else:
                                            if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var132001 == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if var136001 >= arg1:
                                                        emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var136001, msg.sender);
                                                        if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                            Mask(72, 0, stor4.field_72) = 0
                                                            stor4.field_256 % 1 = 0
                                                            Mask(72, 0, stor4.field_184) = 0
                                                            stor4.field_256 % 1 = 0
                                                            if var136001 != uint16(stor5.field_0):
                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                    else:
                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                        else:
                                                            if Mask(72, 0, stor4.field_72) != 0:
                                                                Mask(72, 0, stor4.field_72) = 0
                                                                stor4.field_256 % 1 = 0
                                                                Mask(72, 0, stor4.field_184) = 0
                                                                stor4.field_256 % 1 = 0
                                                                if var136001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                            else:
                                                                if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var136001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if 0 == Mask(72, 0, stor4.field_184):
                                                                        if var136001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var136001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if var152003 and 50000 > -1 / var152003:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            # nil
                    else:
                        if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                            else:
                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                else:
                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                    else:
                        else:
                            if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                else:
                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                    else:
                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                        else:
                            else:
                                if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                    else:
                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                        else:
                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                            else:
                                else:
                                    if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
                                    else:
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
}

function xfLobbyExit(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp >= 457032 * 24 * 3600:
        if arg1 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
            revert with 0, 'ASP: Round is not complete'
        if not arg2:
            if xfLobbyEntry[arg1][address(msg.sender)].field_0 >= xfLobbyEntry[arg1][address(msg.sender)].field_40:
                revert with 0, 'ASP: count invalid'
            if arg1 <= 0:
                xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0 = 0
                xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0
                if var101001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                    revert with 'NH{q', 17
                if not xfLobby[arg1]:
                    revert with 'NH{q', 18
                if not address(var119003):
                    mem[96] = block.timestamp
                    mem[128] = arg1
                    emit XfLobbyExit(block.timestamp, arg1, var119009, var119001, address(var119003));
                    if var119005 > -var119001 - 1:
                        revert with 'NH{q', 17
                    if var119009 == -1:
                        revert with 'NH{q', 17
                    if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                        mem[0] = var119009 + 1
                        mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                        xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                        xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                        if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                            revert with 'NH{q', 17
                        if not xfLobby[arg1]:
                            revert with 'NH{q', 18
                        var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                        var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                        var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                        var119005 = var119005 + var119001
                        var119009 = var119009 + 1
                        continue 
                    xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                    if var119005 + var119001:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -var119005 + -var119001 - 1:
                            revert with 'NH{q', 17
                        totalSupply = totalSupply + var119005 + var119001
                        if balanceOf[address(msg.sender)] > -var119005 + -var119001 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001
                        emit Transfer((var119005 + var119001), 0, msg.sender);
                else:
                    if address(var119003) == msg.sender:
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var119009, var119001, address(var119003));
                        if var119005 > -var119001 - 1:
                            revert with 'NH{q', 17
                        if var119009 == -1:
                            revert with 'NH{q', 17
                        if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var119009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                            var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                            var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            var119005 = var119005 + var119001
                            var119009 = var119009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                        if var119005 + var119001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var119005 + -var119001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var119005 + var119001
                            if balanceOf[address(msg.sender)] > -var119005 + -var119001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001
                            emit Transfer((var119005 + var119001), 0, msg.sender);
                    else:
                        if var119001 > -(var119001 / 20) - 1:
                            revert with 'NH{q', 17
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var119009, var119001 + (var119001 / 20), address(var119003));
                        if not address(var119003):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -(var119001 + (var119001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        totalSupply += var119001 + (var119001 / 20) / 10
                        if balanceOf[address(var119003)] > -(var119001 + (var119001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(var119003)] += var119001 + (var119001 / 20) / 10
                        mem[96] = var119001 + (var119001 / 20) / 10
                        emit Transfer((var119001 + (var119001 / 20) / 10), 0, address(var119003));
                        if var119005 > -var119001 + -(var119001 / 20) - 1:
                            revert with 'NH{q', 17
                        if var119009 == -1:
                            revert with 'NH{q', 17
                        if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var119009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                            var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                            var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            var119005 = var119005 + var119001 + (var119001 / 20)
                            var119009 = var119009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                        if var119005 + var119001 + (var119001 / 20):
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var119005 + -var119001 + -(var119001 / 20) - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var119005 + var119001 + (var119001 / 20)
                            if balanceOf[address(msg.sender)] > -var119005 + -var119001 + -(var119001 / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001 + (var119001 / 20)
                            emit Transfer((var119005 + var119001 + (var119001 / 20)), 0, msg.sender);
            else:
                if arg1 > 365:
                    xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0
                    if var102001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var120003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var120009, var120001, address(var120003));
                        if var120005 > -var120001 - 1:
                            revert with 'NH{q', 17
                        if var120009 == -1:
                            revert with 'NH{q', 17
                        if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var120009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                            var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                            var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                            var120005 = var120005 + var120001
                            var120009 = var120009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                        if var120005 + var120001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var120005 + -var120001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var120005 + var120001
                            if balanceOf[address(msg.sender)] > -var120005 + -var120001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001
                            emit Transfer((var120005 + var120001), 0, msg.sender);
                    else:
                        if address(var120003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var120009, var120001, address(var120003));
                            if var120005 > -var120001 - 1:
                                revert with 'NH{q', 17
                            if var120009 == -1:
                                revert with 'NH{q', 17
                            if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var120009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                                var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                                var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                var120005 = var120005 + var120001
                                var120009 = var120009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                            if var120005 + var120001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var120005 + -var120001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var120005 + var120001
                                if balanceOf[address(msg.sender)] > -var120005 + -var120001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001
                                emit Transfer((var120005 + var120001), 0, msg.sender);
                        else:
                            if var120001 > -(var120001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var120009, var120001 + (var120001 / 20), address(var120003));
                            if not address(var120003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var120001 + (var120001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var120001 + (var120001 / 20) / 10
                            if balanceOf[address(var120003)] > -(var120001 + (var120001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var120003)] += var120001 + (var120001 / 20) / 10
                            mem[96] = var120001 + (var120001 / 20) / 10
                            emit Transfer((var120001 + (var120001 / 20) / 10), 0, address(var120003));
                            if var120005 > -var120001 + -(var120001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var120009 == -1:
                                revert with 'NH{q', 17
                            if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var120009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                                var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                                var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                var120005 = var120005 + var120001 + (var120001 / 20)
                                var120009 = var120009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                            if var120005 + var120001 + (var120001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var120005 + -var120001 + -(var120001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var120005 + var120001 + (var120001 / 20)
                                if balanceOf[address(msg.sender)] > -var120005 + -var120001 + -(var120001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001 + (var120001 / 20)
                                emit Transfer((var120005 + var120001 + (var120001 / 20)), 0, msg.sender);
                else:
                    if arg1 < 1:
                        revert with 'NH{q', 17
                    if arg1 - 1 and 1342465753424 > -1 / arg1 - 1:
                        revert with 'NH{q', 17
                    if 5 * 10^14 < (1342465753424 * arg1) - 1342465753424:
                        revert with 'NH{q', 17
                    xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0
                    if (-1342465753424 * arg1) + 501342465753424 and var123001 > -1 / (-1342465753424 * arg1) + 501342465753424:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var141003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var141009, var141001, address(var141003));
                        if var141005 > -var141001 - 1:
                            revert with 'NH{q', 17
                        if var141009 == -1:
                            revert with 'NH{q', 17
                        if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var141009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                            if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                            var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                            var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                            var141005 = var141005 + var141001
                            var141009 = var141009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                        if var141005 + var141001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var141005 + -var141001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var141005 + var141001
                            if balanceOf[address(msg.sender)] > -var141005 + -var141001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001
                            emit Transfer((var141005 + var141001), 0, msg.sender);
                    else:
                        if address(var141003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var141009, var141001, address(var141003));
                            if var141005 > -var141001 - 1:
                                revert with 'NH{q', 17
                            if var141009 == -1:
                                revert with 'NH{q', 17
                            if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var141009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                                var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                                var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                var141005 = var141005 + var141001
                                var141009 = var141009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                            if var141005 + var141001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var141005 + -var141001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var141005 + var141001
                                if balanceOf[address(msg.sender)] > -var141005 + -var141001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001
                                emit Transfer((var141005 + var141001), 0, msg.sender);
                        else:
                            if var141001 > -(var141001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var141009, var141001 + (var141001 / 20), address(var141003));
                            if not address(var141003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var141001 + (var141001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var141001 + (var141001 / 20) / 10
                            if balanceOf[address(var141003)] > -(var141001 + (var141001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var141003)] += var141001 + (var141001 / 20) / 10
                            mem[96] = var141001 + (var141001 / 20) / 10
                            emit Transfer((var141001 + (var141001 / 20) / 10), 0, address(var141003));
                            if var141005 > -var141001 + -(var141001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var141009 == -1:
                                revert with 'NH{q', 17
                            if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var141009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                                var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                                var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                var141005 = var141005 + var141001 + (var141001 / 20)
                                var141009 = var141009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                            if var141005 + var141001 + (var141001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var141005 + -var141001 + -(var141001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var141005 + var141001 + (var141001 / 20)
                                if balanceOf[address(msg.sender)] > -var141005 + -var141001 + -(var141001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001 + (var141001 / 20)
                                emit Transfer((var141005 + var141001 + (var141001 / 20)), 0, msg.sender);
        else:
            if xfLobbyEntry[arg1][address(msg.sender)].field_40 < xfLobbyEntry[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if arg2 > xfLobbyEntry[arg1][address(msg.sender)].field_40 - xfLobbyEntry[arg1][address(msg.sender)].field_0:
                revert with 0, 'ASP: count invalid'
            if xfLobbyEntry[arg1][address(msg.sender)].field_0 > -arg2 - 1:
                revert with 'NH{q', 17
            if arg1 <= 0:
                xfLobbyEntry[arg1][address(msg.sender)][1][var105005].field_0 = 0
                xfLobbyEntry[arg1][address(msg.sender)][1][var105005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var105005].field_0
                if var115001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                    revert with 'NH{q', 17
                if not xfLobby[arg1]:
                    revert with 'NH{q', 18
                if not address(var133003):
                    mem[96] = block.timestamp
                    mem[128] = arg1
                    emit XfLobbyExit(block.timestamp, arg1, var133009, var133001, address(var133003));
                    if var133005 > -var133001 - 1:
                        revert with 'NH{q', 17
                    if var133009 == -1:
                        revert with 'NH{q', 17
                    if var133009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                        mem[0] = var133009 + 1
                        mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                        xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = 0
                        xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                        if xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                            revert with 'NH{q', 17
                        if not xfLobby[arg1]:
                            revert with 'NH{q', 18
                        var133001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 / xfLobby[arg1]
                        var133003 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_96
                        var133004 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                        var133005 = var133005 + var133001
                        var133009 = var133009 + 1
                        continue 
                    xfLobbyEntry[arg1][address(msg.sender)].field_0 = var133009 + 1 % 1099511627776
                    if var133005 + var133001:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -var133005 + -var133001 - 1:
                            revert with 'NH{q', 17
                        totalSupply = totalSupply + var133005 + var133001
                        if balanceOf[address(msg.sender)] > -var133005 + -var133001 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var133005 + var133001
                        emit Transfer((var133005 + var133001), 0, msg.sender);
                else:
                    if address(var133003) == msg.sender:
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var133009, var133001, address(var133003));
                        if var133005 > -var133001 - 1:
                            revert with 'NH{q', 17
                        if var133009 == -1:
                            revert with 'NH{q', 17
                        if var133009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var133009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var133001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 / xfLobby[arg1]
                            var133003 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_96
                            var133004 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                            var133005 = var133005 + var133001
                            var133009 = var133009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var133009 + 1 % 1099511627776
                        if var133005 + var133001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var133005 + -var133001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var133005 + var133001
                            if balanceOf[address(msg.sender)] > -var133005 + -var133001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var133005 + var133001
                            emit Transfer((var133005 + var133001), 0, msg.sender);
                    else:
                        if var133001 > -(var133001 / 20) - 1:
                            revert with 'NH{q', 17
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var133009, var133001 + (var133001 / 20), address(var133003));
                        if not address(var133003):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -(var133001 + (var133001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        totalSupply += var133001 + (var133001 / 20) / 10
                        if balanceOf[address(var133003)] > -(var133001 + (var133001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(var133003)] += var133001 + (var133001 / 20) / 10
                        mem[96] = var133001 + (var133001 / 20) / 10
                        emit Transfer((var133001 + (var133001 / 20) / 10), 0, address(var133003));
                        if var133005 > -var133001 + -(var133001 / 20) - 1:
                            revert with 'NH{q', 17
                        if var133009 == -1:
                            revert with 'NH{q', 17
                        if var133009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var133009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var133001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0 / xfLobby[arg1]
                            var133003 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_96
                            var133004 = xfLobbyEntry[arg1][address(msg.sender)][1][var133009 + 1].field_0
                            var133005 = var133005 + var133001 + (var133001 / 20)
                            var133009 = var133009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var133009 + 1 % 1099511627776
                        if var133005 + var133001 + (var133001 / 20):
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var133005 + -var133001 + -(var133001 / 20) - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var133005 + var133001 + (var133001 / 20)
                            if balanceOf[address(msg.sender)] > -var133005 + -var133001 + -(var133001 / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var133005 + var133001 + (var133001 / 20)
                            emit Transfer((var133005 + var133001 + (var133001 / 20)), 0, msg.sender);
            else:
                if arg1 > 365:
                    xfLobbyEntry[arg1][address(msg.sender)][1][var106005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var106005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var106005].field_0
                    if var116001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var134003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var134009, var134001, address(var134003));
                        if var134005 > -var134001 - 1:
                            revert with 'NH{q', 17
                        if var134009 == -1:
                            revert with 'NH{q', 17
                        if var134009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var134009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var134001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 / xfLobby[arg1]
                            var134003 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_96
                            var134004 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                            var134005 = var134005 + var134001
                            var134009 = var134009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var134009 + 1 % 1099511627776
                        if var134005 + var134001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var134005 + -var134001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var134005 + var134001
                            if balanceOf[address(msg.sender)] > -var134005 + -var134001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var134005 + var134001
                            emit Transfer((var134005 + var134001), 0, msg.sender);
                    else:
                        if address(var134003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var134009, var134001, address(var134003));
                            if var134005 > -var134001 - 1:
                                revert with 'NH{q', 17
                            if var134009 == -1:
                                revert with 'NH{q', 17
                            if var134009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var134009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var134001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 / xfLobby[arg1]
                                var134003 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_96
                                var134004 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                                var134005 = var134005 + var134001
                                var134009 = var134009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var134009 + 1 % 1099511627776
                            if var134005 + var134001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var134005 + -var134001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var134005 + var134001
                                if balanceOf[address(msg.sender)] > -var134005 + -var134001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var134005 + var134001
                                emit Transfer((var134005 + var134001), 0, msg.sender);
                        else:
                            if var134001 > -(var134001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var134009, var134001 + (var134001 / 20), address(var134003));
                            if not address(var134003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var134001 + (var134001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var134001 + (var134001 / 20) / 10
                            if balanceOf[address(var134003)] > -(var134001 + (var134001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var134003)] += var134001 + (var134001 / 20) / 10
                            mem[96] = var134001 + (var134001 / 20) / 10
                            emit Transfer((var134001 + (var134001 / 20) / 10), 0, address(var134003));
                            if var134005 > -var134001 + -(var134001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var134009 == -1:
                                revert with 'NH{q', 17
                            if var134009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var134009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var134001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0 / xfLobby[arg1]
                                var134003 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_96
                                var134004 = xfLobbyEntry[arg1][address(msg.sender)][1][var134009 + 1].field_0
                                var134005 = var134005 + var134001 + (var134001 / 20)
                                var134009 = var134009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var134009 + 1 % 1099511627776
                            if var134005 + var134001 + (var134001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var134005 + -var134001 + -(var134001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var134005 + var134001 + (var134001 / 20)
                                if balanceOf[address(msg.sender)] > -var134005 + -var134001 + -(var134001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var134005 + var134001 + (var134001 / 20)
                                emit Transfer((var134005 + var134001 + (var134001 / 20)), 0, msg.sender);
                else:
                    if arg1 < 1:
                        revert with 'NH{q', 17
                    if arg1 - 1 and 1342465753424 > -1 / arg1 - 1:
                        revert with 'NH{q', 17
                    if 5 * 10^14 < (1342465753424 * arg1) - 1342465753424:
                        revert with 'NH{q', 17
                    xfLobbyEntry[arg1][address(msg.sender)][1][var127005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var127005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var127005].field_0
                    if (-1342465753424 * arg1) + 501342465753424 and var137001 > -1 / (-1342465753424 * arg1) + 501342465753424:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var155003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var155009, var155001, address(var155003));
                        if var155005 > -var155001 - 1:
                            revert with 'NH{q', 17
                        if var155009 == -1:
                            revert with 'NH{q', 17
                        if var155009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var155009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                            if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var155001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) / xfLobby[arg1]
                            var155003 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_96
                            var155004 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                            var155005 = var155005 + var155001
                            var155009 = var155009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var155009 + 1 % 1099511627776
                        if var155005 + var155001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var155005 + -var155001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var155005 + var155001
                            if balanceOf[address(msg.sender)] > -var155005 + -var155001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var155005 + var155001
                            emit Transfer((var155005 + var155001), 0, msg.sender);
                    else:
                        if address(var155003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var155009, var155001, address(var155003));
                            if var155005 > -var155001 - 1:
                                revert with 'NH{q', 17
                            if var155009 == -1:
                                revert with 'NH{q', 17
                            if var155009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var155009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var155001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) / xfLobby[arg1]
                                var155003 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_96
                                var155004 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                                var155005 = var155005 + var155001
                                var155009 = var155009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var155009 + 1 % 1099511627776
                            if var155005 + var155001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var155005 + -var155001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var155005 + var155001
                                if balanceOf[address(msg.sender)] > -var155005 + -var155001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var155005 + var155001
                                emit Transfer((var155005 + var155001), 0, msg.sender);
                        else:
                            if var155001 > -(var155001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var155009, var155001 + (var155001 / 20), address(var155003));
                            if not address(var155003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var155001 + (var155001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var155001 + (var155001 / 20) / 10
                            if balanceOf[address(var155003)] > -(var155001 + (var155001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var155003)] += var155001 + (var155001 / 20) / 10
                            mem[96] = var155001 + (var155001 / 20) / 10
                            emit Transfer((var155001 + (var155001 / 20) / 10), 0, address(var155003));
                            if var155005 > -var155001 + -(var155001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var155009 == -1:
                                revert with 'NH{q', 17
                            if var155009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var155009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var155001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0) / xfLobby[arg1]
                                var155003 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_96
                                var155004 = xfLobbyEntry[arg1][address(msg.sender)][1][var155009 + 1].field_0
                                var155005 = var155005 + var155001 + (var155001 / 20)
                                var155009 = var155009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var155009 + 1 % 1099511627776
                            if var155005 + var155001 + (var155001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var155005 + -var155001 + -(var155001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var155005 + var155001 + (var155001 / 20)
                                if balanceOf[address(msg.sender)] > -var155005 + -var155001 + -(var155001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var155005 + var155001 + (var155001 / 20)
                                emit Transfer((var155005 + var155001 + (var155001 / 20)), 0, msg.sender);
    else:
        if arg1 >= 0:
            revert with 0, 'ASP: Round is not complete'
        if not arg2:
            if xfLobbyEntry[arg1][address(msg.sender)].field_0 >= xfLobbyEntry[arg1][address(msg.sender)].field_40:
                revert with 0, 'ASP: count invalid'
            if arg1 <= 0:
                xfLobbyEntry[arg1][address(msg.sender)][1][var77005].field_0 = 0
                xfLobbyEntry[arg1][address(msg.sender)][1][var77005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var77005].field_0
                if var87001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                    revert with 'NH{q', 17
                if not xfLobby[arg1]:
                    revert with 'NH{q', 18
                if not address(var105003):
                    mem[96] = block.timestamp
                    mem[128] = arg1
                    emit XfLobbyExit(block.timestamp, arg1, var105009, var105001, address(var105003));
                    if var105005 > -var105001 - 1:
                        revert with 'NH{q', 17
                    if var105009 == -1:
                        revert with 'NH{q', 17
                    if var105009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                        mem[0] = var105009 + 1
                        mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                        xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = 0
                        xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                        if xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                            revert with 'NH{q', 17
                        if not xfLobby[arg1]:
                            revert with 'NH{q', 18
                        var105001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 / xfLobby[arg1]
                        var105003 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_96
                        var105004 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                        var105005 = var105005 + var105001
                        var105009 = var105009 + 1
                        continue 
                    xfLobbyEntry[arg1][address(msg.sender)].field_0 = var105009 + 1 % 1099511627776
                    if var105005 + var105001:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -var105005 + -var105001 - 1:
                            revert with 'NH{q', 17
                        totalSupply = totalSupply + var105005 + var105001
                        if balanceOf[address(msg.sender)] > -var105005 + -var105001 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var105005 + var105001
                        emit Transfer((var105005 + var105001), 0, msg.sender);
                else:
                    if address(var105003) == msg.sender:
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var105009, var105001, address(var105003));
                        if var105005 > -var105001 - 1:
                            revert with 'NH{q', 17
                        if var105009 == -1:
                            revert with 'NH{q', 17
                        if var105009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var105009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var105001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 / xfLobby[arg1]
                            var105003 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_96
                            var105004 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                            var105005 = var105005 + var105001
                            var105009 = var105009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var105009 + 1 % 1099511627776
                        if var105005 + var105001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var105005 + -var105001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var105005 + var105001
                            if balanceOf[address(msg.sender)] > -var105005 + -var105001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var105005 + var105001
                            emit Transfer((var105005 + var105001), 0, msg.sender);
                    else:
                        if var105001 > -(var105001 / 20) - 1:
                            revert with 'NH{q', 17
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var105009, var105001 + (var105001 / 20), address(var105003));
                        if not address(var105003):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -(var105001 + (var105001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        totalSupply += var105001 + (var105001 / 20) / 10
                        if balanceOf[address(var105003)] > -(var105001 + (var105001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(var105003)] += var105001 + (var105001 / 20) / 10
                        mem[96] = var105001 + (var105001 / 20) / 10
                        emit Transfer((var105001 + (var105001 / 20) / 10), 0, address(var105003));
                        if var105005 > -var105001 + -(var105001 / 20) - 1:
                            revert with 'NH{q', 17
                        if var105009 == -1:
                            revert with 'NH{q', 17
                        if var105009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var105009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var105001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0 / xfLobby[arg1]
                            var105003 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_96
                            var105004 = xfLobbyEntry[arg1][address(msg.sender)][1][var105009 + 1].field_0
                            var105005 = var105005 + var105001 + (var105001 / 20)
                            var105009 = var105009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var105009 + 1 % 1099511627776
                        if var105005 + var105001 + (var105001 / 20):
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var105005 + -var105001 + -(var105001 / 20) - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var105005 + var105001 + (var105001 / 20)
                            if balanceOf[address(msg.sender)] > -var105005 + -var105001 + -(var105001 / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var105005 + var105001 + (var105001 / 20)
                            emit Transfer((var105005 + var105001 + (var105001 / 20)), 0, msg.sender);
            else:
                if arg1 > 365:
                    xfLobbyEntry[arg1][address(msg.sender)][1][var78005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var78005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var78005].field_0
                    if var88001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var106003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var106009, var106001, address(var106003));
                        if var106005 > -var106001 - 1:
                            revert with 'NH{q', 17
                        if var106009 == -1:
                            revert with 'NH{q', 17
                        if var106009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var106009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var106001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 / xfLobby[arg1]
                            var106003 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_96
                            var106004 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                            var106005 = var106005 + var106001
                            var106009 = var106009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var106009 + 1 % 1099511627776
                        if var106005 + var106001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var106005 + -var106001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var106005 + var106001
                            if balanceOf[address(msg.sender)] > -var106005 + -var106001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var106005 + var106001
                            emit Transfer((var106005 + var106001), 0, msg.sender);
                    else:
                        if address(var106003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var106009, var106001, address(var106003));
                            if var106005 > -var106001 - 1:
                                revert with 'NH{q', 17
                            if var106009 == -1:
                                revert with 'NH{q', 17
                            if var106009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var106009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var106001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 / xfLobby[arg1]
                                var106003 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_96
                                var106004 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                                var106005 = var106005 + var106001
                                var106009 = var106009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var106009 + 1 % 1099511627776
                            if var106005 + var106001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var106005 + -var106001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var106005 + var106001
                                if balanceOf[address(msg.sender)] > -var106005 + -var106001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var106005 + var106001
                                emit Transfer((var106005 + var106001), 0, msg.sender);
                        else:
                            if var106001 > -(var106001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var106009, var106001 + (var106001 / 20), address(var106003));
                            if not address(var106003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var106001 + (var106001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var106001 + (var106001 / 20) / 10
                            if balanceOf[address(var106003)] > -(var106001 + (var106001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var106003)] += var106001 + (var106001 / 20) / 10
                            mem[96] = var106001 + (var106001 / 20) / 10
                            emit Transfer((var106001 + (var106001 / 20) / 10), 0, address(var106003));
                            if var106005 > -var106001 + -(var106001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var106009 == -1:
                                revert with 'NH{q', 17
                            if var106009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var106009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var106001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0 / xfLobby[arg1]
                                var106003 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_96
                                var106004 = xfLobbyEntry[arg1][address(msg.sender)][1][var106009 + 1].field_0
                                var106005 = var106005 + var106001 + (var106001 / 20)
                                var106009 = var106009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var106009 + 1 % 1099511627776
                            if var106005 + var106001 + (var106001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var106005 + -var106001 + -(var106001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var106005 + var106001 + (var106001 / 20)
                                if balanceOf[address(msg.sender)] > -var106005 + -var106001 + -(var106001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var106005 + var106001 + (var106001 / 20)
                                emit Transfer((var106005 + var106001 + (var106001 / 20)), 0, msg.sender);
                else:
                    if arg1 < 1:
                        revert with 'NH{q', 17
                    if arg1 - 1 and 1342465753424 > -1 / arg1 - 1:
                        revert with 'NH{q', 17
                    if 5 * 10^14 < (1342465753424 * arg1) - 1342465753424:
                        revert with 'NH{q', 17
                    xfLobbyEntry[arg1][address(msg.sender)][1][var99005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var99005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var99005].field_0
                    if (-1342465753424 * arg1) + 501342465753424 and var109001 > -1 / (-1342465753424 * arg1) + 501342465753424:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var127003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var127009, var127001, address(var127003));
                        if var127005 > -var127001 - 1:
                            revert with 'NH{q', 17
                        if var127009 == -1:
                            revert with 'NH{q', 17
                        if var127009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                            mem[0] = var127009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                            if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var127001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) / xfLobby[arg1]
                            var127003 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_96
                            var127004 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                            var127005 = var127005 + var127001
                            var127009 = var127009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var127009 + 1 % 1099511627776
                        if var127005 + var127001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var127005 + -var127001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var127005 + var127001
                            if balanceOf[address(msg.sender)] > -var127005 + -var127001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var127005 + var127001
                            emit Transfer((var127005 + var127001), 0, msg.sender);
                    else:
                        if address(var127003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var127009, var127001, address(var127003));
                            if var127005 > -var127001 - 1:
                                revert with 'NH{q', 17
                            if var127009 == -1:
                                revert with 'NH{q', 17
                            if var127009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var127009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var127001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) / xfLobby[arg1]
                                var127003 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_96
                                var127004 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                                var127005 = var127005 + var127001
                                var127009 = var127009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var127009 + 1 % 1099511627776
                            if var127005 + var127001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var127005 + -var127001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var127005 + var127001
                                if balanceOf[address(msg.sender)] > -var127005 + -var127001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var127005 + var127001
                                emit Transfer((var127005 + var127001), 0, msg.sender);
                        else:
                            if var127001 > -(var127001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var127009, var127001 + (var127001 / 20), address(var127003));
                            if not address(var127003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var127001 + (var127001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var127001 + (var127001 / 20) / 10
                            if balanceOf[address(var127003)] > -(var127001 + (var127001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var127003)] += var127001 + (var127001 / 20) / 10
                            mem[96] = var127001 + (var127001 / 20) / 10
                            emit Transfer((var127001 + (var127001 / 20) / 10), 0, address(var127003));
                            if var127005 > -var127001 + -(var127001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var127009 == -1:
                                revert with 'NH{q', 17
                            if var127009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_40:
                                mem[0] = var127009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var127001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0) / xfLobby[arg1]
                                var127003 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_96
                                var127004 = xfLobbyEntry[arg1][address(msg.sender)][1][var127009 + 1].field_0
                                var127005 = var127005 + var127001 + (var127001 / 20)
                                var127009 = var127009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var127009 + 1 % 1099511627776
                            if var127005 + var127001 + (var127001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var127005 + -var127001 + -(var127001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var127005 + var127001 + (var127001 / 20)
                                if balanceOf[address(msg.sender)] > -var127005 + -var127001 + -(var127001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var127005 + var127001 + (var127001 / 20)
                                emit Transfer((var127005 + var127001 + (var127001 / 20)), 0, msg.sender);
        else:
            if xfLobbyEntry[arg1][address(msg.sender)].field_40 < xfLobbyEntry[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if arg2 > xfLobbyEntry[arg1][address(msg.sender)].field_40 - xfLobbyEntry[arg1][address(msg.sender)].field_0:
                revert with 0, 'ASP: count invalid'
            if xfLobbyEntry[arg1][address(msg.sender)].field_0 > -arg2 - 1:
                revert with 'NH{q', 17
            if arg1 <= 0:
                xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0 = 0
                xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var91005].field_0
                if var101001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                    revert with 'NH{q', 17
                if not xfLobby[arg1]:
                    revert with 'NH{q', 18
                if not address(var119003):
                    mem[96] = block.timestamp
                    mem[128] = arg1
                    emit XfLobbyExit(block.timestamp, arg1, var119009, var119001, address(var119003));
                    if var119005 > -var119001 - 1:
                        revert with 'NH{q', 17
                    if var119009 == -1:
                        revert with 'NH{q', 17
                    if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                        mem[0] = var119009 + 1
                        mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                        xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                        xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                        if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                            revert with 'NH{q', 17
                        if not xfLobby[arg1]:
                            revert with 'NH{q', 18
                        var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                        var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                        var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                        var119005 = var119005 + var119001
                        var119009 = var119009 + 1
                        continue 
                    xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                    if var119005 + var119001:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -var119005 + -var119001 - 1:
                            revert with 'NH{q', 17
                        totalSupply = totalSupply + var119005 + var119001
                        if balanceOf[address(msg.sender)] > -var119005 + -var119001 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001
                        emit Transfer((var119005 + var119001), 0, msg.sender);
                else:
                    if address(var119003) == msg.sender:
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var119009, var119001, address(var119003));
                        if var119005 > -var119001 - 1:
                            revert with 'NH{q', 17
                        if var119009 == -1:
                            revert with 'NH{q', 17
                        if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var119009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                            var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                            var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            var119005 = var119005 + var119001
                            var119009 = var119009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                        if var119005 + var119001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var119005 + -var119001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var119005 + var119001
                            if balanceOf[address(msg.sender)] > -var119005 + -var119001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001
                            emit Transfer((var119005 + var119001), 0, msg.sender);
                    else:
                        if var119001 > -(var119001 / 20) - 1:
                            revert with 'NH{q', 17
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var119009, var119001 + (var119001 / 20), address(var119003));
                        if not address(var119003):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -(var119001 + (var119001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        totalSupply += var119001 + (var119001 / 20) / 10
                        if balanceOf[address(var119003)] > -(var119001 + (var119001 / 20) / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(var119003)] += var119001 + (var119001 / 20) / 10
                        mem[96] = var119001 + (var119001 / 20) / 10
                        emit Transfer((var119001 + (var119001 / 20) / 10), 0, address(var119003));
                        if var119005 > -var119001 + -(var119001 / 20) - 1:
                            revert with 'NH{q', 17
                        if var119009 == -1:
                            revert with 'NH{q', 17
                        if var119009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var119009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var119001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0 / xfLobby[arg1]
                            var119003 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_96
                            var119004 = xfLobbyEntry[arg1][address(msg.sender)][1][var119009 + 1].field_0
                            var119005 = var119005 + var119001 + (var119001 / 20)
                            var119009 = var119009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var119009 + 1 % 1099511627776
                        if var119005 + var119001 + (var119001 / 20):
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var119005 + -var119001 + -(var119001 / 20) - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var119005 + var119001 + (var119001 / 20)
                            if balanceOf[address(msg.sender)] > -var119005 + -var119001 + -(var119001 / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var119005 + var119001 + (var119001 / 20)
                            emit Transfer((var119005 + var119001 + (var119001 / 20)), 0, msg.sender);
            else:
                if arg1 > 365:
                    xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var92005].field_0
                    if var102001 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var120003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var120009, var120001, address(var120003));
                        if var120005 > -var120001 - 1:
                            revert with 'NH{q', 17
                        if var120009 == -1:
                            revert with 'NH{q', 17
                        if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var120009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                            if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                            var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                            var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                            var120005 = var120005 + var120001
                            var120009 = var120009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                        if var120005 + var120001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var120005 + -var120001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var120005 + var120001
                            if balanceOf[address(msg.sender)] > -var120005 + -var120001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001
                            emit Transfer((var120005 + var120001), 0, msg.sender);
                    else:
                        if address(var120003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var120009, var120001, address(var120003));
                            if var120005 > -var120001 - 1:
                                revert with 'NH{q', 17
                            if var120009 == -1:
                                revert with 'NH{q', 17
                            if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var120009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                                var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                                var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                var120005 = var120005 + var120001
                                var120009 = var120009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                            if var120005 + var120001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var120005 + -var120001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var120005 + var120001
                                if balanceOf[address(msg.sender)] > -var120005 + -var120001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001
                                emit Transfer((var120005 + var120001), 0, msg.sender);
                        else:
                            if var120001 > -(var120001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var120009, var120001 + (var120001 / 20), address(var120003));
                            if not address(var120003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var120001 + (var120001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var120001 + (var120001 / 20) / 10
                            if balanceOf[address(var120003)] > -(var120001 + (var120001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var120003)] += var120001 + (var120001 / 20) / 10
                            mem[96] = var120001 + (var120001 / 20) / 10
                            emit Transfer((var120001 + (var120001 / 20) / 10), 0, address(var120003));
                            if var120005 > -var120001 + -(var120001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var120009 == -1:
                                revert with 'NH{q', 17
                            if var120009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var120009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                if xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 > 0x1c25c268497681c2650cb4be40d60df7311e9872477f201c409ec0:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var120001 = 10^13 * xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0 / xfLobby[arg1]
                                var120003 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_96
                                var120004 = xfLobbyEntry[arg1][address(msg.sender)][1][var120009 + 1].field_0
                                var120005 = var120005 + var120001 + (var120001 / 20)
                                var120009 = var120009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var120009 + 1 % 1099511627776
                            if var120005 + var120001 + (var120001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var120005 + -var120001 + -(var120001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var120005 + var120001 + (var120001 / 20)
                                if balanceOf[address(msg.sender)] > -var120005 + -var120001 + -(var120001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var120005 + var120001 + (var120001 / 20)
                                emit Transfer((var120005 + var120001 + (var120001 / 20)), 0, msg.sender);
                else:
                    if arg1 < 1:
                        revert with 'NH{q', 17
                    if arg1 - 1 and 1342465753424 > -1 / arg1 - 1:
                        revert with 'NH{q', 17
                    if 5 * 10^14 < (1342465753424 * arg1) - 1342465753424:
                        revert with 'NH{q', 17
                    xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0 = 0
                    xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var113005].field_0
                    if (-1342465753424 * arg1) + 501342465753424 and var123001 > -1 / (-1342465753424 * arg1) + 501342465753424:
                        revert with 'NH{q', 17
                    if not xfLobby[arg1]:
                        revert with 'NH{q', 18
                    if not address(var141003):
                        mem[96] = block.timestamp
                        mem[128] = arg1
                        emit XfLobbyExit(block.timestamp, arg1, var141009, var141001, address(var141003));
                        if var141005 > -var141001 - 1:
                            revert with 'NH{q', 17
                        if var141009 == -1:
                            revert with 'NH{q', 17
                        if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                            mem[0] = var141009 + 1
                            mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                            xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                            xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                            if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                revert with 'NH{q', 17
                            if not xfLobby[arg1]:
                                revert with 'NH{q', 18
                            var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                            var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                            var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                            var141005 = var141005 + var141001
                            var141009 = var141009 + 1
                            continue 
                        xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                        if var141005 + var141001:
                            if not msg.sender:
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -var141005 + -var141001 - 1:
                                revert with 'NH{q', 17
                            totalSupply = totalSupply + var141005 + var141001
                            if balanceOf[address(msg.sender)] > -var141005 + -var141001 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001
                            emit Transfer((var141005 + var141001), 0, msg.sender);
                    else:
                        if address(var141003) == msg.sender:
                            mem[96] = block.timestamp
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var141009, var141001, address(var141003));
                            if var141005 > -var141001 - 1:
                                revert with 'NH{q', 17
                            if var141009 == -1:
                                revert with 'NH{q', 17
                            if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var141009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                                var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                                var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                var141005 = var141005 + var141001
                                var141009 = var141009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                            if var141005 + var141001:
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var141005 + -var141001 - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var141005 + var141001
                                if balanceOf[address(msg.sender)] > -var141005 + -var141001 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001
                                emit Transfer((var141005 + var141001), 0, msg.sender);
                        else:
                            if var141001 > -(var141001 / 20) - 1:
                                revert with 'NH{q', 17
                            mem[128] = arg1
                            emit XfLobbyExit(block.timestamp, arg1, var141009, var141001 + (var141001 / 20), address(var141003));
                            if not address(var141003):
                                revert with 0, 'ERC20: mint to the zero address'
                            if totalSupply > -(var141001 + (var141001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            totalSupply += var141001 + (var141001 / 20) / 10
                            if balanceOf[address(var141003)] > -(var141001 + (var141001 / 20) / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(var141003)] += var141001 + (var141001 / 20) / 10
                            mem[96] = var141001 + (var141001 / 20) / 10
                            emit Transfer((var141001 + (var141001 / 20) / 10), 0, address(var141003));
                            if var141005 > -var141001 + -(var141001 / 20) - 1:
                                revert with 'NH{q', 17
                            if var141009 == -1:
                                revert with 'NH{q', 17
                            if var141009 + 1 < xfLobbyEntry[arg1][address(msg.sender)].field_0 + arg2:
                                mem[0] = var141009 + 1
                                mem[32] = sha3(address(msg.sender), sha3(arg1, 9)) + 1
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = 0
                                xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                if (-1342465753424 * arg1) + 501342465753424 and xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0 > -1 / (-1342465753424 * arg1) + 501342465753424:
                                    revert with 'NH{q', 17
                                if not xfLobby[arg1]:
                                    revert with 'NH{q', 18
                                var141001 = (501342465753424 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) - (1342465753424 * arg1 * xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0) / xfLobby[arg1]
                                var141003 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_96
                                var141004 = xfLobbyEntry[arg1][address(msg.sender)][1][var141009 + 1].field_0
                                var141005 = var141005 + var141001 + (var141001 / 20)
                                var141009 = var141009 + 1
                                continue 
                            xfLobbyEntry[arg1][address(msg.sender)].field_0 = var141009 + 1 % 1099511627776
                            if var141005 + var141001 + (var141001 / 20):
                                if not msg.sender:
                                    revert with 0, 'ERC20: mint to the zero address'
                                if totalSupply > -var141005 + -var141001 + -(var141001 / 20) - 1:
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply + var141005 + var141001 + (var141001 / 20)
                                if balanceOf[address(msg.sender)] > -var141005 + -var141001 + -(var141001 / 20) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + var141005 + var141001 + (var141001 / 20)
                                emit Transfer((var141005 + var141001 + (var141001 / 20)), 0, msg.sender);
}

function xfFlush() {
    if block.timestamp >= 457032 * 24 * 3600:
        if not eth.balance(this.address):
            revert with 0, 'ASP: No value'
        else:
            if block.timestamp >= 457032 * 24 * 3600:
                if stor3 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'ASP: Invalid day'
                else:
                    if uint16(stor5.field_0) < block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                        if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                            revert with 'NH{q', 17
                        else:
                            if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                                revert with 'NH{q', 17
                            else:
                                if not Mask(72, 0, stor4.field_184):
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var124001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var128001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var128001, msg.sender);
                                                if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                    revert with 'NH{q', 17
                                                else:
                                                    call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                       value 100 * dailyData[stor3].field_256 / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor3 == 255:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor3 = uint8(stor3 + 1)
                                                            if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                if var128001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                            else:
                                                                if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                    if var128001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                else:
                                                                    if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                        if var128001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var128001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                            if var128001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var128001)
                                                                        else:
                                                                            if var128001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var128001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var128001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var128001)
                                            else:
                                                if var144003 and 50000 > -1 / var144003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var132001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var136001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var136001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var136001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != 0:
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var136001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var136001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                                if var136001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var136001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var152003 and 50000 > -1 / var152003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                else:
                                    if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                        dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                        dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                        if not Mask(72, 0, stor4.field_72):
                                            if var132001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var136001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var136001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var136001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var136001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var136001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var136001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                        else:
                                                                            if 0 == Mask(72, 0, stor4.field_184):
                                                                                if var136001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                                            else:
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var136001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var136001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var136001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var136001)
                                                else:
                                                    if var152003 and 50000 > -1 / var152003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                        else:
                                            if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var140001 == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if var144001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                        emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var144001, msg.sender);
                                                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                               value 100 * dailyData[stor3].field_256 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if stor3 == 255:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor3 = uint8(stor3 + 1)
                                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var144001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var144001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var144001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var144001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var144001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var144001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var144001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var144001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var144001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var144001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var144001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var144001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                                    if var144001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var144001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var144001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var144001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    if var144001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var144001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var144001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var144001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if var160003 and 50000 > -1 / var160003:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            # nil
                    else:
                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                            revert with 'NH{q', 17
                        else:
                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                               value 100 * dailyData[stor3].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor3 == 255:
                                    revert with 'NH{q', 17
                                else:
                                    stor3 = uint8(stor3 + 1)
                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
                                    else:
                                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                                            else:
                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                else:
                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                    else:
                                        else:
                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                else:
                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                    else:
                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                        else:
                                            else:
                                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                else:
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
            else:
                if stor3 >= 0:
                    revert with 0, 'ASP: Invalid day'
                else:
                    if uint16(stor5.field_0) < block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                        if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                            revert with 'NH{q', 17
                        else:
                            if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                                revert with 'NH{q', 17
                            else:
                                if not Mask(72, 0, stor4.field_184):
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var110001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var114001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var114001, msg.sender);
                                                if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                    revert with 'NH{q', 17
                                                else:
                                                    call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                       value 100 * dailyData[stor3].field_256 / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor3 == 255:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor3 = uint8(stor3 + 1)
                                                            if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                if var114001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                            else:
                                                                if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                    if var114001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                else:
                                                                    if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                        if var114001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                            if var114001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if var114001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var114001)
                                            else:
                                                if var130003 and 50000 > -1 / var130003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var118001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var122001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var122001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var122001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != 0:
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var122001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var122001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var138003 and 50000 > -1 / var138003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                else:
                                    if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                        dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                        dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                        if not Mask(72, 0, stor4.field_72):
                                            if var118001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var122001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var122001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var122001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var122001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var122001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if 0 == Mask(72, 0, stor4.field_184):
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                else:
                                                    if var138003 and 50000 > -1 / var138003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                        else:
                                            if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var126001 == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if var130001 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                                                        emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var130001, msg.sender);
                                                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                               value 100 * dailyData[stor3].field_256 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if stor3 == 255:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor3 = uint8(stor3 + 1)
                                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var130001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var130001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var130001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                                    if var130001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    if var130001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if var146003 and 50000 > -1 / var146003:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            # nil
                    else:
                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                            revert with 'NH{q', 17
                        else:
                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                               value 100 * dailyData[stor3].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor3 == 255:
                                    revert with 'NH{q', 17
                                else:
                                    stor3 = uint8(stor3 + 1)
                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
                                    else:
                                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                                            else:
                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                else:
                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                    else:
                                        else:
                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                else:
                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                    else:
                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                        else:
                                            else:
                                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                else:
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
    else:
        if not eth.balance(this.address):
            revert with 0, 'ASP: No value'
        else:
            if block.timestamp >= 457032 * 24 * 3600:
                if stor3 >= block.timestamp - (457032 * 24 * 3600) / 24 * 3600:
                    revert with 0, 'ASP: Invalid day'
                else:
                    if uint16(stor5.field_0) < 0:
                        if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                            revert with 'NH{q', 17
                        else:
                            if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                                revert with 'NH{q', 17
                            else:
                                if not Mask(72, 0, stor4.field_184):
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var110001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var114001 >= 0:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var114001, msg.sender);
                                                if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                    revert with 'NH{q', 17
                                                else:
                                                    call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                       value 100 * dailyData[stor3].field_256 / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor3 == 255:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor3 = uint8(stor3 + 1)
                                                            if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                if var114001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                            else:
                                                                if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                    if var114001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                else:
                                                                    if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                        if var114001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                            if var114001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var114001)
                                                                        else:
                                                                            if var114001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var114001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var114001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var114001)
                                            else:
                                                if var130003 and 50000 > -1 / var130003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var118001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var122001 >= 0:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var122001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var122001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != 0:
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var122001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var122001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var138003 and 50000 > -1 / var138003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                else:
                                    if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                        dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                        dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                        if not Mask(72, 0, stor4.field_72):
                                            if var118001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var122001 >= 0:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var122001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var122001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var122001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var122001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                        else:
                                                                            if 0 == Mask(72, 0, stor4.field_184):
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                                            else:
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var122001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var122001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var122001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var122001)
                                                else:
                                                    if var138003 and 50000 > -1 / var138003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                        else:
                                            if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var126001 == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if var130001 >= 0:
                                                        emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var130001, msg.sender);
                                                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                               value 100 * dailyData[stor3].field_256 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if stor3 == 255:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor3 = uint8(stor3 + 1)
                                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var130001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var130001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var130001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var130001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                                    if var130001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    if var130001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var130001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var130001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var130001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if var146003 and 50000 > -1 / var146003:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            # nil
                    else:
                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                            revert with 'NH{q', 17
                        else:
                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                               value 100 * dailyData[stor3].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor3 == 255:
                                    revert with 'NH{q', 17
                                else:
                                    stor3 = uint8(stor3 + 1)
                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
                                    else:
                                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                                            else:
                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                else:
                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                    else:
                                        else:
                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                else:
                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                    else:
                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                        else:
                                            else:
                                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                else:
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
            else:
                if stor3 >= 0:
                    revert with 0, 'ASP: Invalid day'
                else:
                    if uint16(stor5.field_0) < 0:
                        if totalSupply > -Mask(72, 0, stor4.field_0) - 1:
                            revert with 'NH{q', 17
                        else:
                            if totalSupply + Mask(72, 0, stor4.field_0) and 50000 > -1 / totalSupply + Mask(72, 0, stor4.field_0):
                                revert with 'NH{q', 17
                            else:
                                if not Mask(72, 0, stor4.field_184):
                                    dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153)
                                    dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                    dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                    if not Mask(72, 0, stor4.field_72):
                                        if var96001 == -1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var100001 >= 0:
                                                emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var100001, msg.sender);
                                                if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                    revert with 'NH{q', 17
                                                else:
                                                    call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                       value 100 * dailyData[stor3].field_256 / 100 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if stor3 == 255:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            stor3 = uint8(stor3 + 1)
                                                            if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                if var100001 != uint16(stor5.field_0):
                                                                    uint16(stor5.field_0) = uint16(var100001)
                                                                else:
                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                        uint16(stor5.field_0) = uint16(var100001)
                                                                    else:
                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                        else:
                                                                            uint16(stor5.field_0) = uint16(var100001)
                                                            else:
                                                                if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                    if var100001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var100001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var100001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var100001)
                                                                else:
                                                                    if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                        if var100001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var100001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var100001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var100001)
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                            if var100001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var100001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var100001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var100001)
                                                                        else:
                                                                            if var100001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var100001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var100001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var100001)
                                            else:
                                                if var116003 and 50000 > -1 / var116003:
                                                    revert with 'NH{q', 17
                                                else:
                                                    # nil
                                    else:
                                        if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                            revert with 'NH{q', 17
                                        else:
                                            if var104001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var108001 >= 0:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var108001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var108001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != 0:
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var108001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var108001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                                                if var108001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var108001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                else:
                                                    if var124003 and 50000 > -1 / var124003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                else:
                                    if (50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153 > -Mask(72, 0, stor4.field_184) - 1:
                                        revert with 'NH{q', 17
                                    else:
                                        dailyData[uint16(stor5.field_0)].field_0 = Mask(72, 0, ((50000 * totalSupply) + (50000 * Mask(72, 0, stor4.field_0)) / 68854153) + Mask(72, 0, stor4.field_184))
                                        dailyData[uint16(stor5.field_0)].field_256 = xfLobby[uint16(stor5.field_0)]
                                        dailyData[uint16(stor5.field_0)].field_512 = Mask(72, 0, stor5.field_16)
                                        if not Mask(72, 0, stor4.field_72):
                                            if var104001 == -1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var108001 >= 0:
                                                    emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var108001, msg.sender);
                                                    if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                           value 100 * dailyData[stor3].field_256 / 100 wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if stor3 == 255:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                stor3 = uint8(stor3 + 1)
                                                                if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                    stor4.field_256 % 1 = 0
                                                                    if var108001 != uint16(stor5.field_0):
                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                    else:
                                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                        else:
                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                            else:
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                else:
                                                                    if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var108001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                    else:
                                                                        if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var108001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var108001)
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                        else:
                                                                            if 0 == Mask(72, 0, stor4.field_184):
                                                                                if var108001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                                            else:
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var108001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var108001)
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var108001)
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var108001)
                                                else:
                                                    if var124003 and 50000 > -1 / var124003:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        # nil
                                        else:
                                            if Mask(72, 0, stor5.field_16) > -Mask(72, 0, stor4.field_72) - 1:
                                                revert with 'NH{q', 17
                                            else:
                                                if var112001 == -1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if var116001 >= 0:
                                                        emit DailyDataUpdate(block.timestamp, uint16(stor5.field_0), var116001, msg.sender);
                                                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                                                               value 100 * dailyData[stor3].field_256 / 100 wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if stor3 == 255:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    stor3 = uint8(stor3 + 1)
                                                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                                                        Mask(72, 0, stor4.field_72) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        Mask(72, 0, stor4.field_184) = 0
                                                                        stor4.field_256 % 1 = 0
                                                                        if var116001 != uint16(stor5.field_0):
                                                                            uint16(stor5.field_0) = uint16(var116001)
                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                uint16(stor5.field_0) = uint16(var116001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                else:
                                                                                    uint16(stor5.field_0) = uint16(var116001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                    else:
                                                                        if Mask(72, 0, stor4.field_72) != 0:
                                                                            Mask(72, 0, stor4.field_72) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            Mask(72, 0, stor4.field_184) = 0
                                                                            stor4.field_256 % 1 = 0
                                                                            if var116001 != uint16(stor5.field_0):
                                                                                uint16(stor5.field_0) = uint16(var116001)
                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                    uint16(stor5.field_0) = uint16(var116001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                    else:
                                                                                        uint16(stor5.field_0) = uint16(var116001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                        else:
                                                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                                                Mask(72, 0, stor4.field_72) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                Mask(72, 0, stor4.field_184) = 0
                                                                                stor4.field_256 % 1 = 0
                                                                                if var116001 != uint16(stor5.field_0):
                                                                                    uint16(stor5.field_0) = uint16(var116001)
                                                                                    Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                        uint16(stor5.field_0) = uint16(var116001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                        else:
                                                                                            uint16(stor5.field_0) = uint16(var116001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                            else:
                                                                                if 0 == Mask(72, 0, stor4.field_184):
                                                                                    if var116001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var116001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var116001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var116001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                else:
                                                                                    Mask(72, 0, stor4.field_72) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    Mask(72, 0, stor4.field_184) = 0
                                                                                    stor4.field_256 % 1 = 0
                                                                                    if var116001 != uint16(stor5.field_0):
                                                                                        uint16(stor5.field_0) = uint16(var116001)
                                                                                        Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                    else:
                                                                                        if Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72) != Mask(72, 0, stor5.field_16):
                                                                                            uint16(stor5.field_0) = uint16(var116001)
                                                                                            Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                                                        else:
                                                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                                                            else:
                                                                                                uint16(stor5.field_0) = uint16(var116001)
                                                                                                Mask(72, 0, stor5.field_16) = Mask(72, 0, Mask(72, 0, stor5.field_16) + Mask(72, 0, stor4.field_72))
                                                    else:
                                                        if var132003 and 50000 > -1 / var132003:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            # nil
                    else:
                        if dailyData[stor3].field_256 and 100 > -1 / dailyData[stor3].field_256:
                            revert with 'NH{q', 17
                        else:
                            call 0x5f951b74e671a675320a60ebce8cb970c326b47a with:
                               value 100 * dailyData[stor3].field_256 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if stor3 == 255:
                                    revert with 'NH{q', 17
                                else:
                                    stor3 = uint8(stor3 + 1)
                                    if Mask(72, 0, stor4.field_0) != Mask(72, 0, stor4.field_0):
                                        if uint16(stor5.field_0) != uint16(stor5.field_0):
                                        else:
                                            if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                            else:
                                                if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                else:
                                    else:
                                        if Mask(72, 0, stor4.field_72) != Mask(72, 0, stor4.field_72):
                                            if uint16(stor5.field_0) != uint16(stor5.field_0):
                                            else:
                                                if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                else:
                                                    if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                    else:
                                        else:
                                            if stor4.field_144 % 1099511627776 != stor4.field_144 % 1099511627776:
                                                if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                else:
                                                    if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                    else:
                                                        if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                        else:
                                            else:
                                                if Mask(72, 0, stor4.field_184) == Mask(72, 0, stor4.field_184):
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
                                                else:
                                                    if uint16(stor5.field_0) != uint16(stor5.field_0):
                                                    else:
                                                        if Mask(72, 0, stor5.field_16) != Mask(72, 0, stor5.field_16):
                                                        else:
                                                            if stor5.field_88 % 1099511627776 == stor5.field_0 % 1099511627776:
                                                            else:
}



}
