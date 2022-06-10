contract main {




// =====================  Runtime code  =====================


#
#  - cancel(uint256 arg1)
#  - queue(uint256 arg1)
#  - execute(uint256 arg1)
#
const MAX_OPERATIONS = 32

const MAXIMUM_DELAY = (48 * 24 * 3600)

const MINIMUM_DELAY = 60

const GRACE_PERIOD = (72 * 24 * 3600)


address adminAddress;
uint256 stor0;
array of uint256 stor1;
uint256 delay;
mapping of uint8 stor3;
uint256 proposalCount;
array of struct proposals;

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(proposals[arg1].field_0), 
           address(proposals[arg1].field_256),
           uint256(proposals[arg1].field_512),
           bool(uint8(proposals[arg1].field_1536))
}

function pendingAdmin() payable {
    return address(stor1.length)
}

function delay() payable {
    return delay
}

function proposalCount() payable {
    return proposalCount
}

function queuedTransactions(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function admin() payable {
    return address(adminAddress)
}

function _fallback() payable {
    revert
}

function setPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0, 'Caller is not the admin'
    address(stor1.length) = arg1
    emit NewPendingAdmin(arg1);
}

function acceptAdmin() payable {
    if address(stor1.length) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::acceptAdmin: Call must come from pendingAdmin.'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    address(stor1.length) = 0
    emit NewAdmin(msg.sender);
}

function pauseCapital(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::pauseCapital: Call must come from admin.'
    require ext_code.size(arg1)
    call arg1.0x3dbc911f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpauseCapital(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::unpauseCapital: Call must come from admin.'
    require ext_code.size(arg1)
    call arg1.0x94828ffd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Timelock::setDelay: Call must come from Timelock.'
    if arg1 < 60:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must exceed minimum delay.'
    if arg1 > 48 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Timelock::setDelay: Delay must not exceed maximum delay.'
    delay = arg1
    emit NewDelay(arg1);
}

function state(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governor::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Governor::state: invalid proposal id'
    if uint8(proposals[arg1].field_1536):
        return 3
    if not uint256(proposals[arg1].field_512):
        return 0
    if uint256(proposals[arg1].field_512) > -259201:
        revert with 0, 17
    if block.timestamp < uint256(proposals[arg1].field_512) + (72 * 24 * 3600):
        return 1
    return 2
}

function getActions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    mem[96] = uint256(proposals[arg1].field_768)
    if not uint256(proposals[arg1].field_768):
        mem[64] = (32 * uint256(proposals[arg1].field_768)) + (32 * uint256(proposals[arg1].field_1024)) + 160
        mem[(32 * uint256(proposals[arg1].field_768)) + 128] = uint256(proposals[arg1].field_1024)
        s = (32 * uint256(proposals[arg1].field_768)) + 160
        idx = 0
        while idx < uint256(proposals[arg1].field_1024):
            mem[0] = sha3(arg1, 5) + 4
            if bool(proposals[arg1][idx + 4].field_0):
                if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _36 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5) + 32
                mem[_36] = uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5
                if bool(proposals[arg1][idx + 4].field_0):
                    if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(proposals[arg1][idx + 4].field_0)):
                        if 31 >= uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5:
                            mem[_36 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                            mem[_36 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                            t = _36 + 32
                            u = sha3(mem[0])
                            while _36 + (uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _36
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                    revert with 0, 34
                if not proposals[arg1][idx + 4].field_1 % 128:
                    mem[s] = _36
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= proposals[arg1][idx + 4].field_1 % 128:
                    mem[_36 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                    mem[s] = _36
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                mem[_36 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                t = _36 + 32
                u = sha3(mem[0])
                while _36 + proposals[arg1][u + 4].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _36
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                revert with 0, 34
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].field_1 % 128) + 32
            mem[_38] = proposals[arg1][idx + 4].field_1 % 128
            if bool(proposals[arg1][idx + 4].field_0):
                if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(proposals[arg1][idx + 4].field_0)):
                    mem[s] = _38
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5:
                    mem[_38 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                    mem[s] = _38
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                mem[_38 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                t = _38 + 32
                u = sha3(mem[0])
                while _38 + (uint255(uint256(proposals[arg1][u + 4].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _38
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                revert with 0, 34
            if proposals[arg1][idx + 4].field_1 % 128:
                if 31 >= proposals[arg1][idx + 4].field_1 % 128:
                    mem[_38 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                    mem[_38 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                    t = _38 + 32
                    u = sha3(mem[0])
                    while _38 + proposals[arg1][idx + 4].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _38
            s = s + 32
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[64] = mem[64] + (32 * uint256(proposals[arg1].field_1280)) + 32
        mem[_32] = uint256(proposals[arg1].field_1280)
        s = _32 + 32
        idx = 0
        while idx < uint256(proposals[arg1].field_1280):
            mem[0] = sha3(arg1, 5) + 5
            if bool(proposals[arg1][idx + 5].field_0):
                if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _66 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5) + 32
                mem[_66] = uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5
                if bool(proposals[arg1][idx + 5].field_0):
                    if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(proposals[arg1][idx + 5].field_0)):
                        if 31 >= uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5:
                            mem[_66 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                            mem[_66 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                            t = _66 + 32
                            u = sha3(mem[0])
                            while _66 + (uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _66
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not proposals[arg1][idx + 5].field_1 % 128:
                    mem[s] = _66
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= proposals[arg1][idx + 5].field_1 % 128:
                    mem[_66 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                    mem[s] = _66
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                mem[_66 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + proposals[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _66
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].field_1 % 128) + 32
            mem[_69] = proposals[arg1][idx + 5].field_1 % 128
            if bool(proposals[arg1][idx + 5].field_0):
                if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(proposals[arg1][idx + 5].field_0)):
                    mem[s] = _69
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5:
                    mem[_69 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                    mem[s] = _69
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                mem[_69 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                t = _69 + 32
                u = sha3(mem[0])
                while _69 + (uint255(uint256(proposals[arg1][u + 5].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _69
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if proposals[arg1][idx + 5].field_1 % 128:
                if 31 >= proposals[arg1][idx + 5].field_1 % 128:
                    mem[_69 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                    mem[_69 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                    t = _69 + 32
                    u = sha3(mem[0])
                    while _69 + proposals[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _69
            s = s + 32
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 96
        _64 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _64:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _64) + 128
        _109 = mem[(32 * uint256(proposals[arg1].field_768)) + 128]
        mem[_61 + (32 * _64) + 128] = mem[(32 * uint256(proposals[arg1].field_768)) + 128]
        idx = 0
        s = (32 * uint256(proposals[arg1].field_768)) + 160
        t = _61 + (32 * _64) + (32 * _109) + 160
        u = _61 + (32 * _64) + 160
        while idx < _109:
            mem[u] = t + -_61 + -(32 * _64) - 160
            _143 = mem[s]
            _145 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _145:
                mem[v + t + 32] = mem[v + _143 + 32]
                v = v + 32
                continue 
            if ceil32(_145) > _145:
                mem[_145 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_145) + t + 32
            u = u + 32
            continue 
        mem[_61 + 64] = t - _61
        _147 = mem[_32]
        mem[t] = mem[_32]
        idx = 0
        s = _32 + 32
        u = t + (32 * _147) + 32
        v = t + 32
        while idx < _147:
            mem[v] = u + -t - 32
            _170 = mem[s]
            _173 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _173:
                mem[t + u + 32] = mem[t + _170 + 32]
                t = t + 32
                continue 
            if ceil32(_173) > _173:
                mem[_173 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_173) + u + 32
            v = v + 32
            continue 
    else:
        mem[0] = sha3(arg1, 5) + 3
        mem[128] = address(proposals[arg1][3].field_0)
        idx = 128
        s = 0
        while (32 * uint256(proposals[arg1].field_768)) + 96 > idx:
            mem[idx + 32] = address(proposals[arg1][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * uint256(proposals[arg1].field_768)) + (32 * uint256(proposals[arg1].field_1024)) + 160
        mem[(32 * uint256(proposals[arg1].field_768)) + 128] = uint256(proposals[arg1].field_1024)
        s = (32 * uint256(proposals[arg1].field_768)) + 160
        idx = 0
        while idx < uint256(proposals[arg1].field_1024):
            mem[0] = sha3(arg1, 5) + 4
            if bool(proposals[arg1][idx + 4].field_0):
                if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _113 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5) + 32
                mem[_113] = uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5
                if bool(proposals[arg1][idx + 4].field_0):
                    if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(proposals[arg1][idx + 4].field_0)):
                        if 31 >= uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5:
                            mem[_113 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                            mem[_113 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                            t = _113 + 32
                            u = sha3(mem[0])
                            while _113 + (uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _113
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                    revert with 0, 34
                if not proposals[arg1][idx + 4].field_1 % 128:
                    mem[s] = _113
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= proposals[arg1][idx + 4].field_1 % 128:
                    mem[_113 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                    mem[s] = _113
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                mem[_113 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                t = _113 + 32
                u = sha3(mem[0])
                while _113 + proposals[arg1][u + 4].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _113
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                revert with 0, 34
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(proposals[arg1][idx + 4].field_1 % 128) + 32
            mem[_116] = proposals[arg1][idx + 4].field_1 % 128
            if bool(proposals[arg1][idx + 4].field_0):
                if bool(proposals[arg1][idx + 4].field_0) == uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(proposals[arg1][idx + 4].field_0)):
                    mem[s] = _116
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(proposals[arg1][idx + 4].field_0)) * 0.5:
                    mem[_116 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                    mem[s] = _116
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                mem[_116 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                t = _116 + 32
                u = sha3(mem[0])
                while _116 + (uint255(uint256(proposals[arg1][u + 4].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _116
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 4].field_0) == proposals[arg1][idx + 4].field_1 % 128 < 32:
                revert with 0, 34
            if proposals[arg1][idx + 4].field_1 % 128:
                if 31 >= proposals[arg1][idx + 4].field_1 % 128:
                    mem[_116 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 4].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 5) + 4) + idx
                    mem[_116 + 32] = uint256(proposals[arg1][idx + 4].field_0)
                    t = _116 + 32
                    u = sha3(mem[0])
                    while _116 + proposals[arg1][idx + 4].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _116
            s = s + 32
            idx = idx + 1
            continue 
        _107 = mem[64]
        mem[64] = mem[64] + (32 * uint256(proposals[arg1].field_1280)) + 32
        mem[_107] = uint256(proposals[arg1].field_1280)
        s = _107 + 32
        idx = 0
        while idx < uint256(proposals[arg1].field_1280):
            mem[0] = sha3(arg1, 5) + 5
            if bool(proposals[arg1][idx + 5].field_0):
                if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5) + 32
                mem[_151] = uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5
                if bool(proposals[arg1][idx + 5].field_0):
                    if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(proposals[arg1][idx + 5].field_0)):
                        if 31 >= uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5:
                            mem[_151 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                        else:
                            mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                            mem[_151 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                            t = _151 + 32
                            u = sha3(mem[0])
                            while _151 + (uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5) > t:
                                mem[t + 32] = uint256(stor1[u])
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[s] = _151
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                    revert with 0, 34
                if not proposals[arg1][idx + 5].field_1 % 128:
                    mem[s] = _151
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= proposals[arg1][idx + 5].field_1 % 128:
                    mem[_151 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                    mem[s] = _151
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                mem[_151 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                t = _151 + 32
                u = sha3(mem[0])
                while _151 + proposals[arg1][u + 5].field_1 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _151
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(proposals[arg1][idx + 5].field_1 % 128) + 32
            mem[_154] = proposals[arg1][idx + 5].field_1 % 128
            if bool(proposals[arg1][idx + 5].field_0):
                if bool(proposals[arg1][idx + 5].field_0) == uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(proposals[arg1][idx + 5].field_0)):
                    mem[s] = _154
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(uint256(proposals[arg1][idx + 5].field_0)) * 0.5:
                    mem[_154 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                    mem[s] = _154
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                mem[_154 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                t = _154 + 32
                u = sha3(mem[0])
                while _154 + (uint255(uint256(proposals[arg1][u + 5].field_0)) * 0.5) > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[t] = _154
                t = t + 32
                u = u + 1
                continue 
            if bool(proposals[arg1][idx + 5].field_0) == proposals[arg1][idx + 5].field_1 % 128 < 32:
                revert with 0, 34
            if proposals[arg1][idx + 5].field_1 % 128:
                if 31 >= proposals[arg1][idx + 5].field_1 % 128:
                    mem[_154 + 32] = 256 * Mask(248, 0, proposals[arg1][idx + 5].field_8)
                else:
                    mem[0] = sha3(sha3(arg1, 5) + 5) + idx
                    mem[_154 + 32] = uint256(proposals[arg1][idx + 5].field_0)
                    t = _154 + 32
                    u = sha3(mem[0])
                    while _154 + proposals[arg1][idx + 5].field_1 % 128 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
            mem[s] = _154
            s = s + 32
            idx = idx + 1
            continue 
        _146 = mem[64]
        mem[mem[64]] = 96
        _148 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _148:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _148) + 128
        _175 = mem[(32 * uint256(proposals[arg1].field_768)) + 128]
        mem[_146 + (32 * _148) + 128] = mem[(32 * uint256(proposals[arg1].field_768)) + 128]
        idx = 0
        s = (32 * uint256(proposals[arg1].field_768)) + 160
        t = _146 + (32 * _148) + (32 * _175) + 160
        u = _146 + (32 * _148) + 160
        while idx < _175:
            mem[u] = t + -_146 + -(32 * _148) - 160
            _186 = mem[s]
            _187 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _187:
                mem[v + t + 32] = mem[v + _186 + 32]
                v = v + 32
                continue 
            if ceil32(_187) > _187:
                mem[_187 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_187) + t + 32
            u = u + 32
            continue 
        mem[_146 + 64] = t - _146
        _188 = mem[_107]
        mem[t] = mem[_107]
        idx = 0
        s = _107 + 32
        u = t + (32 * _188) + 32
        v = t + 32
        while idx < _188:
            mem[v] = u + -t - 32
            _194 = mem[s]
            _196 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _196:
                mem[t + u + 32] = mem[t + _194 + 32]
                t = t + 32
                continue 
            if ceil32(_196) > _196:
                mem[_196 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_196) + u + 32
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function propose(address[] arg1, string[] arg2, bytes[] arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _607 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_607] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_607 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_607 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _607
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    _606 = mem[64]
    if mem[64] + ceil32(32 * arg3.length) + 1 < mem[64] or mem[64] + ceil32(32 * arg3.length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * arg3.length) + 1
    mem[_606] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = _606 + 32
    while idx < arg3.length:
        require cd[s] <= test266151307()
        require calldata.size > arg3 + cd[s] + 67
        if cd[(arg3 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _907 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1
        mem[_907] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_907 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_907 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _907
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    _908 = mem[64]
    if mem[64] + ceil32(ceil32(arg4.length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(arg4.length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(arg4.length)) + 1
    mem[_908] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[_908 + 32 len arg4.length] = arg4[all]
    mem[_908 + arg4.length + 32] = 0
    if mem[96] != mem[ceil32(32 * arg1.length) + 97]:
        revert with 0, 'Governor::propose: proposal function information arity mismatch'
    if mem[96] != mem[_606]:
        revert with 0, 'Governor::propose: proposal function information arity mismatch'
    if not mem[96]:
        revert with 0, 'Governor::propose: must provide actions'
    if mem[96] > 32:
        revert with 0, 'Governor::propose: too many actions'
    if proposalCount == -1:
        revert with 0, 17
    proposalCount++
    _923 = mem[64]
    mem[64] = mem[64] + 224
    mem[_923] = proposalCount
    mem[_923 + 32] = msg.sender
    mem[_923 + 64] = 0
    mem[_923 + 96] = 96
    mem[_923 + 128] = ceil32(32 * arg1.length) + 97
    mem[_923 + 160] = _606
    mem[_923 + 192] = 0
    mem[32] = 5
    uint256(proposals[stor4].field_0) = proposalCount
    address(proposals[stor4].field_256) = msg.sender
    uint256(proposals[stor4].field_512) = 0
    uint256(proposals[stor4].field_768) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(proposals[stor4].field_768) > idx:
            uint256(proposals[stor4][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
        uint256(proposals[stor4].field_1024) = mem[ceil32(32 * arg1.length) + 97]
        mem[0] = sha3(proposalCount, 5) + 4
        if not mem[ceil32(32 * arg1.length) + 97]:
            idx = 0
            while sha3(sha3(proposalCount, 5) + 4) + uint256(proposals[stor4].field_1024) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _1484 = mem[_606]
            uint256(proposals[stor4].field_1280) = mem[_606]
            mem[0] = sha3(proposalCount, 5) + 5
            if not _1484:
                idx = 0
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _1760 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _1767 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2018 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2018) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2018:
                    mem[u] = t + -_1760 + -(32 * _1767) - 256
                    _2236 = mem[s]
                    _2246 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2246:
                        mem[v + t + 32] = mem[v + _2236 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2246) > _2246:
                        mem[_2246 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2246) + t + 32
                    u = u + 32
                    continue 
                mem[_1760 + 128] = t - _1760
                _2247 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2247) + 32
                v = t + 32
                while idx < _2247:
                    mem[v] = u + -t - 32
                    _2422 = mem[s]
                    _2432 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2432:
                        mem[t + u + 32] = mem[t + _2422 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2432) > _2432:
                        mem[_2432 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2432) + u + 32
                    v = v + 32
                    continue 
                mem[_1760 + 160] = u - _1760
                _2436 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2436)] = mem[_908 + 32 len ceil32(_2436)]
                var109001 = ceil32(_2436)
                if ceil32(_2436) > _2436:
                    mem[_2436 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2436) + u + -mem[64] + 32],
            else:
                s = 0
                idx = _606 + 32
                while _606 + (32 * _1484) + 32 > idx:
                    _1752 = mem[idx]
                    _1753 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _1753:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1753) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1752 + 32
                            while _1752 + _1753 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1753 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _1753:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1753) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _1752 + 32
                            while _1752 + _1753 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1753 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2021 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2032 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2248 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2248) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2248:
                    mem[u] = t + -_2021 + -(32 * _2032) - 256
                    _2424 = mem[s]
                    _2433 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2433:
                        mem[v + t + 32] = mem[v + _2424 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2433) > _2433:
                        mem[_2433 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2433) + t + 32
                    u = u + 32
                    continue 
                mem[_2021 + 128] = t - _2021
                _2437 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2437) + 32
                v = t + 32
                while idx < _2437:
                    mem[v] = u + -t - 32
                    _2573 = mem[s]
                    _2583 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2583:
                        mem[t + u + 32] = mem[t + _2573 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2583) > _2583:
                        mem[_2583 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2583) + u + 32
                    v = v + 32
                    continue 
                mem[_2021 + 160] = u - _2021
                _2589 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2589)] = mem[_908 + 32 len ceil32(_2589)]
                var112001 = ceil32(_2589)
                if ceil32(_2589) > _2589:
                    mem[_2589 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2589) + u + -mem[64] + 32],
        else:
            s = 0
            idx = ceil32(32 * arg1.length) + 129
            while ceil32(32 * arg1.length) + (32 * mem[ceil32(32 * arg1.length) + 97]) + 129 > idx:
                _1481 = mem[idx]
                _1482 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _1482:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1482) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _1481 + 32
                        while _1481 + _1482 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1482 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _1482:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1482) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _1481 + 32
                        while _1481 + _1482 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1482 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(proposalCount, 5) + 4) + uint256(proposals[stor4].field_1024) > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _1762 = mem[_606]
            uint256(proposals[stor4].field_1280) = mem[_606]
            mem[0] = sha3(proposalCount, 5) + 5
            if not _1762:
                idx = 0
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2024 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2033 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2249 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2249) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2249:
                    mem[u] = t + -_2024 + -(32 * _2033) - 256
                    _2425 = mem[s]
                    _2434 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2434:
                        mem[v + t + 32] = mem[v + _2425 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2434) > _2434:
                        mem[_2434 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2434) + t + 32
                    u = u + 32
                    continue 
                mem[_2024 + 128] = t - _2024
                _2438 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2438) + 32
                v = t + 32
                while idx < _2438:
                    mem[v] = u + -t - 32
                    _2575 = mem[s]
                    _2584 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2584:
                        mem[t + u + 32] = mem[t + _2575 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2584) > _2584:
                        mem[_2584 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2584) + u + 32
                    v = v + 32
                    continue 
                mem[_2024 + 160] = u - _2024
                _2590 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2590)] = mem[_908 + 32 len ceil32(_2590)]
                var112001 = ceil32(_2590)
                if ceil32(_2590) > _2590:
                    mem[_2590 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2590) + u + -mem[64] + 32],
            else:
                s = 0
                idx = _606 + 32
                while _606 + (32 * _1762) + 32 > idx:
                    _2012 = mem[idx]
                    _2013 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2013:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2013) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2012 + 32
                            while _2012 + _2013 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2013 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2013:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2013) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2012 + 32
                            while _2012 + _2013 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2013 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2252 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2264 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2439 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2439) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2439:
                    mem[u] = t + -_2252 + -(32 * _2264) - 256
                    _2577 = mem[s]
                    _2585 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2585:
                        mem[v + t + 32] = mem[v + _2577 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2585) > _2585:
                        mem[_2585 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2585) + t + 32
                    u = u + 32
                    continue 
                mem[_2252 + 128] = t - _2252
                _2591 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2591) + 32
                v = t + 32
                while idx < _2591:
                    mem[v] = u + -t - 32
                    _2697 = mem[s]
                    _2706 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2706:
                        mem[t + u + 32] = mem[t + _2697 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2706) > _2706:
                        mem[_2706 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2706) + u + 32
                    v = v + 32
                    continue 
                mem[_2252 + 160] = u - _2252
                _2710 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2710)] = mem[_908 + 32 len ceil32(_2710)]
                if ceil32(_2710) > _2710:
                    mem[_2710 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2710) + u + -mem[64] + 32],
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            address(proposals[stor4][s + 3].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while uint256(proposals[stor4].field_768) > idx:
            uint256(proposals[stor4][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
        uint256(proposals[stor4].field_1024) = mem[ceil32(32 * arg1.length) + 97]
        mem[0] = sha3(proposalCount, 5) + 4
        if not mem[ceil32(32 * arg1.length) + 97]:
            idx = 0
            while sha3(sha3(proposalCount, 5) + 4) + uint256(proposals[stor4].field_1024) > idx + sha3(mem[0]):
                if bool(stor[idx + sha3(mem[0])].field_0):
                    if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx + sha3(mem[0])].field_0) = 0
                    if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _1764 = mem[_606]
            uint256(proposals[stor4].field_1280) = mem[_606]
            mem[0] = sha3(proposalCount, 5) + 5
            if not _1764:
                idx = 0
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2027 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2037 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2253 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2253) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2253:
                    mem[u] = t + -_2027 + -(32 * _2037) - 256
                    _2427 = mem[s]
                    _2435 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2435:
                        mem[v + t + 32] = mem[v + _2427 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2435) > _2435:
                        mem[_2435 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2435) + t + 32
                    u = u + 32
                    continue 
                mem[_2027 + 128] = t - _2027
                _2440 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2440) + 32
                v = t + 32
                while idx < _2440:
                    mem[v] = u + -t - 32
                    _2578 = mem[s]
                    _2586 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2586:
                        mem[t + u + 32] = mem[t + _2578 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2586) > _2586:
                        mem[_2586 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2586) + u + 32
                    v = v + 32
                    continue 
                mem[_2027 + 160] = u - _2027
                _2592 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2592)] = mem[_908 + 32 len ceil32(_2592)]
                var112001 = ceil32(_2592)
                if ceil32(_2592) > _2592:
                    mem[_2592 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2592) + u + -mem[64] + 32],
            else:
                s = 0
                idx = _606 + 32
                while _606 + (32 * _1764) + 32 > idx:
                    _2014 = mem[idx]
                    _2015 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2015:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2015) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2014 + 32
                            while _2014 + _2015 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2015 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2015:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2015) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2014 + 32
                            while _2014 + _2015 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2015 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2256 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2266 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2441 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2441) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2441:
                    mem[u] = t + -_2256 + -(32 * _2266) - 256
                    _2580 = mem[s]
                    _2587 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2587:
                        mem[v + t + 32] = mem[v + _2580 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2587) > _2587:
                        mem[_2587 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2587) + t + 32
                    u = u + 32
                    continue 
                mem[_2256 + 128] = t - _2256
                _2593 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2593) + 32
                v = t + 32
                while idx < _2593:
                    mem[v] = u + -t - 32
                    _2701 = mem[s]
                    _2707 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2707:
                        mem[t + u + 32] = mem[t + _2701 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2707) > _2707:
                        mem[_2707 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2707) + u + 32
                    v = v + 32
                    continue 
                mem[_2256 + 160] = u - _2256
                _2711 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2711)] = mem[_908 + 32 len ceil32(_2711)]
                if ceil32(_2711) > _2711:
                    mem[_2711 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2711) + u + -mem[64] + 32],
        else:
            s = 0
            idx = ceil32(32 * arg1.length) + 129
            while ceil32(32 * arg1.length) + (32 * mem[ceil32(32 * arg1.length) + 97]) + 129 > idx:
                _1756 = mem[idx]
                _1757 = mem[mem[idx]]
                if bool(stor[s + sha3(mem[0])].field_0):
                    if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _1757:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1757) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _1756 + 32
                        while _1756 + _1757 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1757 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                else:
                    if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = s + sha3(mem[0])
                    if not _1757:
                        uint256(stor[s + sha3(mem[0])].field_0) = 0
                        t = sha3(s + sha3(mem[0]))
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    else:
                        uint256(stor[s + sha3(mem[0])].field_0) = (2 * _1757) + 1
                        u = sha3(s + sha3(mem[0]))
                        t = _1756 + 32
                        while _1756 + _1757 + 32 > t:
                            uint256(stor[u].field_0) = mem[t]
                            u = u + 1
                            t = t + 32
                            continue 
                        t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _1757 + 31) >> 5)
                        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                s = s + 1
                idx = idx + 32
                continue 
            idx = s
            while sha3(sha3(proposalCount, 5) + 4) + uint256(proposals[stor4].field_1024) > idx:
                if bool(stor[idx].field_0):
                    if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].field_1 % 128:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
            _2029 = mem[_606]
            uint256(proposals[stor4].field_1280) = mem[_606]
            mem[0] = sha3(proposalCount, 5) + 5
            if not _2029:
                idx = 0
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx + sha3(mem[0]):
                    if bool(stor[idx + sha3(mem[0])].field_0):
                        if bool(stor[idx + sha3(mem[0])].field_0) == uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + ((uint255(uint256(stor[idx + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx + sha3(mem[0])].field_0) == stor[idx + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx + sha3(mem[0])].field_0) = 0
                        if 31 < stor[idx + sha3(mem[0])].field_1 % 128:
                            mem[0] = idx + sha3(mem[0])
                            s = sha3(idx + sha3(mem[0]))
                            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2259 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2267 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < _2267:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_2259 + 96] = (32 * _2267) + 224
                _2442 = mem[ceil32(32 * arg1.length) + 97]
                mem[_2259 + (32 * _2267) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = _2259 + (32 * _2267) + (32 * _2442) + 256
                u = _2259 + (32 * _2267) + 256
                while idx < _2442:
                    mem[u] = t + -_2259 + -(32 * _2267) - 256
                    _2581 = mem[s]
                    _2588 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2588:
                        mem[v + t + 32] = mem[v + _2581 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2588) > _2588:
                        mem[_2588 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2588) + t + 32
                    u = u + 32
                    continue 
                mem[_2259 + 128] = t - _2259
                _2594 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2594) + 32
                v = t + 32
                while idx < _2594:
                    mem[v] = u + -t - 32
                    _2703 = mem[s]
                    _2708 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2708:
                        mem[t + u + 32] = mem[t + _2703 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2708) > _2708:
                        mem[_2708 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2708) + u + 32
                    v = v + 32
                    continue 
                mem[_2259 + 160] = u - _2259
                _2712 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2712)] = mem[_908 + 32 len ceil32(_2712)]
                if ceil32(_2712) > _2712:
                    mem[_2712 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2712) + u + -mem[64] + 32],
            else:
                s = 0
                idx = _606 + 32
                while _606 + (32 * _2029) + 32 > idx:
                    _2244 = mem[idx]
                    _2245 = mem[mem[idx]]
                    if bool(stor[s + sha3(mem[0])].field_0):
                        if bool(stor[s + sha3(mem[0])].field_0) == uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2245:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2245) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2244 + 32
                            while _2244 + _2245 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2245 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + ((uint255(uint256(stor[s + sha3(mem[0])].field_0)) * 0.5) + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    else:
                        if bool(stor[s + sha3(mem[0])].field_0) == stor[s + sha3(mem[0])].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = s + sha3(mem[0])
                        if not _2245:
                            uint256(stor[s + sha3(mem[0])].field_0) = 0
                            t = sha3(s + sha3(mem[0]))
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                        else:
                            uint256(stor[s + sha3(mem[0])].field_0) = (2 * _2245) + 1
                            u = sha3(s + sha3(mem[0]))
                            t = _2244 + 32
                            while _2244 + _2245 + 32 > t:
                                uint256(stor[u].field_0) = mem[t]
                                u = u + 1
                                t = t + 32
                                continue 
                            t = sha3(s + sha3(mem[0])) + (Mask(251, 0, _2245 + 31) >> 5)
                            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].field_1 % 128 + 31 / 32) > t:
                                uint256(stor[t].field_0) = 0
                                t = t + 1
                                continue 
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = s
                while sha3(sha3(proposalCount, 5) + 5) + uint256(proposals[stor4].field_1280) > idx:
                    if bool(stor[idx].field_0):
                        if bool(stor[idx].field_0) == uint255(uint256(stor[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < uint255(uint256(stor[idx].field_0)) * 0.5:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + ((uint255(uint256(stor[idx].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor[idx].field_0) == stor[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor[idx].field_0) = 0
                        if 31 < stor[idx].field_1 % 128:
                            mem[0] = idx
                            s = sha3(idx)
                            while sha3(idx) + (stor[idx].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    idx = idx + 1
                    continue 
                uint8(proposals[stor4].field_1536) = 0
                _2445 = mem[64]
                mem[mem[64]] = mem[_923]
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = 192
                _2456 = mem[96]
                mem[mem[64] + 192] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 224
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + 224
                _2595 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[ceil32(32 * arg1.length) + 97]
                idx = 0
                s = ceil32(32 * arg1.length) + 129
                t = mem[64] + (32 * mem[96]) + (32 * _2595) + 256
                u = mem[64] + (32 * mem[96]) + 256
                while idx < _2595:
                    mem[u] = t + -_2445 + -(32 * _2456) - 256
                    _2705 = mem[s]
                    _2709 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2709:
                        mem[v + t + 32] = mem[v + _2705 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2709) > _2709:
                        mem[_2709 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2709) + t + 32
                    u = u + 32
                    continue 
                mem[_2445 + 128] = t - _2445
                _2713 = mem[_606]
                mem[t] = mem[_606]
                idx = 0
                s = _606 + 32
                u = t + (32 * _2713) + 32
                v = t + 32
                while idx < _2713:
                    mem[v] = u + -t - 32
                    _2788 = mem[s]
                    _2790 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _2790:
                        mem[t + u + 32] = mem[t + _2788 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2790) > _2790:
                        mem[_2790 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_2790) + u + 32
                    v = v + 32
                    continue 
                mem[_2445 + 160] = u - _2445
                _2791 = mem[_908]
                mem[u] = mem[_908]
                mem[u + 32 len ceil32(_2791)] = mem[_908 + 32 len ceil32(_2791)]
                if ceil32(_2791) > _2791:
                    mem[_2791 + u + 32] = 0
                emit ProposalCreated(uint256 arg1, address arg2, address[] arg3, string[] arg4, bytes[] arg5, string arg6):
                                     mem[mem[64] len ceil32(_2791) + u + -mem[64] + 32],
    mem[mem[64]] = mem[_923]
    return memory
      from mem[64]
       len 32
}



}
