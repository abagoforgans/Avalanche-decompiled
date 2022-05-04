contract main {




// =====================  Runtime code  =====================


#
#  - unlock(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address poolManagerAddress;
uint256 fee;
array of struct lpLockForUserAtIndex;
array of uint256 lpLockCountForUser;
array of uint256 normalLockCountForUser;
array of struct stor106;
mapping of uint256 stor107;
array of struct stor108;
mapping of uint256 stor109;
mapping of struct sub_e1444fd6;
array of uint256 totalLockCountForToken;
array of uint256 stor68539412096397065356586712351047378110740926828376844291700787184847249528494;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528495;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528496;
array of uint256 stor68539412096397065356586712351047378110740926828376844291700787184847249528497;
array of uint256 stor68539412096397065356586712351047378110740926828376844291700787184847249528498;
array of uint256 stor68539412096397065356586712351047378110740926828376844291700787184847249528499;

function lpLockCountForUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lpLockCountForUser[address(arg1)]
}

function allNormalTokenLockedCount() {
    return stor108.length
}

function normalLockForUserAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if normalLockCountForUser[address(arg1)] <= arg2:
        revert with 0, 'Invalid index'
    if arg2 >= normalLockCountForUser[address(arg1)]:
        revert with 0, 50
    if normalLockCountForUser[address(arg1)][arg2] >= lpLockForUserAtIndex.length:
        revert with 0, 50
    return lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_0, 
           lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_256,
           lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_512,
           lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_768,
           lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_1024,
           lpLockForUserAtIndex[stor105[address(arg1)][arg2]].field_1280
}

function getCumulativeNormalTokenLockInfoAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor108.length:
        revert with 0, 50
    return sub_e1444fd6[stor108[arg1].field_0].field_0, 
           sub_e1444fd6[stor108[arg1].field_0].field_256,
           sub_e1444fd6[stor108[arg1].field_0].field_512
}

function owner() {
    return owner
}

function getCumulativeLpTokenLockInfoAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= stor106.length:
        revert with 0, 50
    return sub_e1444fd6[stor106[arg1].field_0].field_0, 
           sub_e1444fd6[stor106[arg1].field_0].field_256,
           sub_e1444fd6[stor106[arg1].field_0].field_512
}

function allLpTokenLockedCount() {
    return stor106.length
}

function getLock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= lpLockForUserAtIndex.length:
        revert with 0, 50
    return lpLockForUserAtIndex[arg1].field_0, 
           lpLockForUserAtIndex[arg1].field_256,
           lpLockForUserAtIndex[arg1].field_512,
           lpLockForUserAtIndex[arg1].field_768,
           lpLockForUserAtIndex[arg1].field_1024,
           lpLockForUserAtIndex[arg1].field_1280
}

function poolManager() {
    return poolManagerAddress
}

function fee() {
    return fee
}

function sub_e1444fd6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e1444fd6[arg1].field_0, sub_e1444fd6[arg1].field_256, sub_e1444fd6[arg1].field_512
}

function totalLockCountForToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalLockCountForToken[address(arg1)]
}

function normalLockCountForUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return normalLockCountForUser[address(arg1)]
}

function lpLockForUserAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if lpLockCountForUser[address(arg1)] <= arg2:
        revert with 0, 'Invalid index'
    if arg2 >= lpLockCountForUser[address(arg1)]:
        revert with 0, 50
    if lpLockCountForUser[address(arg1)][arg2] >= lpLockForUserAtIndex.length:
        revert with 0, 50
    return lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_0, 
           lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_256,
           lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_512,
           lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_768,
           lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_1024,
           lpLockForUserAtIndex[stor104[address(arg1)][arg2]].field_1280
}

function getTotalLockCount() {
    return lpLockForUserAtIndex.length
}

function _fallback() payable {
    revert
}

function totalTokenLockedCount() {
    if stor106.length > !stor108.length:
        revert with 0, 17
    return (stor106.length + stor108.length)
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPoolManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolManagerAddress = arg1
}

function totalLockCountForUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if normalLockCountForUser[address(arg1)] > !lpLockCountForUser[address(arg1)]:
        revert with 0, 17
    return (normalLockCountForUser[address(arg1)] + lpLockCountForUser[address(arg1)])
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

function withdrawFee() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function allLocks() {
    mem[64] = (32 * lpLockForUserAtIndex.length) + 128
    mem[96] = lpLockForUserAtIndex.length
    s = 128
    idx = 0
    while idx < lpLockForUserAtIndex.length:
        mem[0] = 103
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = lpLockForUserAtIndex[idx].field_0
        mem[_15 + 32] = lpLockForUserAtIndex[idx].field_256
        mem[_15 + 64] = lpLockForUserAtIndex[idx].field_512
        mem[_15 + 96] = lpLockForUserAtIndex[idx].field_768
        mem[_15 + 128] = lpLockForUserAtIndex[idx].field_1024
        mem[_15 + 160] = lpLockForUserAtIndex[idx].field_1280
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _17:
        _26 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_26 + 44 len 20]
        mem[s + 64] = mem[_26 + 76 len 20]
        mem[s + 96] = mem[_26 + 96]
        mem[s + 128] = mem[_26 + 128]
        mem[s + 160] = mem[_26 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function lpLocksForUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 104
    if lpLockCountForUser[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = lpLockCountForUser[address(arg1)]
    mem[64] = (32 * lpLockCountForUser[address(arg1)]) + 128
    if not lpLockCountForUser[address(arg1)]:
        idx = 0
        while idx < lpLockCountForUser[address(arg1)]:
            mem[32] = 104
            if idx >= lpLockCountForUser[address(arg1)]:
                revert with 0, 50
            if lpLockCountForUser[address(arg1)][idx] >= lpLockForUserAtIndex.length:
                revert with 0, 50
            mem[0] = 103
            _49 = mem[64]
            mem[64] = mem[64] + 192
            mem[_49] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_0
            mem[_49 + 32] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_256
            mem[_49 + 64] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_512
            mem[_49 + 96] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_768
            mem[_49 + 128] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_1024
            mem[_49 + 160] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _49
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _37 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _37:
            _66 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_66 + 44 len 20]
            mem[s + 64] = mem[_66 + 76 len 20]
            mem[s + 96] = mem[_66 + 96]
            mem[s + 128] = mem[_66 + 128]
            mem[s + 160] = mem[_66 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _36 + (192 * _37) + -mem[64] + 64
    mem[64] = (32 * lpLockCountForUser[address(arg1)]) + 320
    mem[(32 * lpLockCountForUser[address(arg1)]) + 128] = 0
    mem[(32 * lpLockCountForUser[address(arg1)]) + 160] = 0
    mem[(32 * lpLockCountForUser[address(arg1)]) + 192] = 0
    mem[(32 * lpLockCountForUser[address(arg1)]) + 224] = 0
    mem[(32 * lpLockCountForUser[address(arg1)]) + 256] = 0
    mem[(32 * lpLockCountForUser[address(arg1)]) + 288] = 0
    mem[var18001] = (32 * lpLockCountForUser[address(arg1)]) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * lpLockCountForUser[address(arg1)]) + 128] = 0
        mem[(32 * lpLockCountForUser[address(arg1)]) + 160] = 0
        mem[(32 * lpLockCountForUser[address(arg1)]) + 192] = 0
        mem[(32 * lpLockCountForUser[address(arg1)]) + 224] = 0
        mem[(32 * lpLockCountForUser[address(arg1)]) + 256] = 0
        mem[(32 * lpLockCountForUser[address(arg1)]) + 288] = 0
        mem[s + 32] = (32 * lpLockCountForUser[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < lpLockCountForUser[address(arg1)]:
        mem[32] = 104
        if idx >= lpLockCountForUser[address(arg1)]:
            revert with 0, 50
        if lpLockCountForUser[address(arg1)][idx] >= lpLockForUserAtIndex.length:
            revert with 0, 50
        mem[0] = 103
        _102 = mem[64]
        mem[64] = mem[64] + 192
        mem[_102] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_0
        mem[_102 + 32] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_256
        mem[_102 + 64] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_512
        mem[_102 + 96] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_768
        mem[_102 + 128] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_1024
        mem[_102 + 160] = lpLockForUserAtIndex[stor104[address(arg1)][idx]].field_1280
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _102
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _90 = mem[64]
    mem[mem[64]] = 32
    _91 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _91:
        _104 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_104 + 44 len 20]
        mem[s + 64] = mem[_104 + 76 len 20]
        mem[s + 96] = mem[_104 + 96]
        mem[s + 128] = mem[_104 + 128]
        mem[s + 160] = mem[_104 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _90 + (192 * _91) + -mem[64] + 64
}

function normalLocksForUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 105
    if normalLockCountForUser[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = normalLockCountForUser[address(arg1)]
    mem[64] = (32 * normalLockCountForUser[address(arg1)]) + 128
    if not normalLockCountForUser[address(arg1)]:
        idx = 0
        while idx < normalLockCountForUser[address(arg1)]:
            mem[32] = 105
            if idx >= normalLockCountForUser[address(arg1)]:
                revert with 0, 50
            if normalLockCountForUser[address(arg1)][idx] >= lpLockForUserAtIndex.length:
                revert with 0, 50
            mem[0] = 103
            _49 = mem[64]
            mem[64] = mem[64] + 192
            mem[_49] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_0
            mem[_49 + 32] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_256
            mem[_49 + 64] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_512
            mem[_49 + 96] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_768
            mem[_49 + 128] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_1024
            mem[_49 + 160] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _49
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _37 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _37:
            _66 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_66 + 44 len 20]
            mem[s + 64] = mem[_66 + 76 len 20]
            mem[s + 96] = mem[_66 + 96]
            mem[s + 128] = mem[_66 + 128]
            mem[s + 160] = mem[_66 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _36 + (192 * _37) + -mem[64] + 64
    mem[64] = (32 * normalLockCountForUser[address(arg1)]) + 320
    mem[(32 * normalLockCountForUser[address(arg1)]) + 128] = 0
    mem[(32 * normalLockCountForUser[address(arg1)]) + 160] = 0
    mem[(32 * normalLockCountForUser[address(arg1)]) + 192] = 0
    mem[(32 * normalLockCountForUser[address(arg1)]) + 224] = 0
    mem[(32 * normalLockCountForUser[address(arg1)]) + 256] = 0
    mem[(32 * normalLockCountForUser[address(arg1)]) + 288] = 0
    mem[var18001] = (32 * normalLockCountForUser[address(arg1)]) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * normalLockCountForUser[address(arg1)]) + 128] = 0
        mem[(32 * normalLockCountForUser[address(arg1)]) + 160] = 0
        mem[(32 * normalLockCountForUser[address(arg1)]) + 192] = 0
        mem[(32 * normalLockCountForUser[address(arg1)]) + 224] = 0
        mem[(32 * normalLockCountForUser[address(arg1)]) + 256] = 0
        mem[(32 * normalLockCountForUser[address(arg1)]) + 288] = 0
        mem[s + 32] = (32 * normalLockCountForUser[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < normalLockCountForUser[address(arg1)]:
        mem[32] = 105
        if idx >= normalLockCountForUser[address(arg1)]:
            revert with 0, 50
        if normalLockCountForUser[address(arg1)][idx] >= lpLockForUserAtIndex.length:
            revert with 0, 50
        mem[0] = 103
        _102 = mem[64]
        mem[64] = mem[64] + 192
        mem[_102] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_0
        mem[_102 + 32] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_256
        mem[_102 + 64] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_512
        mem[_102 + 96] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_768
        mem[_102 + 128] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_1024
        mem[_102 + 160] = lpLockForUserAtIndex[stor105[address(arg1)][idx]].field_1280
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _102
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _90 = mem[64]
    mem[mem[64]] = 32
    _91 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _91:
        _104 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_104 + 44 len 20]
        mem[s + 64] = mem[_104 + 76 len 20]
        mem[s + 96] = mem[_104 + 96]
        mem[s + 128] = mem[_104 + 128]
        mem[s + 160] = mem[_104 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _90 + (192 * _91) + -mem[64] + 64
}

function getCumulativeLpTokenLockInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < stor106.length:
        if arg2 < arg1:
            revert with 0, 17
        if 1 > !(arg2 - arg1):
            revert with 0, 17
        if arg2 + -arg1 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg2 + -arg1 + 1
        mem[64] = (32 * arg2 + -arg1 + 1) + 128
        if not arg2 + -arg1 + 1:
            idx = arg1
            s = 0
            while idx <= arg2:
                if idx >= stor106.length:
                    revert with 0, 50
                mem[0] = stor106[idx].field_0
                mem[32] = 110
                _69 = mem[64]
                mem[64] = mem[64] + 96
                mem[_69] = sub_e1444fd6[stor106[idx].field_0].field_0
                mem[_69 + 32] = sub_e1444fd6[stor106[idx].field_0].field_256
                mem[_69 + 64] = sub_e1444fd6[stor106[idx].field_0].field_512
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _69
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _51 = mem[64]
            mem[mem[64]] = 32
            _53 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _53:
                _95 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_95 + 44 len 20]
                mem[s + 64] = mem[_95 + 64]
                idx = idx + 1
                s = s + 96
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _51 + (96 * _53) + -mem[64] + 64
        mem[64] = (32 * arg2 + -arg1 + 1) + 224
        mem[(32 * arg2 + -arg1 + 1) + 128] = 0
        mem[(32 * arg2 + -arg1 + 1) + 160] = 0
        mem[(32 * arg2 + -arg1 + 1) + 192] = 0
        mem[128] = (32 * arg2 + -arg1 + 1) + 128
        s = 128
        idx = arg2 + -arg1 + 1
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg2 + -arg1 + 1) + 128] = 0
            mem[(32 * arg2 + -arg1 + 1) + 160] = 0
            mem[(32 * arg2 + -arg1 + 1) + 192] = 0
            mem[s + 32] = (32 * arg2 + -arg1 + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg1
        s = 0
        while idx <= arg2:
            if idx >= stor106.length:
                revert with 0, 50
            mem[0] = stor106[idx].field_0
            mem[32] = 110
            _121 = mem[64]
            mem[64] = mem[64] + 96
            mem[_121] = sub_e1444fd6[stor106[idx].field_0].field_0
            mem[_121 + 32] = sub_e1444fd6[stor106[idx].field_0].field_256
            mem[_121 + 64] = sub_e1444fd6[stor106[idx].field_0].field_512
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _121
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _107:
            _127 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_127 + 44 len 20]
            mem[s + 64] = mem[_127 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _104 + (96 * _107) + -mem[64] + 64
    if stor106.length < 1:
        revert with 0, 17
    if stor106.length - 1 < arg1:
        revert with 0, 17
    if 1 > !(stor106.length + -arg1 - 1):
        revert with 0, 17
    if stor106.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor106.length - arg1
    mem[64] = (32 * stor106.length - arg1) + 128
    if not stor106.length - arg1:
        idx = arg1
        s = 0
        while idx <= stor106.length - 1:
            if idx >= stor106.length:
                revert with 0, 50
            mem[0] = stor106[idx].field_0
            mem[32] = 110
            _74 = mem[64]
            mem[64] = mem[64] + 96
            mem[_74] = sub_e1444fd6[stor106[idx].field_0].field_0
            mem[_74 + 32] = sub_e1444fd6[stor106[idx].field_0].field_256
            mem[_74 + 64] = sub_e1444fd6[stor106[idx].field_0].field_512
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _74
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _54:
            _99 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_99 + 44 len 20]
            mem[s + 64] = mem[_99 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _52 + (96 * _54) + -mem[64] + 64
    mem[64] = (32 * stor106.length - arg1) + 224
    mem[(32 * stor106.length - arg1) + 128] = 0
    mem[(32 * stor106.length - arg1) + 160] = 0
    mem[(32 * stor106.length - arg1) + 192] = 0
    mem[128] = (32 * stor106.length - arg1) + 128
    s = 128
    idx = stor106.length - arg1
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor106.length - arg1) + 128] = 0
        mem[(32 * stor106.length - arg1) + 160] = 0
        mem[(32 * stor106.length - arg1) + 192] = 0
        mem[s + 32] = (32 * stor106.length - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    s = 0
    while idx <= stor106.length - 1:
        if idx >= stor106.length:
            revert with 0, 50
        mem[0] = stor106[idx].field_0
        mem[32] = 110
        _125 = mem[64]
        mem[64] = mem[64] + 96
        mem[_125] = sub_e1444fd6[stor106[idx].field_0].field_0
        mem[_125 + 32] = sub_e1444fd6[stor106[idx].field_0].field_256
        mem[_125 + 64] = sub_e1444fd6[stor106[idx].field_0].field_512
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _125
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _108:
        _131 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_131 + 44 len 20]
        mem[s + 64] = mem[_131 + 64]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _106 + (96 * _108) + -mem[64] + 64
}

function getCumulativeNormalTokenLockInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < stor108.length:
        if arg2 < arg1:
            revert with 0, 17
        if 1 > !(arg2 - arg1):
            revert with 0, 17
        if arg2 + -arg1 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg2 + -arg1 + 1
        mem[64] = (32 * arg2 + -arg1 + 1) + 128
        if not arg2 + -arg1 + 1:
            idx = arg1
            s = 0
            while idx <= arg2:
                if idx >= stor108.length:
                    revert with 0, 50
                mem[0] = stor108[idx].field_0
                mem[32] = 110
                _69 = mem[64]
                mem[64] = mem[64] + 96
                mem[_69] = sub_e1444fd6[stor108[idx].field_0].field_0
                mem[_69 + 32] = sub_e1444fd6[stor108[idx].field_0].field_256
                mem[_69 + 64] = sub_e1444fd6[stor108[idx].field_0].field_512
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _69
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _51 = mem[64]
            mem[mem[64]] = 32
            _53 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _53:
                _95 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_95 + 44 len 20]
                mem[s + 64] = mem[_95 + 64]
                idx = idx + 1
                s = s + 96
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _51 + (96 * _53) + -mem[64] + 64
        mem[64] = (32 * arg2 + -arg1 + 1) + 224
        mem[(32 * arg2 + -arg1 + 1) + 128] = 0
        mem[(32 * arg2 + -arg1 + 1) + 160] = 0
        mem[(32 * arg2 + -arg1 + 1) + 192] = 0
        mem[128] = (32 * arg2 + -arg1 + 1) + 128
        s = 128
        idx = arg2 + -arg1 + 1
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg2 + -arg1 + 1) + 128] = 0
            mem[(32 * arg2 + -arg1 + 1) + 160] = 0
            mem[(32 * arg2 + -arg1 + 1) + 192] = 0
            mem[s + 32] = (32 * arg2 + -arg1 + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg1
        s = 0
        while idx <= arg2:
            if idx >= stor108.length:
                revert with 0, 50
            mem[0] = stor108[idx].field_0
            mem[32] = 110
            _121 = mem[64]
            mem[64] = mem[64] + 96
            mem[_121] = sub_e1444fd6[stor108[idx].field_0].field_0
            mem[_121 + 32] = sub_e1444fd6[stor108[idx].field_0].field_256
            mem[_121 + 64] = sub_e1444fd6[stor108[idx].field_0].field_512
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _121
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _104 = mem[64]
        mem[mem[64]] = 32
        _107 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _107:
            _127 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_127 + 44 len 20]
            mem[s + 64] = mem[_127 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _104 + (96 * _107) + -mem[64] + 64
    if stor108.length < 1:
        revert with 0, 17
    if stor108.length - 1 < arg1:
        revert with 0, 17
    if 1 > !(stor108.length + -arg1 - 1):
        revert with 0, 17
    if stor108.length - arg1 > test266151307():
        revert with 0, 65
    mem[96] = stor108.length - arg1
    mem[64] = (32 * stor108.length - arg1) + 128
    if not stor108.length - arg1:
        idx = arg1
        s = 0
        while idx <= stor108.length - 1:
            if idx >= stor108.length:
                revert with 0, 50
            mem[0] = stor108[idx].field_0
            mem[32] = 110
            _74 = mem[64]
            mem[64] = mem[64] + 96
            mem[_74] = sub_e1444fd6[stor108[idx].field_0].field_0
            mem[_74 + 32] = sub_e1444fd6[stor108[idx].field_0].field_256
            mem[_74 + 64] = sub_e1444fd6[stor108[idx].field_0].field_512
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _74
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _54:
            _99 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_99 + 44 len 20]
            mem[s + 64] = mem[_99 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _52 + (96 * _54) + -mem[64] + 64
    mem[64] = (32 * stor108.length - arg1) + 224
    mem[(32 * stor108.length - arg1) + 128] = 0
    mem[(32 * stor108.length - arg1) + 160] = 0
    mem[(32 * stor108.length - arg1) + 192] = 0
    mem[128] = (32 * stor108.length - arg1) + 128
    s = 128
    idx = stor108.length - arg1
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor108.length - arg1) + 128] = 0
        mem[(32 * stor108.length - arg1) + 160] = 0
        mem[(32 * stor108.length - arg1) + 192] = 0
        mem[s + 32] = (32 * stor108.length - arg1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    s = 0
    while idx <= stor108.length - 1:
        if idx >= stor108.length:
            revert with 0, 50
        mem[0] = stor108[idx].field_0
        mem[32] = 110
        _125 = mem[64]
        mem[64] = mem[64] + 96
        mem[_125] = sub_e1444fd6[stor108[idx].field_0].field_0
        mem[_125 + 32] = sub_e1444fd6[stor108[idx].field_0].field_256
        mem[_125 + 64] = sub_e1444fd6[stor108[idx].field_0].field_512
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _125
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _106 = mem[64]
    mem[mem[64]] = 32
    _108 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _108:
        _131 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_131 + 44 len 20]
        mem[s + 64] = mem[_131 + 64]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _106 + (96 * _108) + -mem[64] + 64
}

function getLocksForToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 111
    if arg3 < totalLockCountForToken[address(arg1)]:
        if arg3 < arg2:
            revert with 0, 17
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[96] = arg3 + -arg2 + 1
        mem[64] = (32 * arg3 + -arg2 + 1) + 128
        if not arg3 + -arg2 + 1:
            idx = arg2
            s = 0
            while idx <= arg3:
                mem[32] = 111
                if idx >= totalLockCountForToken[address(arg1)]:
                    revert with 0, 50
                if totalLockCountForToken[address(arg1)][idx] >= lpLockForUserAtIndex.length:
                    revert with 0, 50
                mem[0] = 103
                _89 = mem[64]
                mem[64] = mem[64] + 192
                mem[_89] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_0
                mem[_89 + 32] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_256
                mem[_89 + 64] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_512
                mem[_89 + 96] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_768
                mem[_89 + 128] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1024
                mem[_89 + 160] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1280
                if s >= mem[96]:
                    revert with 0, 50
                mem[(32 * s) + 128] = _89
                if s == -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _71 = mem[64]
            mem[mem[64]] = 32
            _73 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = mem[64] + 64
            t = 128
            while idx < _73:
                _131 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_131 + 44 len 20]
                mem[s + 64] = mem[_131 + 76 len 20]
                mem[s + 96] = mem[_131 + 96]
                mem[s + 128] = mem[_131 + 128]
                mem[s + 160] = mem[_131 + 160]
                idx = idx + 1
                s = s + 192
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _71 + (192 * _73) + -mem[64] + 64
        mem[64] = (32 * arg3 + -arg2 + 1) + 320
        mem[(32 * arg3 + -arg2 + 1) + 128] = 0
        mem[(32 * arg3 + -arg2 + 1) + 160] = 0
        mem[(32 * arg3 + -arg2 + 1) + 192] = 0
        mem[(32 * arg3 + -arg2 + 1) + 224] = 0
        mem[(32 * arg3 + -arg2 + 1) + 256] = 0
        mem[(32 * arg3 + -arg2 + 1) + 288] = 0
        mem[var25001] = (32 * arg3 + -arg2 + 1) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * arg3 + -arg2 + 1) + 128] = 0
            mem[(32 * arg3 + -arg2 + 1) + 160] = 0
            mem[(32 * arg3 + -arg2 + 1) + 192] = 0
            mem[(32 * arg3 + -arg2 + 1) + 224] = 0
            mem[(32 * arg3 + -arg2 + 1) + 256] = 0
            mem[(32 * arg3 + -arg2 + 1) + 288] = 0
            mem[s + 32] = (32 * arg3 + -arg2 + 1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg2
        s = 0
        while idx <= arg3:
            mem[32] = 111
            if idx >= totalLockCountForToken[address(arg1)]:
                revert with 0, 50
            if totalLockCountForToken[address(arg1)][idx] >= lpLockForUserAtIndex.length:
                revert with 0, 50
            mem[0] = 103
            _195 = mem[64]
            mem[64] = mem[64] + 192
            mem[_195] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_0
            mem[_195 + 32] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_256
            mem[_195 + 64] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_512
            mem[_195 + 96] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_768
            mem[_195 + 128] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1024
            mem[_195 + 160] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _195
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _179 = mem[64]
        mem[mem[64]] = 32
        _181 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _181:
            _207 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_207 + 44 len 20]
            mem[s + 64] = mem[_207 + 76 len 20]
            mem[s + 96] = mem[_207 + 96]
            mem[s + 128] = mem[_207 + 128]
            mem[s + 160] = mem[_207 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _179 + (192 * _181) + -mem[64] + 64
    mem[0] = arg1
    mem[32] = 111
    if totalLockCountForToken[address(arg1)] < 1:
        revert with 0, 17
    if totalLockCountForToken[address(arg1)] - 1 < arg2:
        revert with 0, 17
    if 1 > !(totalLockCountForToken[address(arg1)] + -arg2 - 1):
        revert with 0, 17
    if totalLockCountForToken[address(arg1)] - arg2 > test266151307():
        revert with 0, 65
    mem[96] = totalLockCountForToken[address(arg1)] - arg2
    mem[64] = (32 * totalLockCountForToken[address(arg1)] - arg2) + 128
    if not totalLockCountForToken[address(arg1)] - arg2:
        idx = arg2
        s = 0
        while idx <= totalLockCountForToken[address(arg1)] - 1:
            mem[32] = 111
            if idx >= totalLockCountForToken[address(arg1)]:
                revert with 0, 50
            if totalLockCountForToken[address(arg1)][idx] >= lpLockForUserAtIndex.length:
                revert with 0, 50
            mem[0] = 103
            _99 = mem[64]
            mem[64] = mem[64] + 192
            mem[_99] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_0
            mem[_99 + 32] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_256
            mem[_99 + 64] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_512
            mem[_99 + 96] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_768
            mem[_99 + 128] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1024
            mem[_99 + 160] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1280
            if s >= mem[96]:
                revert with 0, 50
            mem[(32 * s) + 128] = _99
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _72 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _75:
            _132 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_132 + 44 len 20]
            mem[s + 64] = mem[_132 + 76 len 20]
            mem[s + 96] = mem[_132 + 96]
            mem[s + 128] = mem[_132 + 128]
            mem[s + 160] = mem[_132 + 160]
            idx = idx + 1
            s = s + 192
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _72 + (192 * _75) + -mem[64] + 64
    mem[64] = (32 * totalLockCountForToken[address(arg1)] - arg2) + 320
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 128] = 0
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 160] = 0
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 192] = 0
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 224] = 0
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 256] = 0
    mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 288] = 0
    mem[var32001] = (32 * totalLockCountForToken[address(arg1)] - arg2) + 128
    s = var32001
    idx = var32002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 128] = 0
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 160] = 0
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 192] = 0
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 224] = 0
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 256] = 0
        mem[(32 * totalLockCountForToken[address(arg1)] - arg2) + 288] = 0
        mem[s + 32] = (32 * totalLockCountForToken[address(arg1)] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    s = 0
    while idx <= totalLockCountForToken[address(arg1)] - 1:
        mem[32] = 111
        if idx >= totalLockCountForToken[address(arg1)]:
            revert with 0, 50
        if totalLockCountForToken[address(arg1)][idx] >= lpLockForUserAtIndex.length:
            revert with 0, 50
        mem[0] = 103
        _205 = mem[64]
        mem[64] = mem[64] + 192
        mem[_205] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_0
        mem[_205 + 32] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_256
        mem[_205 + 64] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_512
        mem[_205 + 96] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_768
        mem[_205 + 128] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1024
        mem[_205 + 160] = lpLockForUserAtIndex[stor111[address(arg1)][idx]].field_1280
        if s >= mem[96]:
            revert with 0, 50
        mem[(32 * s) + 128] = _205
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _180 = mem[64]
    mem[mem[64]] = 32
    _183 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _183:
        _208 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_208 + 44 len 20]
        mem[s + 64] = mem[_208 + 76 len 20]
        mem[s + 96] = mem[_208 + 96]
        mem[s + 128] = mem[_208 + 128]
        mem[s + 160] = mem[_208 + 160]
        idx = idx + 1
        s = s + 192
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _180 + (192 * _183) + -mem[64] + 64
}

function editLock(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not poolManagerAddress:
        if arg1 >= lpLockForUserAtIndex.length:
            revert with 0, 'Invalid lock id'
        if lpLockForUserAtIndex[arg1].field_512 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of this lock'
        if lpLockForUserAtIndex[arg1].field_768 <= 0:
            revert with 0, 'Lock was unlocked'
        if arg3:
            if arg3 < lpLockForUserAtIndex[arg1].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'New unlock time should not be before old unlock time or current time'
            if arg3 <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'New unlock time should not be before old unlock time or current time'
            lpLockForUserAtIndex[arg1].field_1280 = arg3
        if arg2:
            if arg2 < lpLockForUserAtIndex[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New amount should not be less than current amount'
            if arg2 - lpLockForUserAtIndex[arg1].field_768:
                mem[100] = this.address
                require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg2 - lpLockForUserAtIndex[arg1].field_768
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(lpLockForUserAtIndex[arg1].field_256):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0
                mem[ceil32(return_data.size) + 392] = 0
                call lpLockForUserAtIndex[arg1].field_256 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if arg2 - lpLockForUserAtIndex[arg1].field_768 != 0:
                    revert with 0, 'Not enough token was transfered'
                lpLockForUserAtIndex[arg1].field_768 = arg2
                if sub_e1444fd6[stor103[arg1].field_256].field_512 > !(arg2 - lpLockForUserAtIndex[arg1].field_768):
                    revert with 0, 17
                sub_e1444fd6[stor103[arg1].field_256].field_512 = sub_e1444fd6[stor103[arg1].field_256].field_512 + arg2 - lpLockForUserAtIndex[arg1].field_768
    else:
        mem[100] = msg.sender
        require ext_code.size(poolManagerAddress)
        staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            if fee != msg.value:
                revert with 0, 'Fee'
            if arg1 >= lpLockForUserAtIndex.length:
                revert with 0, 'Invalid lock id'
            if lpLockForUserAtIndex[arg1].field_512 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the owner of this lock'
            if lpLockForUserAtIndex[arg1].field_768 <= 0:
                revert with 0, 'Lock was unlocked'
            if arg3:
                if arg3 < lpLockForUserAtIndex[arg1].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'New unlock time should not be before old unlock time or current time'
                if arg3 <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'New unlock time should not be before old unlock time or current time'
                lpLockForUserAtIndex[arg1].field_1280 = arg3
            if arg2:
                if arg2 < lpLockForUserAtIndex[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New amount should not be less than current amount'
                if arg2 - lpLockForUserAtIndex[arg1].field_768:
                    mem[100] = this.address
                    require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                    staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 132] = msg.sender
                    mem[ceil32(return_data.size) + 164] = this.address
                    mem[ceil32(return_data.size) + 196] = arg2 - lpLockForUserAtIndex[arg1].field_768
                    mem[ceil32(return_data.size) + 96] = 100
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(lpLockForUserAtIndex[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0
                    mem[ceil32(return_data.size) + 392] = 0
                    call lpLockForUserAtIndex[arg1].field_256 with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                    staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if arg2 - lpLockForUserAtIndex[arg1].field_768 != 0:
                        revert with 0, 'Not enough token was transfered'
                    lpLockForUserAtIndex[arg1].field_768 = arg2
                    if sub_e1444fd6[stor103[arg1].field_256].field_512 > !(arg2 - lpLockForUserAtIndex[arg1].field_768):
                        revert with 0, 17
                    sub_e1444fd6[stor103[arg1].field_256].field_512 = sub_e1444fd6[stor103[arg1].field_256].field_512 + arg2 - lpLockForUserAtIndex[arg1].field_768
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if fee != msg.value:
                    revert with 0, 'Fee'
            if arg1 >= lpLockForUserAtIndex.length:
                revert with 0, 'Invalid lock id'
            if lpLockForUserAtIndex[arg1].field_512 != msg.sender:
                revert with 0, 'You are not the owner of this lock'
            if lpLockForUserAtIndex[arg1].field_768 <= 0:
                revert with 0, 'Lock was unlocked'
            if arg3:
                if arg3 < lpLockForUserAtIndex[arg1].field_1280:
                    revert with 0, 'New unlock time should not be before old unlock time or current time'
                if arg3 <= block.timestamp:
                    revert with 0, 'New unlock time should not be before old unlock time or current time'
                lpLockForUserAtIndex[arg1].field_1280 = arg3
            if arg2:
                if arg2 < lpLockForUserAtIndex[arg1].field_768:
                    revert with 0, 'New amount should not be less than current amount'
                if arg2 - lpLockForUserAtIndex[arg1].field_768:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                    staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = this.address
                    mem[(2 * ceil32(return_data.size)) + 196] = arg2 - lpLockForUserAtIndex[arg1].field_768
                    mem[(2 * ceil32(return_data.size)) + 96] = 100
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(lpLockForUserAtIndex[arg1].field_256):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    call lpLockForUserAtIndex[arg1].field_256 with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 - lpLockForUserAtIndex[arg1].field_768, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                            if not uint32(msg.sender), mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                            if not mem[(2 * ceil32(return_data.size)) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(lpLockForUserAtIndex[arg1].field_256)
                    staticcall lpLockForUserAtIndex[arg1].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if arg2 - lpLockForUserAtIndex[arg1].field_768 != 0:
                        revert with 0, 'Not enough token was transfered'
                    lpLockForUserAtIndex[arg1].field_768 = arg2
                    if sub_e1444fd6[stor103[arg1].field_256].field_512 > !(arg2 - lpLockForUserAtIndex[arg1].field_768):
                        revert with 0, 17
                    sub_e1444fd6[stor103[arg1].field_256].field_512 = sub_e1444fd6[stor103[arg1].field_256].field_512 + arg2 - lpLockForUserAtIndex[arg1].field_768
    emit LockUpdated(lpLockForUserAtIndex[arg1].field_256, lpLockForUserAtIndex[arg1].field_512, lpLockForUserAtIndex[arg1].field_768, lpLockForUserAtIndex[arg1].field_1280, lpLockForUserAtIndex[arg1].field_0);
}

function lock(address arg1, address arg2, bool arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not poolManagerAddress:
        if arg5 <= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock date should be after current time'
        if arg4 <= 0:
            revert with 0, 'Amount should be greater than 0'
        if not arg3:
            mem[128] = arg2
            mem[160] = arg1
            mem[192] = arg4
            mem[224] = block.timestamp
            mem[256] = arg5
            lpLockForUserAtIndex.length++
            stor9787[stor103.length] = lpLockForUserAtIndex.length
            stor9787[stor103.length] = arg2
            stor9787[stor103.length] = arg1
            stor9787[stor103.length] = arg4
            stor9787[stor103.length] = block.timestamp
            stor9787[stor103.length] = arg5
            if not normalLockCountForUser[address(arg1)][1][stor103.length]:
                normalLockCountForUser[address(arg1)]++
                normalLockCountForUser[address(arg1)][normalLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                normalLockCountForUser[address(arg1)][1][stor103.length] = normalLockCountForUser[address(arg1)]
            if not stor109[address(arg2)]:
                stor108.length++
                stor108[stor108.length].field_0 = arg2
                stor108[stor108.length].field_160 = 0
                stor109[address(arg2)] = stor108.length
            if not sub_e1444fd6[address(arg2)].field_0:
                sub_e1444fd6[address(arg2)].field_0 = arg2
                sub_e1444fd6[address(arg2)].field_256 = 0
            if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                revert with 0, 17
            sub_e1444fd6[address(arg2)].field_512 += arg4
            if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                totalLockCountForToken[address(arg2)]++
                totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
            mem[292] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 324] = msg.sender
            mem[ceil32(return_data.size) + 356] = this.address
            mem[ceil32(return_data.size) + 388] = arg4
            mem[ceil32(return_data.size) + 288] = 100
            mem[ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 320 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 420] = 32
            mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
            mem[ceil32(return_data.size) + 584] = 0
            call arg2 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if lpLockForUserAtIndex.length:
                        revert with memory
                          from 128
                           len lpLockForUserAtIndex.length
                    revert with 0, 'SafeERC20: low-level call failed'
                if lpLockForUserAtIndex.length:
                    require lpLockForUserAtIndex.length >= 32
                    require arg2 == bool(arg2)
                    if not arg2:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                    if not mem[ceil32(return_data.size) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require ext_code.size(arg2)
            staticcall arg2.0xc45a0155 with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'This token is not a LP token'
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'This token is not a LP token.'
            require ext_code.size(arg2)
            staticcall arg2.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(arg2)
            staticcall arg2.token1() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg2 != ext_call.return_data[12 len 20]:
                revert with 0, 'This token is not a LP token.'
            mem[(6 * ceil32(return_data.size)) + 96] = lpLockForUserAtIndex.length
            mem[(6 * ceil32(return_data.size)) + 128] = arg2
            mem[(6 * ceil32(return_data.size)) + 160] = arg1
            mem[(6 * ceil32(return_data.size)) + 192] = arg4
            mem[(6 * ceil32(return_data.size)) + 224] = block.timestamp
            mem[(6 * ceil32(return_data.size)) + 256] = arg5
            lpLockForUserAtIndex.length++
            stor9787[stor103.length] = lpLockForUserAtIndex.length
            stor9787[stor103.length] = arg2
            stor9787[stor103.length] = arg1
            stor9787[stor103.length] = arg4
            stor9787[stor103.length] = block.timestamp
            stor9787[stor103.length] = arg5
            if not lpLockCountForUser[address(arg1)][1][stor103.length]:
                lpLockCountForUser[address(arg1)]++
                lpLockCountForUser[address(arg1)][lpLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                lpLockCountForUser[address(arg1)][1][stor103.length] = lpLockCountForUser[address(arg1)]
            if not stor107[address(arg2)]:
                stor106.length++
                stor106[stor106.length].field_0 = arg2
                stor106[stor106.length].field_160 = 0
                stor107[address(arg2)] = stor106.length
            if not sub_e1444fd6[address(arg2)].field_0:
                sub_e1444fd6[address(arg2)].field_0 = arg2
                sub_e1444fd6[address(arg2)].field_256 = address(ext_call.return_data[0])
            if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                revert with 0, 17
            sub_e1444fd6[address(arg2)].field_512 += arg4
            if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                totalLockCountForToken[address(arg2)]++
                totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 356] = this.address
            mem[(7 * ceil32(return_data.size)) + 388] = arg4
            mem[(7 * ceil32(return_data.size)) + 288] = 100
            mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 320 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 420] = 32
            mem[(7 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
            mem[(7 * ceil32(return_data.size)) + 584] = 0
            call arg2 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 516] == bool(mem[(7 * ceil32(return_data.size)) + 516])
                    if not mem[(7 * ceil32(return_data.size)) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = msg.sender
        require ext_code.size(poolManagerAddress)
        staticcall poolManagerAddress.isPoolGenerated(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            if fee != msg.value:
                revert with 0, 'Fee'
            if arg5 <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unlock date should be after current time'
            if arg4 <= 0:
                revert with 0, 'Amount should be greater than 0'
            if not arg3:
                mem[128] = arg2
                mem[160] = arg1
                mem[192] = arg4
                mem[224] = block.timestamp
                mem[256] = arg5
                lpLockForUserAtIndex.length++
                stor9787[stor103.length] = lpLockForUserAtIndex.length
                stor9787[stor103.length] = arg2
                stor9787[stor103.length] = arg1
                stor9787[stor103.length] = arg4
                stor9787[stor103.length] = block.timestamp
                stor9787[stor103.length] = arg5
                if not normalLockCountForUser[address(arg1)][1][stor103.length]:
                    normalLockCountForUser[address(arg1)]++
                    normalLockCountForUser[address(arg1)][normalLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                    normalLockCountForUser[address(arg1)][1][stor103.length] = normalLockCountForUser[address(arg1)]
                if not stor109[address(arg2)]:
                    stor108.length++
                    stor108[stor108.length].field_0 = arg2
                    stor108[stor108.length].field_160 = 0
                    stor109[address(arg2)] = stor108.length
                if not sub_e1444fd6[address(arg2)].field_0:
                    sub_e1444fd6[address(arg2)].field_0 = arg2
                    sub_e1444fd6[address(arg2)].field_256 = 0
                if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                    revert with 0, 17
                sub_e1444fd6[address(arg2)].field_512 += arg4
                if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                    totalLockCountForToken[address(arg2)]++
                    totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                    totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
                mem[292] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 324] = msg.sender
                mem[ceil32(return_data.size) + 356] = this.address
                mem[ceil32(return_data.size) + 388] = arg4
                mem[ceil32(return_data.size) + 288] = 100
                mem[ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 320 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 420] = 32
                mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
                mem[ceil32(return_data.size) + 584] = 0
                call arg2 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if lpLockForUserAtIndex.length:
                            revert with memory
                              from 128
                               len lpLockForUserAtIndex.length
                        revert with 0, 'SafeERC20: low-level call failed'
                    if lpLockForUserAtIndex.length:
                        require lpLockForUserAtIndex.length >= 32
                        require arg2 == bool(arg2)
                        if not arg2:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                        if not mem[ceil32(return_data.size) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(arg2)
                staticcall arg2.0xc45a0155 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'This token is not a LP token'
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'This token is not a LP token.'
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg2)
                staticcall arg2.token1() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 != ext_call.return_data[12 len 20]:
                    revert with 0, 'This token is not a LP token.'
                mem[(6 * ceil32(return_data.size)) + 96] = lpLockForUserAtIndex.length
                mem[(6 * ceil32(return_data.size)) + 128] = arg2
                mem[(6 * ceil32(return_data.size)) + 160] = arg1
                mem[(6 * ceil32(return_data.size)) + 192] = arg4
                mem[(6 * ceil32(return_data.size)) + 224] = block.timestamp
                mem[(6 * ceil32(return_data.size)) + 256] = arg5
                lpLockForUserAtIndex.length++
                stor9787[stor103.length] = lpLockForUserAtIndex.length
                stor9787[stor103.length] = arg2
                stor9787[stor103.length] = arg1
                stor9787[stor103.length] = arg4
                stor9787[stor103.length] = block.timestamp
                stor9787[stor103.length] = arg5
                if not lpLockCountForUser[address(arg1)][1][stor103.length]:
                    lpLockCountForUser[address(arg1)]++
                    lpLockCountForUser[address(arg1)][lpLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                    lpLockCountForUser[address(arg1)][1][stor103.length] = lpLockCountForUser[address(arg1)]
                if not stor107[address(arg2)]:
                    stor106.length++
                    stor106[stor106.length].field_0 = arg2
                    stor106[stor106.length].field_160 = 0
                    stor107[address(arg2)] = stor106.length
                if not sub_e1444fd6[address(arg2)].field_0:
                    sub_e1444fd6[address(arg2)].field_0 = arg2
                    sub_e1444fd6[address(arg2)].field_256 = address(ext_call.return_data[0])
                if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                    revert with 0, 17
                sub_e1444fd6[address(arg2)].field_512 += arg4
                if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                    totalLockCountForToken[address(arg2)]++
                    totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                    totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 356] = this.address
                mem[(7 * ceil32(return_data.size)) + 388] = arg4
                mem[(7 * ceil32(return_data.size)) + 288] = 100
                mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 320 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 420] = 32
                mem[(7 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
                mem[(7 * ceil32(return_data.size)) + 584] = 0
                call arg2 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 516] == bool(mem[(7 * ceil32(return_data.size)) + 516])
                        if not mem[(7 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if fee != msg.value:
                    revert with 0, 'Fee'
            if arg5 <= block.timestamp:
                revert with 0, 'Unlock date should be after current time'
            if arg4 <= 0:
                revert with 0, 'Amount should be greater than 0'
            if not arg3:
                mem[ceil32(return_data.size) + 96] = lpLockForUserAtIndex.length
                mem[ceil32(return_data.size) + 128] = arg2
                mem[ceil32(return_data.size) + 160] = arg1
                mem[ceil32(return_data.size) + 192] = arg4
                mem[ceil32(return_data.size) + 224] = block.timestamp
                mem[ceil32(return_data.size) + 256] = arg5
                lpLockForUserAtIndex.length++
                stor9787[stor103.length] = lpLockForUserAtIndex.length
                stor9787[stor103.length] = arg2
                stor9787[stor103.length] = arg1
                stor9787[stor103.length] = arg4
                stor9787[stor103.length] = block.timestamp
                stor9787[stor103.length] = arg5
                if not normalLockCountForUser[address(arg1)][1][stor103.length]:
                    normalLockCountForUser[address(arg1)]++
                    normalLockCountForUser[address(arg1)][normalLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                    normalLockCountForUser[address(arg1)][1][stor103.length] = normalLockCountForUser[address(arg1)]
                if not stor109[address(arg2)]:
                    stor108.length++
                    stor108[stor108.length].field_0 = arg2
                    stor108[stor108.length].field_160 = 0
                    stor109[address(arg2)] = stor108.length
                if not sub_e1444fd6[address(arg2)].field_0:
                    sub_e1444fd6[address(arg2)].field_0 = arg2
                    sub_e1444fd6[address(arg2)].field_256 = 0
                if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                    revert with 0, 17
                sub_e1444fd6[address(arg2)].field_512 += arg4
                if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                    totalLockCountForToken[address(arg2)]++
                    totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                    totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
                mem[ceil32(return_data.size) + 292] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = arg4
                mem[(2 * ceil32(return_data.size)) + 288] = 100
                mem[(2 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 320 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 420] = 32
                mem[(2 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
                mem[(2 * ceil32(return_data.size)) + 584] = 0
                call arg2 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 516] == bool(mem[(2 * ceil32(return_data.size)) + 516])
                        if not mem[(2 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                require ext_code.size(arg2)
                staticcall arg2.0xc45a0155 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'This token is not a LP token'
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'This token is not a LP token.'
                require ext_code.size(arg2)
                staticcall arg2.token0() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(arg2)
                staticcall arg2.token1() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xe6a43905 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 != ext_call.return_data[12 len 20]:
                    revert with 0, 'This token is not a LP token.'
                mem[(7 * ceil32(return_data.size)) + 96] = lpLockForUserAtIndex.length
                mem[(7 * ceil32(return_data.size)) + 128] = arg2
                mem[(7 * ceil32(return_data.size)) + 160] = arg1
                mem[(7 * ceil32(return_data.size)) + 192] = arg4
                mem[(7 * ceil32(return_data.size)) + 224] = block.timestamp
                mem[(7 * ceil32(return_data.size)) + 256] = arg5
                lpLockForUserAtIndex.length++
                stor9787[stor103.length] = lpLockForUserAtIndex.length
                stor9787[stor103.length] = arg2
                stor9787[stor103.length] = arg1
                stor9787[stor103.length] = arg4
                stor9787[stor103.length] = block.timestamp
                stor9787[stor103.length] = arg5
                if not lpLockCountForUser[address(arg1)][1][stor103.length]:
                    lpLockCountForUser[address(arg1)]++
                    lpLockCountForUser[address(arg1)][lpLockCountForUser[address(arg1)]] = lpLockForUserAtIndex.length
                    lpLockCountForUser[address(arg1)][1][stor103.length] = lpLockCountForUser[address(arg1)]
                if not stor107[address(arg2)]:
                    stor106.length++
                    stor106[stor106.length].field_0 = arg2
                    stor106[stor106.length].field_160 = 0
                    stor107[address(arg2)] = stor106.length
                if not sub_e1444fd6[address(arg2)].field_0:
                    sub_e1444fd6[address(arg2)].field_0 = arg2
                    sub_e1444fd6[address(arg2)].field_256 = address(ext_call.return_data[0])
                if sub_e1444fd6[address(arg2)].field_512 > !arg4:
                    revert with 0, 17
                sub_e1444fd6[address(arg2)].field_512 += arg4
                if not totalLockCountForToken[address(arg2)][1][stor103.length]:
                    totalLockCountForToken[address(arg2)]++
                    totalLockCountForToken[address(arg2)][totalLockCountForToken[address(arg2)]] = lpLockForUserAtIndex.length
                    totalLockCountForToken[address(arg2)][1][stor103.length] = totalLockCountForToken[address(arg2)]
                mem[(7 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 324] = msg.sender
                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                mem[(8 * ceil32(return_data.size)) + 388] = arg4
                mem[(8 * ceil32(return_data.size)) + 288] = 100
                mem[(8 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(8 * ceil32(return_data.size)) + 320 len 4] = unknown_0x23b872dd(?????)
                mem[(8 * ceil32(return_data.size)) + 420] = 32
                mem[(8 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0
                mem[(8 * ceil32(return_data.size)) + 584] = 0
                call arg2 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(8 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 516] == bool(mem[(8 * ceil32(return_data.size)) + 516])
                        if not mem[(8 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if arg4 != 0:
        revert with 0, 'Not enough token was transfered'
    emit LockAdded(address(arg2), address(arg1), arg4, arg5, lpLockForUserAtIndex.length);
    return lpLockForUserAtIndex.length
}



}
