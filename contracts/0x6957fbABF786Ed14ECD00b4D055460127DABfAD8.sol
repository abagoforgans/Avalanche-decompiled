contract main {




// =====================  Runtime code  =====================


#
#  - reinvest(uint256 arg1, uint256 arg2)
#
const sub_1e4a5e99(?) = 40

const getCurrentTime = block.timestamp

const sub_2e665922(?) = 30

const sub_469ef529(?) = 200

const sub_6a7d563a(?) = 100

const sub_797e5e1b(?) = 30

const sub_baf5cdcb(?) = 100

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const REINVEST_PERCENT = 350

const INVEST_MIN_AMOUNT = 10^16


address owner;
mapping of struct users;
array of struct plans;
address stor3;
array of address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
array of uint256 rEFERRAL_PERCENTS;
uint256 sub_ada1c0d5;
uint256 sub_15a5f19d;
uint256 sub_634e816b;
uint256 sub_b126ef48;
uint256 totalInvested;
uint256 sub_cc8026a4;
uint256 sub_92550e5e;
uint256 totalClaimed;
uint8 launched;

function sub_15a5f19d(?) {
    return sub_15a5f19d
}

function totalInvested() {
    return totalInvested
}

function getUserInfo() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        _23 = mem[64]
        mem[64] = mem[64] + 256
        _24 = mem[64]
        mem[64] = mem[64] + (32 * users[address(msg.sender)].field_0) + 32
        mem[_24] = users[address(msg.sender)].field_0
        t = _24 + 32
        s = 0
        while s < users[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 1)
            _32 = mem[64]
            mem[64] = mem[64] + 320
            mem[_32] = users[address(msg.sender)][s].field_0
            mem[_32 + 32] = users[address(msg.sender)][s].field_256
            mem[_32 + 64] = users[address(msg.sender)][s].field_512
            mem[_32 + 96] = users[address(msg.sender)][s].field_768
            mem[_32 + 128] = users[address(msg.sender)][s].field_1024
            mem[_32 + 160] = users[address(msg.sender)][s].field_1280
            mem[_32 + 192] = users[address(msg.sender)][s].field_1536
            mem[_32 + 224] = users[address(msg.sender)][s].field_1792
            mem[_32 + 256] = bool(users[address(msg.sender)][s].field_2048)
            mem[_32 + 288] = bool(users[address(msg.sender)][s].field_2056)
            mem[t] = _32
            t = t + 32
            s = s + 1
            continue 
        mem[_23] = _24
        _30 = mem[64]
        mem[64] = mem[64] + 96
        mem[_30] = users[address(msg.sender)].field_256
        s = _30
        t = sha3(address(msg.sender), 1) + 1
        while _30 + 96 > s + 32:
            mem[s + 32] = users[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_23 + 32] = _30
        mem[_23 + 64] = users[address(msg.sender)].field_1024
        mem[_23 + 96] = users[address(msg.sender)].field_1280
        mem[_23 + 128] = users[address(msg.sender)].field_1536
        mem[_23 + 160] = users[address(msg.sender)].field_1792
        mem[_23 + 192] = users[address(msg.sender)].field_2048
        mem[_23 + 224] = users[address(msg.sender)].field_2304
        if idx >= mem[mem[_23]]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + mem[_23] + 32] + 192] >= mem[mem[(32 * idx) + mem[_23] + 32] + 96]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= users[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 1)
        if users[address(msg.sender)][idx].field_0 >= 4:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 1
        _40 = mem[64]
        mem[64] = mem[64] + 256
        _41 = mem[64]
        mem[64] = mem[64] + (32 * users[address(msg.sender)].field_0) + 32
        mem[_41] = users[address(msg.sender)].field_0
        t = _41 + 32
        s = 0
        while s < users[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 1)
            _47 = mem[64]
            mem[64] = mem[64] + 320
            mem[_47] = users[address(msg.sender)][s].field_0
            mem[_47 + 32] = users[address(msg.sender)][s].field_256
            mem[_47 + 64] = users[address(msg.sender)][s].field_512
            mem[_47 + 96] = users[address(msg.sender)][s].field_768
            mem[_47 + 128] = users[address(msg.sender)][s].field_1024
            mem[_47 + 160] = users[address(msg.sender)][s].field_1280
            mem[_47 + 192] = users[address(msg.sender)][s].field_1536
            mem[_47 + 224] = users[address(msg.sender)][s].field_1792
            mem[_47 + 256] = bool(users[address(msg.sender)][s].field_2048)
            mem[_47 + 288] = bool(users[address(msg.sender)][s].field_2056)
            mem[t] = _47
            t = t + 32
            s = s + 1
            continue 
        mem[_40] = _41
        _45 = mem[64]
        mem[64] = mem[64] + 96
        mem[_45] = users[address(msg.sender)].field_256
        idx = _45
        s = sha3(address(msg.sender), 1) + 1
        while _45 + 96 > idx + 32:
            mem[idx + 32] = users[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_40 + 32] = _45
        mem[_40 + 64] = users[address(msg.sender)].field_1024
        mem[_40 + 96] = users[address(msg.sender)].field_1280
        mem[_40 + 128] = users[address(msg.sender)].field_1536
        mem[_40 + 160] = users[address(msg.sender)].field_1792
        mem[_40 + 192] = users[address(msg.sender)].field_2048
        mem[_40 + 224] = users[address(msg.sender)].field_2304
        if _41 + (32 * users[address(msg.sender)].field_0) + 32 >= mem[mem[_40]]:
            revert with 'NH{q', 50
        if mem[mem[(32 * _41 + (32 * users[address(msg.sender)].field_0) + 32) + mem[_40] + 32] + 192] < mem[mem[(32 * _41 + (32 * users[address(msg.sender)].field_0) + 32) + mem[_40] + 32] + 96]:
            if _41 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 1)
            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= 4:
                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 <= block.timestamp:
                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 / 1000 > 0:
                        if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                            if users[address(msg.sender)].field_1280 > -(stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 / 1000) - 1:
                                revert with 'NH{q', 17
            else:
                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < block.timestamp:
                        if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240:
                                revert with 'NH{q', 17
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 >= 24 * 3600:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        if users[address(msg.sender)].field_1280 > -(stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        if users[address(msg.sender)].field_1280 > -((stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                    else:
                        if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 < block.timestamp:
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if block.timestamp < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240:
                                revert with 'NH{q', 17
                            if block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 >= 24 * 3600:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if block.timestamp > 0:
                                        if users[address(msg.sender)].field_1280 > -(stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (block.timestamp * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if block.timestamp > 0:
                                        if users[address(msg.sender)].field_1280 > -((block.timestamp * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                else:
                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < block.timestamp:
                        if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                                revert with 'NH{q', 17
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 >= 24 * 3600:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        if users[address(msg.sender)].field_1280 > -(stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        if users[address(msg.sender)].field_1280 > -((stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                    else:
                        if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 < block.timestamp:
                            if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if block.timestamp < stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                                revert with 'NH{q', 17
                            if block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 >= 24 * 3600:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if block.timestamp > 0:
                                        if users[address(msg.sender)].field_1280 > -(stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 > -1 / stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (block.timestamp * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if block.timestamp > 0:
                                        if users[address(msg.sender)].field_1280 > -((block.timestamp * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _41) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _41) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
        if _41 + (32 * users[address(msg.sender)].field_0) + 32 == -1:
            revert with 'NH{q', 17
        t = _41 + (32 * users[address(msg.sender)].field_0) + 33
        continue 
    return users[address(msg.sender)].field_1536, 
           users[address(msg.sender)].field_1280,
           users[address(msg.sender)].field_1792,
           users[address(msg.sender)].field_2048
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function sub_634e816b(?) {
    return sub_634e816b
}

function sub_64e4ffb4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= plans.length:
        revert with 'NH{q', 50
    return plans[arg1].field_0, 
           plans[arg1].field_256,
           plans[arg1].field_512,
           plans[arg1].field_768,
           plans[arg1].field_1024,
           plans[arg1].field_1280,
           plans[arg1].field_1536
}

function launched() {
    return bool(launched)
}

function owner() {
    return owner
}

function sub_92550e5e(?) {
    return sub_92550e5e
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_1024, 
           users[arg1].field_1280,
           users[arg1].field_1536,
           users[arg1].field_1792,
           users[arg1].field_2048,
           users[arg1].field_2304
}

function sub_ada1c0d5(?) {
    return sub_ada1c0d5
}

function sub_b126ef48(?) {
    return sub_b126ef48
}

function plans(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < plans.length
    return plans[arg1].field_0, 
           plans[arg1].field_256,
           plans[arg1].field_512,
           plans[arg1].field_768,
           plans[arg1].field_1024,
           plans[arg1].field_1280,
           plans[arg1].field_1536
}

function sub_cc8026a4(?) {
    return sub_cc8026a4
}

function totalClaimed() {
    return totalClaimed
}

function _fallback() payable {
    revert
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launched = 1
}

function getProjectInfo() {
    return sub_b126ef48, totalInvested, eth.balance(stor9), eth.balance(this.address), block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getContractBalance() {
    if eth.balance(this.address) > -eth.balance(stor9) - 1:
        revert with 'NH{q', 17
    return (eth.balance(this.address) + eth.balance(stor9))
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

function sub_14c2af4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percent must be between 10% - 50%'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percent must be between 10% - 50%'
    sub_634e816b = arg1
    emit 0x7ded583e: sub_634e816b, arg1
}

function sub_53d0e9b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 110 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percent must be between 11% - 40%'
    if arg1 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New percent must be between 11% - 40%'
    sub_15a5f19d = arg1
    emit 0x6e3c2ff8: sub_15a5f19d, arg1
}

function sub_7222496a(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < plans.length:
        mem[0] = 2
        _11 = mem[64]
        mem[64] = mem[64] + 224
        mem[_11] = plans[idx].field_0
        mem[_11 + 32] = plans[idx].field_256
        mem[_11 + 64] = plans[idx].field_512
        mem[_11 + 96] = plans[idx].field_768
        mem[_11 + 128] = plans[idx].field_1024
        mem[_11 + 160] = plans[idx].field_1280
        mem[_11 + 192] = plans[idx].field_1536
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = plans[idx].field_256
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_76dbab5a(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Marketing wallet is zero'
    if not address(arg2):
        revert with 0, 'BullStake::ga wallet is zero'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Comission wallet is zero'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Tenpercent wallet is zero'
    if not address(arg5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Forcewithdrawal wallet is zero'
    if not address(arg6):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Twentypercent wallet is zero'
    if not address(arg7):
        revert with 0, 'BullStake::CB wallet is zero'
    stor3 = address(arg1)
    stor9 = address(arg2)
    stor4.length = address(arg3)
    stor7 = address(arg4)
    stor5 = address(arg5)
    stor8 = address(arg6)
    stor6 = address(arg7)
}

function sub_94951944(?) {
    mem[0] = msg.sender
    mem[32] = 1
    mem[64] = (32 * users[address(msg.sender)].field_0) + 128
    mem[96] = users[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        _20 = mem[64]
        mem[64] = mem[64] + 320
        mem[_20] = users[address(msg.sender)][idx].field_0
        mem[_20 + 32] = users[address(msg.sender)][idx].field_256
        mem[_20 + 64] = users[address(msg.sender)][idx].field_512
        mem[_20 + 96] = users[address(msg.sender)][idx].field_768
        mem[_20 + 128] = users[address(msg.sender)][idx].field_1024
        mem[_20 + 160] = users[address(msg.sender)][idx].field_1280
        mem[_20 + 192] = users[address(msg.sender)][idx].field_1536
        mem[_20 + 224] = users[address(msg.sender)][idx].field_1792
        mem[_20 + 256] = bool(users[address(msg.sender)][idx].field_2048)
        mem[_20 + 288] = bool(users[address(msg.sender)][idx].field_2056)
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _22:
        _35 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_35 + 32]
        mem[t + 64] = mem[_35 + 64]
        mem[t + 96] = mem[_35 + 96]
        mem[t + 128] = mem[_35 + 128]
        mem[t + 160] = mem[_35 + 160]
        mem[t + 192] = mem[_35 + 192]
        mem[t + 224] = mem[_35 + 224]
        mem[t + 256] = bool(mem[_35 + 256])
        mem[t + 288] = bool(mem[_35 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _21 + (320 * _22) + -mem[64] + 64
}

function forceWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 1
    if arg1 >= users[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    mem[0] = sha3(address(msg.sender), 1)
    if users[address(msg.sender)][arg1].field_0 < 4:
        revert with 0, 'BullStake::Only locked packages'
    mem[64] = (32 * users[address(msg.sender)].field_0) + 384
    mem[352] = users[address(msg.sender)].field_0
    s = 384
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        _12 = mem[64]
        mem[64] = mem[64] + 320
        mem[_12] = users[address(msg.sender)][idx].field_0
        mem[_12 + 32] = users[address(msg.sender)][idx].field_256
        mem[_12 + 64] = users[address(msg.sender)][idx].field_512
        mem[_12 + 96] = users[address(msg.sender)][idx].field_768
        mem[_12 + 128] = users[address(msg.sender)][idx].field_1024
        mem[_12 + 160] = users[address(msg.sender)][idx].field_1280
        mem[_12 + 192] = users[address(msg.sender)][idx].field_1536
        mem[_12 + 224] = users[address(msg.sender)][idx].field_1792
        mem[_12 + 256] = bool(users[address(msg.sender)][idx].field_2048)
        mem[_12 + 288] = bool(users[address(msg.sender)][idx].field_2056)
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 352
    _10 = mem[64]
    mem[64] = mem[64] + 96
    mem[_10] = users[address(msg.sender)].field_256
    idx = _10
    s = 1
    while _10 + 96 > idx + 32:
        mem[idx + 32] = users[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[128] = _10
    mem[160] = users[address(msg.sender)].field_1024
    mem[192] = users[address(msg.sender)].field_1280
    mem[224] = users[address(msg.sender)].field_1536
    mem[256] = users[address(msg.sender)].field_1792
    mem[288] = users[address(msg.sender)].field_2048
    mem[320] = users[address(msg.sender)].field_2304
    if arg1 >= mem[mem[96]]:
        revert with 'NH{q', 50
    if mem[mem[(32 * arg1) + mem[96] + 32] + 192] >= mem[mem[(32 * arg1) + mem[96] + 32] + 96]:
        revert with 0, 'Deposit is deceased'
    if arg1 >= users[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if users[address(msg.sender)][arg1].field_256 and sub_15a5f19d > -1 / users[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    if users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000 and sub_634e816b > -1 / users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000:
        revert with 'NH{q', 17
    if sub_ada1c0d5 > -(users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000 * sub_634e816b / 1000) - 1:
        revert with 'NH{q', 17
    sub_ada1c0d5 += users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000 * sub_634e816b / 1000
    call stor5 with:
       value users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000 * sub_634e816b / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= users[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
    users[address(msg.sender)][arg1].field_2048 = 1
    if users[address(msg.sender)][arg1].field_256 < users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)][arg1].field_256 - (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000) <= eth.balance(this.address):
        if users[address(msg.sender)].field_2304 > -users[address(msg.sender)][arg1].field_256 + (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000) - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + users[address(msg.sender)][arg1].field_256 - (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000)
        if totalClaimed > -users[address(msg.sender)][arg1].field_256 + (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000) - 1:
            revert with 'NH{q', 17
        totalClaimed = totalClaimed + users[address(msg.sender)][arg1].field_256 - (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000)
        call msg.sender with:
           value users[address(msg.sender)][arg1].field_256 - (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(msg.sender, users[address(msg.sender)][arg1].field_256 - (users[address(msg.sender)][arg1].field_256 * sub_15a5f19d / 1000));
    else:
        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_2304 += eth.balance(this.address)
        if totalClaimed > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        totalClaimed += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(msg.sender, eth.balance(this.address));
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not launched:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::Project is not launched.'
    if msg.value < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BullStake::The deposit amount is too low'
    if arg2 >= plans.length:
        revert with 0, 'BullStake::Invalid plan index'
    if msg.value and 100 > -1 / msg.value:
        revert with 'NH{q', 17
    call stor7 with:
       value 100 * msg.value / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not users[address(msg.sender)].field_1024:
        if users[address(arg1)].field_0:
            if arg1 != msg.sender:
                users[address(msg.sender)].field_1024 = arg1
                mem[0] = msg.sender
                mem[32] = 1
                idx = 0
                s = stor4[sha3(mem[0 len 64])]
                while idx < rEFERRAL_PERCENTS.length:
                    if address(s):
                        if idx >= 3:
                            revert with 'NH{q', 50
                        if users[address(s)][idx].field_256 == -1:
                            revert with 'NH{q', 17
                        users[address(s)][idx].field_256++
                        mem[0] = address(s)
                        mem[32] = 1
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = users[address(s)].field_1024
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 1
                    idx = 0
                    s = stor4[sha3(mem[0 len 64])]
                    while idx < rEFERRAL_PERCENTS.length:
                        if address(s):
                            if idx >= rEFERRAL_PERCENTS.length:
                                revert with 'NH{q', 50
                            if msg.value and rEFERRAL_PERCENTS[idx] > -1 / msg.value:
                                revert with 'NH{q', 17
                            if users[address(s)].field_1280 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                                revert with 'NH{q', 17
                            users[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            if users[address(s)].field_1792 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                                revert with 'NH{q', 17
                            users[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            if sub_cc8026a4 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                                revert with 'NH{q', 17
                            sub_cc8026a4 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            mem[0] = address(s)
                            mem[32] = 1
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = users[address(s)].field_1024
                            continue 
                        if arg2 >= plans.length:
                            revert with 'NH{q', 50
                        if msg.value / 1000 and plans[arg2].field_1536 > -1 / msg.value / 1000:
                            revert with 'NH{q', 17
                        if arg2 >= plans.length:
                            revert with 'NH{q', 50
                        if plans[arg2].field_0 and 24 * 3600 > -1 / plans[arg2].field_0:
                            revert with 'NH{q', 17
                        if block.timestamp > (-86400 * plans[arg2].field_0) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_0++
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_0 = arg2
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_8 = 0
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_256 = msg.value
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_512 = block.timestamp
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_768 = block.timestamp + (24 * 3600 * plans[arg2].field_0)
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1024 = 0
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1280 = msg.value / 1000 * plans[arg2].field_1536
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1536 = block.timestamp
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1792 = users[address(msg.sender)].field_0
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_2048 = 0
                        users[address(msg.sender)][users[address(msg.sender)].field_0].field_2056 = 0
                        if users[address(msg.sender)].field_1536 > -msg.value - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_1536 += msg.value
                        if sub_b126ef48 == -1:
                            revert with 'NH{q', 17
                        sub_b126ef48++
                        if totalInvested > -msg.value - 1:
                            revert with 'NH{q', 17
                        totalInvested += msg.value
                        emit NewDeposit(msg.sender, arg2 << 248, msg.value);
                    if arg2 >= plans.length:
                        revert with 'NH{q', 50
                    if msg.value / 1000 and plans[arg2].field_1536 > -1 / msg.value / 1000:
                        revert with 'NH{q', 17
                    if arg2 >= plans.length:
                        revert with 'NH{q', 50
                    if plans[arg2].field_0 and 24 * 3600 > -1 / plans[arg2].field_0:
                        revert with 'NH{q', 17
                    if block.timestamp > (-86400 * plans[arg2].field_0) - 1:
                        revert with 'NH{q', 17
                    users[address(msg.sender)].field_0++
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_0 = arg2
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_8 = 0
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_256 = msg.value
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_512 = block.timestamp
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_768 = block.timestamp + (24 * 3600 * plans[arg2].field_0)
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1024 = 0
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1280 = msg.value / 1000 * plans[arg2].field_1536
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1536 = block.timestamp
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1792 = users[address(msg.sender)].field_0
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_2048 = 0
                    users[address(msg.sender)][users[address(msg.sender)].field_0].field_2056 = 0
                    if users[address(msg.sender)].field_1536 > -msg.value - 1:
                        revert with 'NH{q', 17
                    users[address(msg.sender)].field_1536 += msg.value
                    if sub_b126ef48 == -1:
                        revert with 'NH{q', 17
                    sub_b126ef48++
                    if totalInvested > -msg.value - 1:
                        revert with 'NH{q', 17
                    totalInvested += msg.value
                    emit NewDeposit(msg.sender, arg2 << 248, msg.value);
    mem[0] = msg.sender
    mem[32] = 1
    idx = 0
    s = stor4[sha3(mem[0 len 64])]
    while idx < rEFERRAL_PERCENTS.length:
        if address(s):
            if idx >= rEFERRAL_PERCENTS.length:
                revert with 'NH{q', 50
            if msg.value and rEFERRAL_PERCENTS[idx] > -1 / msg.value:
                revert with 'NH{q', 17
            if users[address(s)].field_1280 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                revert with 'NH{q', 17
            users[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
            if users[address(s)].field_1792 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                revert with 'NH{q', 17
            users[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
            if sub_cc8026a4 > -(msg.value * rEFERRAL_PERCENTS[idx] / 1000) - 1:
                revert with 'NH{q', 17
            sub_cc8026a4 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
            mem[0] = address(s)
            mem[32] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = users[address(s)].field_1024
            continue 
        if arg2 >= plans.length:
            revert with 'NH{q', 50
        if msg.value / 1000 and plans[arg2].field_1536 > -1 / msg.value / 1000:
            revert with 'NH{q', 17
        if arg2 >= plans.length:
            revert with 'NH{q', 50
        if plans[arg2].field_0 and 24 * 3600 > -1 / plans[arg2].field_0:
            revert with 'NH{q', 17
        if block.timestamp > (-86400 * plans[arg2].field_0) - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_0++
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_0 = arg2
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_8 = 0
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_256 = msg.value
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_512 = block.timestamp
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_768 = block.timestamp + (24 * 3600 * plans[arg2].field_0)
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1024 = 0
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1280 = msg.value / 1000 * plans[arg2].field_1536
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1536 = block.timestamp
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_1792 = users[address(msg.sender)].field_0
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_2048 = 0
        users[address(msg.sender)][users[address(msg.sender)].field_0].field_2056 = 0
        if users[address(msg.sender)].field_1536 > -msg.value - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_1536 += msg.value
        if sub_b126ef48 == -1:
            revert with 'NH{q', 17
        sub_b126ef48++
        if totalInvested > -msg.value - 1:
            revert with 'NH{q', 17
        totalInvested += msg.value
        emit NewDeposit(msg.sender, arg2 << 248, msg.value);
    if arg2 >= plans.length:
        revert with 'NH{q', 50
    if msg.value / 1000 and plans[arg2].field_1536 > -1 / msg.value / 1000:
        revert with 'NH{q', 17
    if arg2 >= plans.length:
        revert with 'NH{q', 50
    if plans[arg2].field_0 and 24 * 3600 > -1 / plans[arg2].field_0:
        revert with 'NH{q', 17
    if block.timestamp > (-86400 * plans[arg2].field_0) - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_0++
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_0 = arg2
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_8 = 0
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_256 = msg.value
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_512 = block.timestamp
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_768 = block.timestamp + (24 * 3600 * plans[arg2].field_0)
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1024 = 0
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1280 = msg.value / 1000 * plans[arg2].field_1536
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1536 = block.timestamp
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_1792 = users[address(msg.sender)].field_0
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_2048 = 0
    users[address(msg.sender)][users[address(msg.sender)].field_0].field_2056 = 0
    if users[address(msg.sender)].field_1536 > -msg.value - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_1536 += msg.value
    if sub_b126ef48 == -1:
        revert with 'NH{q', 17
    sub_b126ef48++
    if totalInvested > -msg.value - 1:
        revert with 'NH{q', 17
    totalInvested += msg.value
    emit NewDeposit(msg.sender, arg2 << 248, msg.value);
}

function claim() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 1
    if users[address(msg.sender)].field_1280 and 200 > -1 / users[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    call stor8 with:
       value 200 * users[address(msg.sender)].field_1280 / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if users[address(msg.sender)].field_1280 < 200 * users[address(msg.sender)].field_1280 / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_2048 > -users[address(msg.sender)].field_1280 - 1:
        revert with 'NH{q', 17
    users[address(msg.sender)].field_2048 += users[address(msg.sender)].field_1280
    if sub_92550e5e > -users[address(msg.sender)].field_1280 - 1:
        revert with 'NH{q', 17
    sub_92550e5e += users[address(msg.sender)].field_1280
    users[address(msg.sender)].field_1280 = 0
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        _39 = mem[64]
        mem[64] = mem[64] + 256
        _40 = mem[64]
        mem[64] = mem[64] + (32 * users[address(msg.sender)].field_0) + 32
        mem[_40] = users[address(msg.sender)].field_0
        t = _40 + 32
        s = 0
        while s < users[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 1)
            _62 = mem[64]
            mem[64] = mem[64] + 320
            mem[_62] = users[address(msg.sender)][s].field_0
            mem[_62 + 32] = users[address(msg.sender)][s].field_256
            mem[_62 + 64] = users[address(msg.sender)][s].field_512
            mem[_62 + 96] = users[address(msg.sender)][s].field_768
            mem[_62 + 128] = users[address(msg.sender)][s].field_1024
            mem[_62 + 160] = users[address(msg.sender)][s].field_1280
            mem[_62 + 192] = users[address(msg.sender)][s].field_1536
            mem[_62 + 224] = users[address(msg.sender)][s].field_1792
            mem[_62 + 256] = bool(users[address(msg.sender)][s].field_2048)
            mem[_62 + 288] = bool(users[address(msg.sender)][s].field_2056)
            mem[t] = _62
            t = t + 32
            s = s + 1
            continue 
        mem[_39] = _40
        _60 = mem[64]
        mem[64] = mem[64] + 96
        mem[_60] = users[address(msg.sender)].field_256
        s = _60
        t = sha3(address(msg.sender), 1) + 1
        while _60 + 96 > s + 32:
            mem[s + 32] = users[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_39 + 32] = _60
        mem[_39 + 64] = users[address(msg.sender)].field_1024
        mem[_39 + 96] = users[address(msg.sender)].field_1280
        mem[_39 + 128] = users[address(msg.sender)].field_1536
        mem[_39 + 160] = users[address(msg.sender)].field_1792
        mem[_39 + 192] = users[address(msg.sender)].field_2048
        mem[_39 + 224] = users[address(msg.sender)].field_2304
        if idx >= mem[mem[_39]]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + mem[_39] + 32] + 192] >= mem[mem[(32 * idx) + mem[_39] + 32] + 96]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= users[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 1)
        if users[address(msg.sender)][idx].field_0 >= 4:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 1
        _70 = mem[64]
        mem[64] = mem[64] + 256
        _71 = mem[64]
        mem[64] = mem[64] + (32 * users[address(msg.sender)].field_0) + 32
        mem[_71] = users[address(msg.sender)].field_0
        t = _71 + 32
        s = 0
        while s < users[address(msg.sender)].field_0:
            mem[0] = sha3(address(msg.sender), 1)
            _77 = mem[64]
            mem[64] = mem[64] + 320
            mem[_77] = users[address(msg.sender)][s].field_0
            mem[_77 + 32] = users[address(msg.sender)][s].field_256
            mem[_77 + 64] = users[address(msg.sender)][s].field_512
            mem[_77 + 96] = users[address(msg.sender)][s].field_768
            mem[_77 + 128] = users[address(msg.sender)][s].field_1024
            mem[_77 + 160] = users[address(msg.sender)][s].field_1280
            mem[_77 + 192] = users[address(msg.sender)][s].field_1536
            mem[_77 + 224] = users[address(msg.sender)][s].field_1792
            mem[_77 + 256] = bool(users[address(msg.sender)][s].field_2048)
            mem[_77 + 288] = bool(users[address(msg.sender)][s].field_2056)
            mem[t] = _77
            t = t + 32
            s = s + 1
            continue 
        mem[_70] = _71
        _75 = mem[64]
        mem[64] = mem[64] + 96
        mem[_75] = users[address(msg.sender)].field_256
        idx = _75
        s = sha3(address(msg.sender), 1) + 1
        while _75 + 96 > idx + 32:
            mem[idx + 32] = users[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[_70 + 32] = _75
        mem[_70 + 64] = users[address(msg.sender)].field_1024
        mem[_70 + 96] = users[address(msg.sender)].field_1280
        mem[_70 + 128] = users[address(msg.sender)].field_1536
        mem[_70 + 160] = users[address(msg.sender)].field_1792
        mem[_70 + 192] = users[address(msg.sender)].field_2048
        mem[_70 + 224] = users[address(msg.sender)].field_2304
        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= mem[mem[_70]]:
            revert with 'NH{q', 50
        if mem[mem[(32 * _71 + (32 * users[address(msg.sender)].field_0) + 32) + mem[_70] + 32] + 192] < mem[mem[(32 * _71 + (32 * users[address(msg.sender)].field_0) + 32) + mem[_70] + 32] + 96]:
            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 1)
            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= 4:
                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 <= block.timestamp:
                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 / 1000 > 0:
                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                            mem[32] = 1
                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                revert with 'NH{q', 50
                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496
                            mem[0] = sha3(address(msg.sender), 1)
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(address(msg.sender), 1)
                                stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                            if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -(stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 / 1000) - 1:
                                revert with 'NH{q', 17
            else:
                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < block.timestamp:
                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240:
                                revert with 'NH{q', 17
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 >= 24 * 3600:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -(stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -((stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                    else:
                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 < block.timestamp:
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if block.timestamp < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240:
                                revert with 'NH{q', 17
                            if block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 >= 24 * 3600:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if block.timestamp > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = block.timestamp
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if block.timestamp >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -(stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (block.timestamp * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if block.timestamp > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = block.timestamp
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if block.timestamp >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -((block.timestamp * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74240 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                else:
                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < block.timestamp:
                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                                revert with 'NH{q', 17
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 >= 24 * 3600:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -(stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -((stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                    else:
                        if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 < block.timestamp:
                            if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_73728 >= plans.length:
                                revert with 'NH{q', 50
                            mem[0] = 2
                            if block.timestamp < stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264:
                                revert with 'NH{q', 17
                            if block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 >= 24 * 3600:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 > 0:
                                    if block.timestamp > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = block.timestamp
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if block.timestamp >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -(stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 * block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 / 24 * 3600 / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0) - 1:
                                            revert with 'NH{q', 17
                            else:
                                if stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008 and block.timestamp - stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 > -1 / stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008:
                                    revert with 'NH{q', 17
                                if not plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0:
                                    revert with 'NH{q', 18
                                if (block.timestamp * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600 > 0:
                                    if block.timestamp > 0:
                                        mem[32] = 1
                                        if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                            revert with 'NH{q', 50
                                        stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 = block.timestamp
                                        mem[0] = sha3(address(msg.sender), 1)
                                        if block.timestamp >= stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_74496:
                                            if _71 + (32 * users[address(msg.sender)].field_0) + 32 >= users[address(msg.sender)].field_0:
                                                revert with 'NH{q', 50
                                            mem[0] = sha3(address(msg.sender), 1)
                                            stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75776 = 1
                                        if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) > -((block.timestamp * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) - (stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75264 * stor[(9 * _71) + (9 * 32 * users[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'users', 1))].field_75008) / plans[stor[(9 * _71) + (9 * 32 * stor1[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor1', 1))].field_73728].field_0 / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
        if _71 + (32 * users[address(msg.sender)].field_0) + 32 == -1:
            revert with 'NH{q', 17
        t = _71 + (32 * users[address(msg.sender)].field_0) + 33
        continue 
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) and 30 > -1 / users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000):
        revert with 'NH{q', 17
    call stor3 with:
       value (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) and 40 > -1 / users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000):
        revert with 'NH{q', 17
    call stor6 with:
       value (40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) and 30 > -1 / users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000):
        revert with 'NH{q', 17
    call stor9 with:
       value (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) and 100 > -1 / users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000):
        revert with 'NH{q', 17
    call stor4.length with:
       value (100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) < (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - ((30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) < (40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - ((30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) < (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) < (100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000:
        revert with 'NH{q', 17
    if users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) <= eth.balance(this.address):
        if users[address(msg.sender)].field_2304 > -users[address(msg.sender)].field_1280 + (200 * users[address(msg.sender)].field_1280 / 1000) + (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) + ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) + ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000)
        if totalClaimed > -users[address(msg.sender)].field_1280 + (200 * users[address(msg.sender)].field_1280 / 1000) + (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) + ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) + ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - 1:
            revert with 'NH{q', 17
        totalClaimed = totalClaimed + users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000)
        call msg.sender with:
           value users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(msg.sender, users[address(msg.sender)].field_1280 - (200 * users[address(msg.sender)].field_1280 / 1000) - (2 * (30 * users[address(msg.sender)].field_1280) - (30 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((40 * users[address(msg.sender)].field_1280) - (40 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000) - ((100 * users[address(msg.sender)].field_1280) - (100 * 200 * users[address(msg.sender)].field_1280 / 1000) / 1000));
    else:
        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        users[address(msg.sender)].field_2304 += eth.balance(this.address)
        if totalClaimed > -eth.balance(this.address) - 1:
            revert with 'NH{q', 17
        totalClaimed += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(msg.sender, eth.balance(this.address));
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 1
    mem[64] = (32 * users[address(msg.sender)].field_0) + 384
    mem[352] = users[address(msg.sender)].field_0
    s = 384
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        _9 = mem[64]
        mem[64] = mem[64] + 320
        mem[_9] = users[address(msg.sender)][idx].field_0
        mem[_9 + 32] = users[address(msg.sender)][idx].field_256
        mem[_9 + 64] = users[address(msg.sender)][idx].field_512
        mem[_9 + 96] = users[address(msg.sender)][idx].field_768
        mem[_9 + 128] = users[address(msg.sender)][idx].field_1024
        mem[_9 + 160] = users[address(msg.sender)][idx].field_1280
        mem[_9 + 192] = users[address(msg.sender)][idx].field_1536
        mem[_9 + 224] = users[address(msg.sender)][idx].field_1792
        mem[_9 + 256] = bool(users[address(msg.sender)][idx].field_2048)
        mem[_9 + 288] = bool(users[address(msg.sender)][idx].field_2056)
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    mem[96] = 352
    _7 = mem[64]
    mem[64] = mem[64] + 96
    mem[_7] = users[address(msg.sender)].field_256
    idx = _7
    s = 1
    while _7 + 96 > idx + 32:
        mem[idx + 32] = users[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[128] = _7
    mem[160] = users[address(msg.sender)].field_1024
    mem[192] = users[address(msg.sender)].field_1280
    mem[224] = users[address(msg.sender)].field_1536
    mem[256] = users[address(msg.sender)].field_1792
    mem[288] = users[address(msg.sender)].field_2048
    mem[320] = users[address(msg.sender)].field_2304
    if arg1 >= mem[mem[96]]:
        revert with 'NH{q', 50
    if mem[mem[(32 * arg1) + mem[96] + 32] + 192] >= mem[mem[(32 * arg1) + mem[96] + 32] + 96]:
        revert with 0, 'Deposit is deceased'
    mem[0] = msg.sender
    mem[32] = 1
    _17 = mem[64]
    mem[64] = mem[64] + 256
    _18 = mem[64]
    mem[64] = mem[64] + (32 * users[address(msg.sender)].field_0) + 32
    mem[_18] = users[address(msg.sender)].field_0
    s = _18 + 32
    idx = 0
    while idx < users[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 1)
        _25 = mem[64]
        mem[64] = mem[64] + 320
        mem[_25] = users[address(msg.sender)][idx].field_0
        mem[_25 + 32] = users[address(msg.sender)][idx].field_256
        mem[_25 + 64] = users[address(msg.sender)][idx].field_512
        mem[_25 + 96] = users[address(msg.sender)][idx].field_768
        mem[_25 + 128] = users[address(msg.sender)][idx].field_1024
        mem[_25 + 160] = users[address(msg.sender)][idx].field_1280
        mem[_25 + 192] = users[address(msg.sender)][idx].field_1536
        mem[_25 + 224] = users[address(msg.sender)][idx].field_1792
        mem[_25 + 256] = bool(users[address(msg.sender)][idx].field_2048)
        mem[_25 + 288] = bool(users[address(msg.sender)][idx].field_2056)
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    mem[_17] = _18
    _23 = mem[64]
    mem[64] = mem[64] + 96
    mem[_23] = users[address(msg.sender)].field_256
    idx = _23
    s = 1
    while _23 + 96 > idx + 32:
        mem[idx + 32] = users[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[_17 + 32] = _23
    mem[_17 + 64] = users[address(msg.sender)].field_1024
    mem[_17 + 96] = users[address(msg.sender)].field_1280
    mem[_17 + 128] = users[address(msg.sender)].field_1536
    mem[_17 + 160] = users[address(msg.sender)].field_1792
    mem[_17 + 192] = users[address(msg.sender)].field_2048
    mem[_17 + 224] = users[address(msg.sender)].field_2304
    if arg1 >= mem[mem[_17]]:
        revert with 'NH{q', 50
    if mem[mem[(32 * arg1) + mem[_17] + 32] + 192] >= mem[mem[(32 * arg1) + mem[_17] + 32] + 96]:
        revert with 0, 'BullStake::Nothing to withdraw'
    if arg1 >= users[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    if users[address(msg.sender)][arg1].field_0 >= 4:
        if users[address(msg.sender)][arg1].field_768 > block.timestamp:
            revert with 0, 'BullStake::Nothing to withdraw'
        if users[address(msg.sender)][arg1].field_1280 <= 0:
            revert with 0, 'BullStake::Nothing to withdraw'
        if users[address(msg.sender)][arg1].field_768 <= 0:
            revert with 0, 'BullStake::Not able to withdraw'
        if arg1 >= users[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
        if arg1 >= users[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if users[address(msg.sender)][arg1].field_768 >= users[address(msg.sender)][arg1].field_768:
            users[address(msg.sender)][arg1].field_2048 = 1
        if users[address(msg.sender)][arg1].field_0 >= plans.length:
            revert with 'NH{q', 50
        if users[address(msg.sender)][arg1].field_1280 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / users[address(msg.sender)][arg1].field_1280:
            revert with 'NH{q', 17
        call stor3 with:
           value users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if users[address(msg.sender)][arg1].field_1280 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / users[address(msg.sender)][arg1].field_1280:
            revert with 'NH{q', 17
        call stor6 with:
           value users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if users[address(msg.sender)][arg1].field_1280 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / users[address(msg.sender)][arg1].field_1280:
            revert with 'NH{q', 17
        call stor9 with:
           value users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if users[address(msg.sender)][arg1].field_1280 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / users[address(msg.sender)][arg1].field_1280:
            revert with 'NH{q', 17
        call stor4.length with:
           value users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if users[address(msg.sender)][arg1].field_1280 < users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
            revert with 'NH{q', 17
        if users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
            revert with 'NH{q', 17
        if users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
            revert with 'NH{q', 17
        if users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
            revert with 'NH{q', 17
        if users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
            if users[address(msg.sender)].field_2304 > -users[address(msg.sender)][arg1].field_1280 + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                revert with 'NH{q', 17
            users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
            if totalClaimed > -users[address(msg.sender)][arg1].field_1280 + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                revert with 'NH{q', 17
            totalClaimed = totalClaimed + users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
            call msg.sender with:
               value users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, users[address(msg.sender)][arg1].field_1280 - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
        else:
            if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                revert with 'NH{q', 17
            users[address(msg.sender)].field_2304 += eth.balance(this.address)
            if totalClaimed > -eth.balance(this.address) - 1:
                revert with 'NH{q', 17
            totalClaimed += eth.balance(this.address)
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, eth.balance(this.address));
    else:
        if users[address(msg.sender)][arg1].field_512 > users[address(msg.sender)][arg1].field_1536:
            if users[address(msg.sender)][arg1].field_768 < block.timestamp:
                if users[address(msg.sender)][arg1].field_512 >= users[address(msg.sender)][arg1].field_768:
                    revert with 0, 'BullStake::Nothing to withdraw'
                if users[address(msg.sender)][arg1].field_0 >= plans.length:
                    revert with 'NH{q', 50
                if users[address(msg.sender)][arg1].field_768 < users[address(msg.sender)][arg1].field_512:
                    revert with 'NH{q', 17
                if users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 >= 24 * 3600:
                    if users[address(msg.sender)][arg1].field_1280 and users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if users[address(msg.sender)][arg1].field_768 <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_768 >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -(users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -(users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
                else:
                    if users[address(msg.sender)][arg1].field_1280 and users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_512 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if users[address(msg.sender)][arg1].field_768 <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_768 >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
            else:
                if users[address(msg.sender)][arg1].field_512 >= block.timestamp:
                    revert with 0, 'BullStake::Nothing to withdraw'
                if users[address(msg.sender)][arg1].field_0 >= plans.length:
                    revert with 'NH{q', 50
                if block.timestamp < users[address(msg.sender)][arg1].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - users[address(msg.sender)][arg1].field_512 >= 24 * 3600:
                    if users[address(msg.sender)][arg1].field_1280 and block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if block.timestamp <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = block.timestamp
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if block.timestamp >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -(users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -(users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_512 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
                else:
                    if users[address(msg.sender)][arg1].field_1280 and block.timestamp - users[address(msg.sender)][arg1].field_512 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if block.timestamp <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = block.timestamp
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if block.timestamp >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_512 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
        else:
            if users[address(msg.sender)][arg1].field_768 < block.timestamp:
                if users[address(msg.sender)][arg1].field_1536 >= users[address(msg.sender)][arg1].field_768:
                    revert with 0, 'BullStake::Nothing to withdraw'
                if users[address(msg.sender)][arg1].field_0 >= plans.length:
                    revert with 'NH{q', 50
                if users[address(msg.sender)][arg1].field_768 < users[address(msg.sender)][arg1].field_1536:
                    revert with 'NH{q', 17
                if users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 >= 24 * 3600:
                    if users[address(msg.sender)][arg1].field_1280 and users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if users[address(msg.sender)][arg1].field_768 <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_768 >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -(users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -(users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
                else:
                    if users[address(msg.sender)][arg1].field_1280 and users[address(msg.sender)][arg1].field_768 - users[address(msg.sender)][arg1].field_1536 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if users[address(msg.sender)][arg1].field_768 <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = users[address(msg.sender)][arg1].field_768
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_768 >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < (users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((users[address(msg.sender)][arg1].field_768 * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
            else:
                if users[address(msg.sender)][arg1].field_1536 >= block.timestamp:
                    revert with 0, 'BullStake::Nothing to withdraw'
                if users[address(msg.sender)][arg1].field_0 >= plans.length:
                    revert with 'NH{q', 50
                if block.timestamp < users[address(msg.sender)][arg1].field_1536:
                    revert with 'NH{q', 17
                if block.timestamp - users[address(msg.sender)][arg1].field_1536 >= 24 * 3600:
                    if users[address(msg.sender)][arg1].field_1280 and block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if block.timestamp <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = block.timestamp
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if block.timestamp >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -(users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -(users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - (users[address(msg.sender)][arg1].field_1280 * block.timestamp - users[address(msg.sender)][arg1].field_1536 / 24 * 3600 / plans[stor1[address(msg.sender)][arg1].field_0].field_0 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
                else:
                    if users[address(msg.sender)][arg1].field_1280 and block.timestamp - users[address(msg.sender)][arg1].field_1536 > -1 / users[address(msg.sender)][arg1].field_1280:
                        revert with 'NH{q', 17
                    if not plans[stor1[address(msg.sender)][arg1].field_0].field_0:
                        revert with 'NH{q', 18
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 <= 0:
                        revert with 0, 'BullStake::Nothing to withdraw'
                    if block.timestamp <= 0:
                        revert with 0, 'BullStake::Not able to withdraw'
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    users[address(msg.sender)][arg1].field_1536 = block.timestamp
                    if arg1 >= users[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    if block.timestamp >= users[address(msg.sender)][arg1].field_768:
                        users[address(msg.sender)][arg1].field_2048 = 1
                    if users[address(msg.sender)][arg1].field_0 >= plans.length:
                        revert with 'NH{q', 50
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_512 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor3 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_768 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor6 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1024 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor9 with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 and plans[stor1[address(msg.sender)][arg1].field_0].field_1280 > -1 / (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600:
                        revert with 'NH{q', 17
                    call stor4.length with:
                       value (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) < (block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000:
                        revert with 'NH{q', 17
                    if ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) <= eth.balance(this.address):
                        if users[address(msg.sender)].field_2304 > -((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 = users[address(msg.sender)].field_2304 + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        if totalClaimed > -((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) - 1:
                            revert with 'NH{q', 17
                        totalClaimed = totalClaimed + ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000)
                        call msg.sender with:
                           value ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_512 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_768 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1024 / 1000) - ((block.timestamp * users[address(msg.sender)][arg1].field_1280) - (users[address(msg.sender)][arg1].field_1536 * users[address(msg.sender)][arg1].field_1280) / plans[stor1[address(msg.sender)][arg1].field_0].field_0 / 24 * 3600 * plans[stor1[address(msg.sender)][arg1].field_0].field_1280 / 1000));
                    else:
                        if users[address(msg.sender)].field_2304 > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        users[address(msg.sender)].field_2304 += eth.balance(this.address)
                        if totalClaimed > -eth.balance(this.address) - 1:
                            revert with 'NH{q', 17
                        totalClaimed += eth.balance(this.address)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, eth.balance(this.address));
}



}
