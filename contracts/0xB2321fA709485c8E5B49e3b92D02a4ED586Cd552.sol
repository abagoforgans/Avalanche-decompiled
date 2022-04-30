contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - placeBet(uint256 arg1, string arg2)
#  - sub_600cee78(?)
#  - emergencyWithdraw()
#
const blockTimestamp = block.timestamp

const MAX_BET_FEE = 1000


address owner;
array of uint256 stor1;
address tomatoAddress;
address feeAddress;
address stor4;
uint256 stor5;
uint256 stor6;
uint16 stor7;
array of struct username;
mapping of uint8 stor9;
mapping of uint8 stor10;

function userLength() payable {
    return username.length
}

function feeAddress() payable {
    return feeAddress
}

function sub_6e7bb152(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor9[arg1[all]])
}

function sub_785490b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[address(arg1)])
}

function owner() payable {
    return owner
}

function getUsername(uint256 arg1) payable {
    return stor[(5 * arg1) + ('name', 'username', 8) + 1][0 len stor[(5 * arg1) + ('name', 'username', 8) + 1].length].field_0
}

function tomato() payable {
    return tomatoAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor4, stor5, stor6, stor7
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6fedb9eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg1) > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    stor7 = uint16(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'setFeeAddress: setting feeAddress to the zero address is forbidden'
    if feeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'setFeeAddress: caller is not feeAddress'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function sub_864a0d0a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if stor9[arg1[all]]:
        revert with 0, 'addUser: duplicated username'
    if stor10[address(arg2)]:
        revert with 0, 'addUser: duplicated address'
    stor9[arg1[all]] = 1
    stor10[address(arg2)] = 1
    mem[ceil32(arg1.length) + 352] = 0
    username.length++
    username[username.length].field_0 = 0
    stor[sha3((5 * username.length) + ('name', 'username', 8) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    username[username.length].field_512 = address(arg2)
    username[username.length].field_672 = 0
    username[username.length].field_680 = 0
    username[username.length].field_768 = 0
    stor[sha3((5 * username.length) + ('name', 'username', 8) + 4)][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 384 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 384 len -arg1.length + ceil32(arg1.length)]])
}

function didWon(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    mem[64] = 544
    mem[320] = 0
    mem[352] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 96
    idx = 0
    while idx < username.length:
        mem[0] = 8
        if username[idx].field_512 != arg1:
            idx = idx + 1
            continue 
        require idx < username.length
        mem[544] = username[idx].field_0
        mem[64] = ceil32(stor[(5 * idx) + ('name', 'username', 8) + 1].length) + 800
        mem[768] = stor[(5 * idx) + ('name', 'username', 8) + 1].length
        mem[0] = (5 * idx) + sha3(8) + 1
        mem[800] = stor[sha3((5 * idx) + ('name', 'username', 8) + 1)].field_0
        s = 800
        t = sha3(mem[0])
        while stor[(5 * idx) + ('name', 'username', 8) + 1].length + 768 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[576] = 768
        mem[608] = username[idx].field_512
        mem[640] = bool(username[idx].field_672)
        mem[672] = bool(username[idx].field_680)
        mem[704] = username[idx].field_768
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 4].length) + 32
        mem[_85] = stor[(5 * idx) + ('name', 'username', 8) + 4].length
        mem[0] = (5 * idx) + sha3(8) + 4
        mem[_85 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 4)].field_0
        s = _85 + 32
        t = sha3(mem[0])
        while _85 + stor[(5 * idx) + ('name', 'username', 8) + 4].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[736] = _85
        mem[mem[64]] = bool(mem[640])
        return memory
          from mem[64]
           len 32
    return 0
}

function userInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < username.length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'username', 8) + 1)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'username', 8) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'username', 8) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + 160] = stor[sha3((5 * arg1) + ('name', 'username', 8) + 4)].field_0
    idx = ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + 160
    s = 0
    while ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + stor[(5 * arg1) + ('name', 'username', 8) + 4].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'username', 8) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) <= stor[(5 * arg1) + ('name', 'username', 8) + 1].length:
        mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) + 416] = stor[(5 * arg1) + ('name', 'username', 8) + 4].length
    else:
        mem[ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) + stor[(5 * arg1) + ('name', 'username', 8) + 1].length + 416] = 0
        mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) + 416] = stor[(5 * arg1) + ('name', 'username', 8) + 4].length
        mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) + 448 len ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length)] = mem[ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + 160 len ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length)]
        if ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) > stor[(5 * arg1) + ('name', 'username', 8) + 4].length:
            mem[(2 * ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length)) + ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length) + stor[(5 * arg1) + ('name', 'username', 8) + 4].length + 448] = 0
    return username[arg1].field_0, 
           Array(len=stor[(5 * arg1) + ('name', 'username', 8) + 1].length, data=mem[128 len ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length)], stor[(5 * arg1) + ('name', 'username', 8) + 4].length, mem[ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + 160 len ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 4].length)]),
           username[arg1].field_512,
           bool(username[arg1].field_672),
           bool(username[arg1].field_680),
           username[arg1].field_768,
           ceil32(stor[(5 * arg1) + ('name', 'username', 8) + 1].length) + 256
}

function sub_989e5ea9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = 320
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    idx = 0
    while idx < username.length:
        mem[0] = 8
        if username[idx].field_512 != address(arg1):
            idx = idx + 1
            continue 
        require idx < username.length
        mem[320] = username[idx].field_0
        mem[64] = ceil32(stor[(5 * idx) + ('name', 'username', 8) + 1].length) + 576
        mem[544] = stor[(5 * idx) + ('name', 'username', 8) + 1].length
        mem[0] = (5 * idx) + sha3(8) + 1
        mem[576] = stor[sha3((5 * idx) + ('name', 'username', 8) + 1)].field_0
        s = 576
        t = sha3(mem[0])
        while stor[(5 * idx) + ('name', 'username', 8) + 1].length + 544 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[352] = 544
        mem[384] = username[idx].field_512
        mem[416] = bool(username[idx].field_672)
        mem[448] = bool(username[idx].field_680)
        mem[480] = username[idx].field_768
        _489 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 4].length) + 32
        mem[_489] = stor[(5 * idx) + ('name', 'username', 8) + 4].length
        mem[0] = (5 * idx) + sha3(8) + 4
        mem[_489 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 4)].field_0
        s = _489 + 32
        t = sha3(mem[0])
        while _489 + stor[(5 * idx) + ('name', 'username', 8) + 4].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[512] = _489
        _710 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[320]
        _740 = mem[352]
        mem[mem[64] + 64] = 224
        _743 = mem[_740]
        mem[mem[64] + 256] = mem[_740]
        idx = 0
        while idx < _743:
            mem[mem[64] + idx + 288] = mem[_740 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_743) <= _743:
            mem[mem[64] + 96] = mem[396 len 20]
            mem[mem[64] + 128] = bool(mem[416])
            mem[mem[64] + 160] = bool(mem[448])
            mem[mem[64] + 192] = mem[480]
            _858 = mem[512]
            mem[mem[64] + 224] = ceil32(_743) + 256
            _860 = mem[_858]
            mem[mem[64] + ceil32(_743) + 288] = mem[_858]
            idx = 0
            while idx < _860:
                mem[mem[64] + ceil32(_743) + idx + 320] = mem[_858 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_860) > _860:
                mem[_710 + ceil32(_743) + _860 + 320] = 0
            return memory
              from mem[64]
               len _710 + ceil32(_743) + ceil32(_860) + -mem[64] + 320
        mem[mem[64] + _743 + 288] = 0
        mem[mem[64] + 96] = mem[396 len 20]
        mem[mem[64] + 128] = bool(mem[416])
        mem[mem[64] + 160] = bool(mem[448])
        mem[mem[64] + 192] = mem[480]
        _859 = mem[512]
        mem[mem[64] + 224] = ceil32(_743) + 256
        _861 = mem[_859]
        mem[mem[64] + ceil32(_743) + 288] = mem[_859]
        idx = 0
        while idx < _861:
            mem[mem[64] + ceil32(_743) + idx + 320] = mem[_859 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_861) > _861:
            mem[_710 + ceil32(_743) + _861 + 320] = 0
        return memory
          from mem[64]
           len _710 + ceil32(_743) + ceil32(_861) + -mem[64] + 320
    return '', 224, 0, 0, 0, 0, 256, 0, 0, None
}

function sub_f74d4c30(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = 320
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 96
    idx = 0
    while idx < username.length:
        mem[0] = 8
        _1415 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 1].length) + 32
        mem[_1415] = stor[(5 * idx) + ('name', 'username', 8) + 1].length
        mem[0] = (5 * idx) + sha3(8) + 1
        mem[_1415 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 1)].field_0
        s = _1415 + 32
        t = sha3(mem[0])
        while _1415 + stor[(5 * idx) + ('name', 'username', 8) + 1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _2861 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 32
        mem[_2861] = arg1.length
        mem[_2861 + 32 len arg1.length] = arg1[all]
        mem[_2861 + arg1.length + 32] = 0
        if arg1.length >= mem[_1415]:
            s = 0
            while s < mem[_1415]:
                require s < arg1.length
                require s < mem[_1415]
                require s < arg1.length
                require s < mem[_1415]
                s = s + 1
                continue 
            if mem[_1415] < arg1.length:
                idx = idx + 1
                continue 
            if mem[_1415] > arg1.length:
                idx = idx + 1
                continue 
            require idx < username.length
            mem[0] = 8
            _4336 = mem[64]
            mem[64] = mem[64] + 224
            mem[_4336] = username[idx].field_0
            _4337 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 1].length) + 32
            mem[_4337] = stor[(5 * idx) + ('name', 'username', 8) + 1].length
            mem[0] = (5 * idx) + sha3(8) + 1
            mem[_4337 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 1)].field_0
            s = _4337 + 32
            t = sha3(mem[0])
            while _4337 + stor[(5 * idx) + ('name', 'username', 8) + 1].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_4336 + 32] = _4337
            mem[_4336 + 64] = username[idx].field_512
            mem[_4336 + 96] = bool(username[idx].field_672)
            mem[_4336 + 128] = bool(username[idx].field_680)
            mem[_4336 + 160] = username[idx].field_768
            _5515 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 4].length) + 32
            mem[_5515] = stor[(5 * idx) + ('name', 'username', 8) + 4].length
            mem[0] = (5 * idx) + sha3(8) + 4
            mem[_5515 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 4)].field_0
            s = _5515 + 32
            t = sha3(mem[0])
            while _5515 + stor[(5 * idx) + ('name', 'username', 8) + 4].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_4336 + 192] = _5515
            _6397 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_4336]
            _6521 = mem[_4336 + 32]
            mem[mem[64] + 64] = 224
            _6527 = mem[_6521]
            mem[mem[64] + 256] = mem[_6521]
            idx = 0
            while idx < _6527:
                mem[mem[64] + idx + 288] = mem[_6521 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_6527) <= _6527:
                mem[_6397 + 96] = mem[_4336 + 76 len 20]
                mem[_6397 + 128] = bool(mem[_4336 + 96])
                mem[_6397 + 160] = bool(mem[_4336 + 128])
                mem[_6397 + 192] = mem[_4336 + 160]
                _6845 = mem[_4336 + 192]
                mem[_6397 + 224] = ceil32(_6527) + 256
                _6849 = mem[_6845]
                mem[_6397 + ceil32(_6527) + 288] = mem[_6845]
                idx = 0
                while idx < _6849:
                    mem[_6397 + ceil32(_6527) + idx + 320] = mem[_6845 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_6849) > _6849:
                    mem[_6397 + ceil32(_6527) + _6849 + 320] = 0
                return memory
                  from mem[64]
                   len _6397 + ceil32(_6527) + ceil32(_6849) + -mem[64] + 320
            mem[_6397 + _6527 + 288] = 0
            mem[_6397 + 96] = mem[_4336 + 76 len 20]
            mem[_6397 + 128] = bool(mem[_4336 + 96])
            mem[_6397 + 160] = bool(mem[_4336 + 128])
            mem[_6397 + 192] = mem[_4336 + 160]
            _6847 = mem[_4336 + 192]
            mem[_6397 + 224] = ceil32(_6527) + 256
            _6851 = mem[_6847]
            mem[_6397 + ceil32(_6527) + 288] = mem[_6847]
            idx = 0
            while idx < _6851:
                mem[_6397 + ceil32(_6527) + idx + 320] = mem[_6847 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_6851) > _6851:
                mem[_6397 + ceil32(_6527) + _6851 + 320] = 0
            return memory
              from mem[64]
               len _6397 + ceil32(_6527) + ceil32(_6851) + -mem[64] + 320
        s = 0
        while s < arg1.length:
            require s < arg1.length
            require s < mem[_1415]
            require s < arg1.length
            require s < mem[_1415]
            s = s + 1
            continue 
        if mem[_1415] < arg1.length:
            idx = idx + 1
            continue 
        if mem[_1415] > arg1.length:
            idx = idx + 1
            continue 
        require idx < username.length
        mem[0] = 8
        _4339 = mem[64]
        mem[64] = mem[64] + 224
        mem[_4339] = username[idx].field_0
        _4340 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 1].length) + 32
        mem[_4340] = stor[(5 * idx) + ('name', 'username', 8) + 1].length
        mem[0] = (5 * idx) + sha3(8) + 1
        mem[_4340 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 1)].field_0
        s = _4340 + 32
        t = sha3(mem[0])
        while _4340 + stor[(5 * idx) + ('name', 'username', 8) + 1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_4339 + 32] = _4340
        mem[_4339 + 64] = username[idx].field_512
        mem[_4339 + 96] = bool(username[idx].field_672)
        mem[_4339 + 128] = bool(username[idx].field_680)
        mem[_4339 + 160] = username[idx].field_768
        _5516 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(5 * idx) + ('name', 'username', 8) + 4].length) + 32
        mem[_5516] = stor[(5 * idx) + ('name', 'username', 8) + 4].length
        mem[0] = (5 * idx) + sha3(8) + 4
        mem[_5516 + 32] = stor[sha3((5 * idx) + ('name', 'username', 8) + 4)].field_0
        s = _5516 + 32
        t = sha3(mem[0])
        while _5516 + stor[(5 * idx) + ('name', 'username', 8) + 4].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_4339 + 192] = _5516
        _6398 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_4339]
        _6522 = mem[_4339 + 32]
        mem[mem[64] + 64] = 224
        _6532 = mem[_6522]
        mem[mem[64] + 256] = mem[_6522]
        idx = 0
        while idx < _6532:
            mem[mem[64] + idx + 288] = mem[_6522 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_6532) <= _6532:
            mem[mem[64] + 96] = mem[_4339 + 76 len 20]
            mem[mem[64] + 128] = bool(mem[_4339 + 96])
            mem[mem[64] + 160] = bool(mem[_4339 + 128])
            mem[mem[64] + 192] = mem[_4339 + 160]
            _6846 = mem[_4339 + 192]
            mem[mem[64] + 224] = ceil32(_6532) + 256
            _6850 = mem[_6846]
            mem[mem[64] + ceil32(_6532) + 288] = mem[_6846]
            idx = 0
            while idx < _6850:
                mem[mem[64] + ceil32(_6532) + idx + 320] = mem[_6846 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_6850) > _6850:
                mem[_6398 + ceil32(_6532) + _6850 + 320] = 0
            return memory
              from mem[64]
               len _6398 + ceil32(_6532) + ceil32(_6850) + -mem[64] + 320
        mem[mem[64] + _6532 + 288] = 0
        mem[mem[64] + 96] = mem[_4339 + 76 len 20]
        mem[mem[64] + 128] = bool(mem[_4339 + 96])
        mem[mem[64] + 160] = bool(mem[_4339 + 128])
        mem[mem[64] + 192] = mem[_4339 + 160]
        _6848 = mem[_4339 + 192]
        mem[mem[64] + 224] = ceil32(_6532) + 256
        _6852 = mem[_6848]
        mem[mem[64] + ceil32(_6532) + 288] = mem[_6848]
        idx = 0
        while idx < _6852:
            mem[mem[64] + ceil32(_6532) + idx + 320] = mem[_6848 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_6852) > _6852:
            mem[_6398 + ceil32(_6532) + _6852 + 320] = 0
        return memory
          from mem[64]
           len _6398 + ceil32(_6532) + ceil32(_6852) + -mem[64] + 320
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = 224
    _1450 = mem[mem[128]]
    mem[mem[64] + 256] = mem[mem[128]]
    mem[mem[64] + 288 len ceil32(_1450)] = mem[mem[128] + 32 len ceil32(_1450)]
    if ceil32(_1450) <= _1450:
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = bool(mem[192])
        mem[mem[64] + 160] = bool(mem[224])
        mem[mem[64] + 192] = mem[256]
        _3097 = mem[288]
        mem[mem[64] + 224] = ceil32(_1450) + 256
        _3131 = mem[mem[288]]
        mem[mem[64] + ceil32(_1450) + 288] = mem[mem[288]]
        mem[mem[64] + ceil32(_1450) + 320 len ceil32(_3131)] = mem[_3097 + 32 len ceil32(_3131)]
        if ceil32(_3131) > _3131:
            mem[mem[64] + ceil32(_1450) + _3131 + 320] = 0
        return 32, mem[mem[64] + 32], 
               224,
               mem[mem[64] + 96 len 128],
               ceil32(_1450) + 256,
               mem[mem[64] + 256 len ceil32(_1450) + ceil32(_3131) + 64]
    mem[mem[64] + _1450 + 288] = 0
    mem[mem[64] + 96] = mem[172 len 20]
    mem[mem[64] + 128] = bool(mem[192])
    mem[mem[64] + 160] = bool(mem[224])
    mem[mem[64] + 192] = mem[256]
    _3124 = mem[288]
    mem[mem[64] + 224] = ceil32(_1450) + 256
    _3154 = mem[mem[288]]
    mem[mem[64] + ceil32(_1450) + 288] = mem[mem[288]]
    mem[mem[64] + ceil32(_1450) + 320 len ceil32(_3154)] = mem[_3124 + 32 len ceil32(_3154)]
    if ceil32(_3154) > _3154:
        mem[mem[64] + ceil32(_1450) + _3154 + 320] = 0
    return 32, mem[mem[64] + 32], 
           224,
           mem[mem[64] + 96 len 128],
           ceil32(_1450) + 256,
           mem[mem[64] + 256 len _1450 + 32],
           0,
           mem[mem[64] + _1450 + 320 len ceil32(_1450) + ceil32(_3154) - _1450]
}



}
