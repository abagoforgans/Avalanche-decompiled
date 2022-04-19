contract main {




// =====================  Runtime code  =====================


#
#  - sub_9a6d3905(?)
#  - sub_aa1380e2(?)
#
const sub_f09e0782(?) = 15000


address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 totalDividend;
mapping of uint256 lastDividendAt;
mapping of struct sub_00c16b10;
array of struct stor9;
mapping of uint256 stor10;
address stor11;

function sub_00c16b10(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(sub_00c16b10[arg1].field_0)), 
           address(sub_00c16b10[arg1].field_0),
           uint256(sub_00c16b10[arg1].field_256),
           uint256(sub_00c16b10[arg1].field_512),
           bool(uint8(sub_00c16b10[arg1].field_768)),
           uint256(sub_00c16b10[arg1].field_1024),
           uint256(sub_00c16b10[arg1].field_1280)
}

function reflectionBalance() {
    return stor5.length
}

function totalDividend() {
    return totalDividend
}

function owner() {
    return owner
}

function sub_a023cf69(?) {
    return stor4.length
}

function stakingActive() {
    return bool(uint8(stor2.length.field_160))
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
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

function sub_2c7d6f76(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4.length = arg1
}

function flipStakingState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.length.field_160) = Mask(96, 0, not bool(uint8(stor2.length.field_160)))
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

function sub_660de00d(?) {
    if stor9.length:
        mem[128] = uint256(stor9.field_0)
        idx = 128
        s = 0
        while (32 * stor9.length) + 96 > idx:
            mem[idx + 32] = uint256(stor9[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor9.length, data=mem[128 len 32 * stor9.length])
    mem[(32 * stor9.length) + 128] = 32
    mem[(32 * stor9.length) + 160] = stor9.length
    mem[(32 * stor9.length) + 192 len 32 * stor9.length] = mem[128 len 32 * stor9.length]
    return memory
      from (32 * stor9.length) + 128
       len (96 * stor9.length) + 64
}

function sub_e60e8207(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobStaking: Not owner'
    if bool(uint8(sub_00c16b10[arg1].field_0)) != 1:
        revert with 0, 'AvaxBlobStaking: Blob not staked'
    if uint8(sub_00c16b10[arg1].field_768):
        revert with 0, 'AvaxBlobStaking: Blob already been staked and collected reward can not unstake'
    if stor9.length < 1:
        revert with 'NH{q', 17
    if stor9.length - 1 >= stor9.length:
        revert with 'NH{q', 50
    if stor10[arg1] >= stor9.length:
        revert with 'NH{q', 50
    uint256(stor9[stor10[arg1]].field_0) = uint256(stor9[stor9.length].field_0)
    stor10[uint256(stor9[stor9.length].field_0)] = stor10[arg1]
    stor10[arg1] = 0
    if not stor9.length:
        revert with 'NH{q', 49
    uint256(stor9[stor9.length].field_0) = 0
    stor9.length--
    uint8(sub_00c16b10[arg1].field_0) = 0
    address(sub_00c16b10[arg1].field_8) = 0
    sub_00c16b10[arg1].field_256 % 1 = 0
    uint256(sub_00c16b10[arg1].field_256) = arg1
    uint256(sub_00c16b10[arg1].field_512) = 0
    uint8(sub_00c16b10[arg1].field_768) = 0
    uint256(sub_00c16b10[arg1].field_1024) = 0
    uint256(sub_00c16b10[arg1].field_1280) = 0
    emit 0xac31ba5c: arg1, block.timestamp, msg.sender
}

function sub_5f8239eb(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 15000:
        revert with 0, 'AvaxBlobStaking: Can not claim anymore as mint is sold out!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        _59 = sha3(mem[(32 * idx) + 128], 8)
        _60 = mem[64]
        mem[64] = mem[64] + 224
        mem[_60] = bool(uint8(sub_00c16b10[mem[(32 * idx) + 128]].field_0))
        mem[_60 + 32] = address(stor[_59].field_8)
        mem[_60 + 64] = stor1[_59]
        mem[_60 + 96] = uint256(stor2[_59].field_0)
        mem[_60 + 128] = bool(uint8(stor3[_59].field_0))
        mem[_60 + 160] = stor4[_59]
        mem[_60 + 192] = stor5[_59]
        _61 = mem[64]
        mem[64] = mem[64] + 224
        mem[_61] = 1
        mem[_61 + 32] = address(stor[_59].field_8)
        mem[_61 + 64] = stor1[_59]
        mem[_61 + 96] = uint256(stor2[_59].field_0)
        mem[_61 + 128] = 1
        mem[_61 + 160] = block.timestamp
        mem[_61 + 192] = block.number
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        uint8(sub_00c16b10[mem[(32 * idx) + 128]].field_0) = 1
        address(sub_00c16b10[mem[(32 * idx) + 128]].field_8) = address(stor[_59].field_8)
        uint256(sub_00c16b10[mem[(32 * idx) + 128]].field_256) = stor1[_59]
        uint256(sub_00c16b10[mem[(32 * idx) + 128]].field_512) = uint256(stor2[_59].field_0)
        uint8(sub_00c16b10[mem[(32 * idx) + 128]].field_768) = 1
        uint256(sub_00c16b10[mem[(32 * idx) + 128]].field_1024) = block.timestamp
        uint256(sub_00c16b10[mem[(32 * idx) + 128]].field_1280) = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e45249f2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _68 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(address(stor2.length))
        staticcall address(stor2.length).0x6352211e with:
                gas gas_remaining wei
               args _68
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71 + 12 len 20]
        if mem[_71 + 12 len 20] != msg.sender:
            revert with 0, 'AvaxBlobStaking: Not owner'
        if bool(uint8(sub_00c16b10[_68].field_0)) != 1:
            revert with 0, 'AvaxBlobStaking: Blob not staked'
        if uint8(sub_00c16b10[_68].field_768):
            revert with 0, 'AvaxBlobStaking: Blob already been staked and collected reward can not unstake'
        if stor9.length < 1:
            revert with 'NH{q', 17
        if stor9.length - 1 >= stor9.length:
            revert with 'NH{q', 50
        if stor10[_68] >= stor9.length:
            revert with 'NH{q', 50
        uint256(stor9[stor10[_68]].field_0) = uint256(stor9[stor9.length].field_0)
        stor10[uint256(stor9[stor9.length].field_0)] = stor10[_68]
        mem[32] = 10
        stor10[_68] = 0
        if not stor9.length:
            revert with 'NH{q', 49
        mem[0] = 9
        uint256(stor9[stor9.length].field_0) = 0
        stor9.length--
        _87 = mem[64]
        mem[64] = mem[64] + 224
        mem[_87] = 0
        mem[_87 + 32] = 0
        mem[_87 + 64] = _68
        mem[_87 + 96] = 0
        mem[_87 + 128] = 0
        mem[_87 + 160] = 0
        mem[_87 + 192] = 0
        mem[0] = _68
        mem[32] = 8
        uint8(sub_00c16b10[_68].field_0) = 0
        address(sub_00c16b10[_68].field_8) = 0
        sub_00c16b10[_68].field_256 % 1 = 0
        uint256(sub_00c16b10[_68].field_256) = _68
        uint256(sub_00c16b10[_68].field_512) = 0
        uint8(sub_00c16b10[_68].field_768) = 0
        uint256(sub_00c16b10[_68].field_1024) = 0
        uint256(sub_00c16b10[_68].field_1280) = 0
        emit 0xac31ba5c: _68, block.timestamp, msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_49127694(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 15000:
        revert with 0, 'AvaxBlobStaking: Can not stake anymore as mint is sold out!'
    if not uint8(stor2.length.field_160):
        revert with 0, 'AvaxBlobStaking: Staking is currently not active'
    if stor4.length > msg.value:
        revert with 0, 'AvaxBlobStaking: Did not send enough AVAX'
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'AvaxBlobStaking: Not owner'
    if uint8(sub_00c16b10[arg1].field_0):
        revert with 0, 'AvaxBlobStaking: Blob already been staked'
    if uint8(sub_00c16b10[arg1].field_768):
        revert with 0, 'AvaxBlobStaking: Blob already been staked and collected reward'
    uint8(sub_00c16b10[arg1].field_0) = 1
    address(sub_00c16b10[arg1].field_8) = msg.sender
    uint256(sub_00c16b10[arg1].field_256) = arg1
    uint256(sub_00c16b10[arg1].field_512) = block.timestamp
    uint8(sub_00c16b10[arg1].field_768) = 0
    uint256(sub_00c16b10[arg1].field_1024) = 0
    uint256(sub_00c16b10[arg1].field_1280) = 0
    stor10[arg1] = stor9.length
    stor9.length++
    uint256(stor9[stor9.length].field_0) = arg1
    emit 0x877d228f: arg1, block.timestamp, msg.sender
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    lastDividendAt[ext_call.return_data[0]] = totalDividend
    if msg.value < msg.value / 10:
        revert with 'NH{q', 17
    if stor5.length > -(msg.value / 10) - 1:
        revert with 'NH{q', 17
    stor5.length += msg.value / 10
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / 10 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / 10 / ext_call.return_data[0]
    call stor11 with:
       value msg.value - (msg.value / 10) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function sub_b46d32a3(?) {
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    mem[100] = msg.sender
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6377a51f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x6377a51f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _11
    require _10 + (32 * _11) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _10 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _11:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        _36 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[32] = 7
        _37 = sha3(mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128], 7)
        if totalDividend < lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        if totalDividend - lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] > 0:
            mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            mem[32] = 7
            lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] = totalDividend
            mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x6352211e with:
                    gas gas_remaining wei
                   args _36
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_41] == mem[_41 + 12 len 20]
            call mem[_41 + 12 len 20] with:
               value totalDividend - uint256(stor[_37].field_0) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor1.length = 1
}

function sub_4148c250(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 15000:
        revert with 0, 'AvaxBlobStaking: Can not stake anymore as mint is sold out!'
    if not uint8(stor2.length.field_160):
        revert with 0, 'AvaxBlobStaking: Staking is currently not active'
    if stor4.length and ('cd', 4).length > -1 / stor4.length:
        revert with 'NH{q', 17
    if stor4.length * ('cd', 4).length > msg.value:
        revert with 0, 'AvaxBlobStaking: Did not send enough AVAX'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _110 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(address(stor2.length))
        staticcall address(stor2.length).0x6352211e with:
                gas gas_remaining wei
               args _110
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_115] == mem[_115 + 12 len 20]
        if mem[_115 + 12 len 20] != msg.sender:
            revert with 0, 'AvaxBlobStaking: Not owner'
        if uint8(sub_00c16b10[_110].field_0):
            revert with 0, 'AvaxBlobStaking: Blob already been staked'
        mem[0] = _110
        mem[32] = 8
        if uint8(sub_00c16b10[_110].field_768):
            revert with 0, 'AvaxBlobStaking: Blob already been staked and collected reward'
        _122 = mem[64]
        mem[64] = mem[64] + 224
        mem[_122] = 1
        mem[_122 + 32] = msg.sender
        mem[_122 + 64] = _110
        mem[_122 + 96] = block.timestamp
        mem[_122 + 128] = 0
        mem[_122 + 160] = 0
        mem[_122 + 192] = 0
        uint8(sub_00c16b10[_110].field_0) = 1
        address(sub_00c16b10[_110].field_8) = msg.sender
        uint256(sub_00c16b10[_110].field_256) = _110
        uint256(sub_00c16b10[_110].field_512) = block.timestamp
        uint8(sub_00c16b10[_110].field_768) = 0
        uint256(sub_00c16b10[_110].field_1024) = 0
        uint256(sub_00c16b10[_110].field_1280) = 0
        mem[32] = 10
        stor10[_110] = stor9.length
        stor9.length++
        mem[0] = 9
        uint256(stor9[stor9.length].field_0) = _110
        emit 0x877d228f: _110, block.timestamp, msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_112] == mem[_112]
    mem[0] = mem[_112]
    mem[32] = 7
    lastDividendAt[mem[0]] = totalDividend
    if msg.value < msg.value / 10:
        revert with 'NH{q', 17
    if stor5.length > -(msg.value / 10) - 1:
        revert with 'NH{q', 17
    stor5.length += msg.value / 10
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_141] == mem[_141]
    if not mem[_141]:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / 10 / mem[_141]) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / 10 / mem[_141]
    call stor11 with:
       value msg.value - (msg.value / 10) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length = 1
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x6377a51f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x6377a51f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 128 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]) + 32 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], address(arg1) << 64 + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        if idx >= _9:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[32] = 7
        if totalDividend < lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function sub_c12bd1b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(sub_00c16b10[arg1].field_0):
        return 0
    if uint8(sub_00c16b10[arg1].field_768):
        return 0
    if uint256(sub_00c16b10[arg1].field_512) > -3601:
        revert with 'NH{q', 17
    if arg1 <= 999:
        if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
            return 0
    else:
        if uint256(sub_00c16b10[arg1].field_512) > -7201:
            revert with 'NH{q', 17
        if arg1 <= 1999:
            if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                    return 0
            else:
                if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                    return uint255(stor3.length.field_1)
            ('lt', ('add', 7200, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
        else:
            if arg1 <= 2999:
                if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                    if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                            return 0
                    else:
                        if stor3.length / 3 and 2 > -1 / stor3.length / 3:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                            return (2 * stor3.length / 3)
                else:
                    if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                            return (stor3.length / 3)
                    else:
                        if stor3.length / 3 and 2 > -1 / stor3.length / 3:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                            revert with 'NH{q', 17
                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                            return (2 * stor3.length / 3)
                ('lt', ('add', 10800, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
            else:
                if arg1 <= 4999:
                    if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return 0
                            else:
                                if Mask(254, 0, stor3.length.field_2) and 3 > -1 / Mask(254, 0, stor3.length.field_2):
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (3 * Mask(254, 0, stor3.length.field_2))
                        else:
                            if Mask(254, 0, stor3.length.field_2) and 2 > -1 / Mask(254, 0, stor3.length.field_2):
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (2 * Mask(254, 0, stor3.length.field_2))
                            else:
                                if Mask(254, 0, stor3.length.field_2) and 3 > -1 / Mask(254, 0, stor3.length.field_2):
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (3 * Mask(254, 0, stor3.length.field_2))
                    else:
                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return Mask(254, 0, stor3.length.field_2)
                            else:
                                if Mask(254, 0, stor3.length.field_2) and 3 > -1 / Mask(254, 0, stor3.length.field_2):
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (3 * Mask(254, 0, stor3.length.field_2))
                        else:
                            if Mask(254, 0, stor3.length.field_2) and 2 > -1 / Mask(254, 0, stor3.length.field_2):
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                revert with 'NH{q', 17
                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (2 * Mask(254, 0, stor3.length.field_2))
                            else:
                                if Mask(254, 0, stor3.length.field_2) and 3 > -1 / Mask(254, 0, stor3.length.field_2):
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                    return (3 * Mask(254, 0, stor3.length.field_2))
                    ('lt', ('add', 14400, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
                else:
                    if arg1 <= 6999:
                        if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                            if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return 0
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                                else:
                                    if stor3.length / 5 and 3 > -1 / stor3.length / 5:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (3 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                            else:
                                if stor3.length / 5 and 2 > -1 / stor3.length / 5:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (2 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                                else:
                                    if stor3.length / 5 and 3 > -1 / stor3.length / 5:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (3 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                        else:
                            if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                                else:
                                    if stor3.length / 5 and 3 > -1 / stor3.length / 5:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (3 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                            else:
                                if stor3.length / 5 and 2 > -1 / stor3.length / 5:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                    revert with 'NH{q', 17
                                if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (2 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                                else:
                                    if stor3.length / 5 and 3 > -1 / stor3.length / 5:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (3 * stor3.length / 5)
                                    else:
                                        if stor3.length / 5 and 4 > -1 / stor3.length / 5:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                            return (4 * stor3.length / 5)
                        ('lt', ('add', 18000, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
                    else:
                        if arg1 <= 8999:
                            if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                                if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return 0
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                    else:
                                        if stor3.length / 6 and 3 > -1 / stor3.length / 6:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (3 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                else:
                                    if stor3.length / 6 and 2 > -1 / stor3.length / 6:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (2 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                    else:
                                        if stor3.length / 6 and 3 > -1 / stor3.length / 6:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (3 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                            else:
                                if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                    else:
                                        if stor3.length / 6 and 3 > -1 / stor3.length / 6:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (3 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                else:
                                    if stor3.length / 6 and 2 > -1 / stor3.length / 6:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                        revert with 'NH{q', 17
                                    if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (2 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                    else:
                                        if stor3.length / 6 and 3 > -1 / stor3.length / 6:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (3 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                                        else:
                                            if stor3.length / 6 and 4 > -1 / stor3.length / 6:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (4 * stor3.length / 6)
                                            else:
                                                if stor3.length / 6 and 5 > -1 / stor3.length / 6:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                    return (5 * stor3.length / 6)
                            ('lt', ('add', 21600, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
                        else:
                            if arg1 <= 10999:
                                if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                                    if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return 0
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                        else:
                                            if stor3.length / 7 and 3 > -1 / stor3.length / 7:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (3 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                    else:
                                        if stor3.length / 7 and 2 > -1 / stor3.length / 7:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (2 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                        else:
                                            if stor3.length / 7 and 3 > -1 / stor3.length / 7:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (3 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                else:
                                    if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                        else:
                                            if stor3.length / 7 and 3 > -1 / stor3.length / 7:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (3 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                    else:
                                        if stor3.length / 7 and 2 > -1 / stor3.length / 7:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                            revert with 'NH{q', 17
                                        if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (2 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                        else:
                                            if stor3.length / 7 and 3 > -1 / stor3.length / 7:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (3 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                            else:
                                                if stor3.length / 7 and 4 > -1 / stor3.length / 7:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (4 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                                else:
                                                    if stor3.length / 7 and 5 > -1 / stor3.length / 7:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (5 * stor3.length / 7)
                                                    else:
                                                        if stor3.length / 7 and 6 > -1 / stor3.length / 7:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                            return (6 * stor3.length / 7)
                                ('lt', ('add', 25200, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
                            else:
                                if arg1 <= 12999:
                                    if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return 0
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                            else:
                                                if Mask(253, 0, stor3.length.field_3) and 3 > -1 / Mask(253, 0, stor3.length.field_3):
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (3 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                        else:
                                            if Mask(253, 0, stor3.length.field_3) and 2 > -1 / Mask(253, 0, stor3.length.field_3):
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (2 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                            else:
                                                if Mask(253, 0, stor3.length.field_3) and 3 > -1 / Mask(253, 0, stor3.length.field_3):
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (3 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                    else:
                                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return Mask(253, 0, stor3.length.field_3)
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                            else:
                                                if Mask(253, 0, stor3.length.field_3) and 3 > -1 / Mask(253, 0, stor3.length.field_3):
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (3 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                        else:
                                            if Mask(253, 0, stor3.length.field_3) and 2 > -1 / Mask(253, 0, stor3.length.field_3):
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (2 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                            else:
                                                if Mask(253, 0, stor3.length.field_3) and 3 > -1 / Mask(253, 0, stor3.length.field_3):
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (3 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                else:
                                                    if Mask(253, 0, stor3.length.field_3) and 4 > -1 / Mask(253, 0, stor3.length.field_3):
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (4 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                    else:
                                                        if Mask(253, 0, stor3.length.field_3) and 5 > -1 / Mask(253, 0, stor3.length.field_3):
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (5 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                                        else:
                                                            if Mask(253, 0, stor3.length.field_3) and 6 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (6 * Mask(253, 0, stor3.length.field_3))
                                                            else:
                                                                if Mask(253, 0, stor3.length.field_3) and 7 > -1 / Mask(253, 0, stor3.length.field_3):
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    return (7 * Mask(253, 0, stor3.length.field_3))
                                    ('lt', ('add', 28800, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
                                else:
                                    if uint256(sub_00c16b10[arg1].field_512) + 3600 >= block.timestamp:
                                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return 0
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                            else:
                                                if stor3.length / 9 and 3 > -1 / stor3.length / 9:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (3 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                        else:
                                            if stor3.length / 9 and 2 > -1 / stor3.length / 9:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (2 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                            else:
                                                if stor3.length / 9 and 3 > -1 / stor3.length / 9:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (3 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                    else:
                                        if uint256(sub_00c16b10[arg1].field_512) + (2 * 3600) >= block.timestamp:
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                            else:
                                                if stor3.length / 9 and 3 > -1 / stor3.length / 9:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (3 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                        else:
                                            if stor3.length / 9 and 2 > -1 / stor3.length / 9:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) > -10801:
                                                revert with 'NH{q', 17
                                            if uint256(sub_00c16b10[arg1].field_512) + (3 * 3600) >= block.timestamp:
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (2 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                            else:
                                                if stor3.length / 9 and 3 > -1 / stor3.length / 9:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) > -14401:
                                                    revert with 'NH{q', 17
                                                if uint256(sub_00c16b10[arg1].field_512) + (4 * 3600) >= block.timestamp:
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (3 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                else:
                                                    if stor3.length / 9 and 4 > -1 / stor3.length / 9:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) > -18001:
                                                        revert with 'NH{q', 17
                                                    if uint256(sub_00c16b10[arg1].field_512) + (5 * 3600) >= block.timestamp:
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (4 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                    else:
                                                        if stor3.length / 9 and 5 > -1 / stor3.length / 9:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) > -21601:
                                                            revert with 'NH{q', 17
                                                        if uint256(sub_00c16b10[arg1].field_512) + (6 * 3600) >= block.timestamp:
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (5 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                        else:
                                                            if stor3.length / 9 and 6 > -1 / stor3.length / 9:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) > -25201:
                                                                revert with 'NH{q', 17
                                                            if uint256(sub_00c16b10[arg1].field_512) + (7 * 3600) >= block.timestamp:
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (6 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                                            else:
                                                                if stor3.length / 9 and 7 > -1 / stor3.length / 9:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) > -28801:
                                                                    revert with 'NH{q', 17
                                                                if uint256(sub_00c16b10[arg1].field_512) + (8 * 3600) >= block.timestamp:
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (7 * stor3.length / 9)
                                                                else:
                                                                    if stor3.length / 9 and 8 > -1 / stor3.length / 9:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) > -32401:
                                                                        revert with 'NH{q', 17
                                                                    if uint256(sub_00c16b10[arg1].field_512) + (9 * 3600) >= block.timestamp:
                                                                        return (8 * stor3.length / 9)
                                    ('lt', ('add', 32400, ('type', 256, ('field', 512, ('stor', ('map', ('param', 'arg1'), ('name', 'sub_00c16b10', 8)))))), 'timestamp')
    return stor3.length
}



}
