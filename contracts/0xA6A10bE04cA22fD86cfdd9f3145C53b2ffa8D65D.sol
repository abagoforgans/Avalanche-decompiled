contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of uint256 sub_01320fe2;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;

function sub_01320fe2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_01320fe2[arg1]
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function sub_8c5c60c2(?) {
    if sub_01320fe2[msg.sender] > !stor7:
        revert with 'NH{q', 17
    return (sub_01320fe2[msg.sender] + stor7)
}

function setCooldown(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor7 = arg1
}

function setHouseEdge(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor11 = arg1
}

function sub_12f58195(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor8 = arg1
    stor9 = arg2
}

function sub_70075d06(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor14 = arg1
    stor15 = arg2
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function sub_c8b68875(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor17 = uint8(bool(arg1))
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setCommission(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 100:
        revert with 0, 'Invalid commission'
    stor16 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sweep() {
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setContracts(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor5 = arg1
    stor4 = arg2
    stor12 = arg3
    stor13 = arg4
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call stor5.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d443d8b7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x8cedcb5100000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall stor4.0x8cedcb51 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _96 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xcafe5e6f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _96
        staticcall stor4.0xcafe5e6f with:
                gas gas_remaining wei
               args _96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _102 = mem[_100]
        require mem[_100] <= test266151307()
        require _100 + mem[_100] + 31 < _100 + return_data.size
        _103 = mem[_100 + mem[_100]]
        if mem[_100 + mem[_100]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_100 + mem[_100]])) + 1 < 0 or _100 + ceil32(return_data.size) + ceil32(ceil32(mem[_100 + mem[_100]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _100 + ceil32(return_data.size) + ceil32(ceil32(mem[_100 + mem[_100]])) + 1
        mem[_100 + ceil32(return_data.size)] = _103
        require _102 + _103 + 32 <= return_data.size
        t = 0
        while t < _103:
            mem[t + _100 + ceil32(return_data.size) + 32] = mem[t + _100 + _102 + 32]
            t = t + 32
            continue 
        if ceil32(_103) > _103:
            mem[_100 + ceil32(return_data.size) + _103 + 32] = 0
        require mem[_100 + 224] == mem[_100 + 236 len 20]
        if s > !mem[_100 + 96]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_100 + 96]
        continue 
    staticcall stor12.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _101 = mem[_98]
    require mem[_98] == mem[_98 + 18 len 14]
    _104 = mem[_98 + 32]
    require mem[_98 + 32] == mem[_98 + 50 len 14]
    require mem[_98 + 64] == mem[_98 + 92 len 4]
    staticcall stor12.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_109] == mem[_109 + 12 len 20]
    if stor5 != mem[_109 + 12 len 20]:
        if Mask(112, 0, _104) <= 0:
            revert with 0, 'divison by zero error'
        if Mask(112, 0, _101) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, _104):
            revert with 'NH{q', 18
        if s and 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) > -1 / s:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) / 10^18 and stor11 > -1 / s * 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) / 10^18:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) / 10^18 * stor11 / 100 and stor8 > -1 / s * 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) / 10^18 * stor11 / 100:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        return s, s * 10^18 * Mask(112, 0, _101) / Mask(112, 0, _104) / 10^18 * stor11 / 100 * stor8 / stor9
    if Mask(112, 0, _101) <= 0:
        revert with 0, 'divison by zero error'
    if Mask(112, 0, _104) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not Mask(112, 0, _101):
        revert with 'NH{q', 18
    if s and 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) > -1 / s:
        revert with 'NH{q', 17
    if s * 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) / 10^18 and stor11 > -1 / s * 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) / 10^18:
        revert with 'NH{q', 17
    if s * 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) / 10^18 * stor11 / 100 and stor8 > -1 / s * 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) / 10^18 * stor11 / 100:
        revert with 'NH{q', 17
    if not stor9:
        revert with 'NH{q', 18
    return s, s * 10^18 * Mask(112, 0, _104) / Mask(112, 0, _101) / 10^18 * stor11 / 100 * stor8 / stor9
}

function enterLottery() payable {
    if msg.sender != tx.origin:
        revert with 0, 'No contracts'
    if sub_01320fe2[msg.sender] > !stor7:
        revert with 'NH{q', 17
    if sub_01320fe2[msg.sender] + stor7 > block.timestamp:
        revert with 0, 'On cooldown'
    mem[0] = msg.sender
    mem[32] = 6
    sub_01320fe2[msg.sender] = block.timestamp
    mem[96] = 0x8cedcb5100000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall stor4.0x8cedcb51 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _11 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _11
    require _10 + (32 * _11) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _11)] = mem[_10 + 128 len ceil32(32 * _11)]
    idx = 0
    s = 0
    while idx < _11:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _110 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xcafe5e6f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _110
        staticcall stor4.0xcafe5e6f with:
                gas gas_remaining wei
               args _110
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _116 = mem[_114]
        require mem[_114] <= test266151307()
        require _114 + mem[_114] + 31 < _114 + return_data.size
        _117 = mem[_114 + mem[_114]]
        if mem[_114 + mem[_114]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_114 + mem[_114]])) + 1 < 0 or _114 + ceil32(return_data.size) + ceil32(ceil32(mem[_114 + mem[_114]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _114 + ceil32(return_data.size) + ceil32(ceil32(mem[_114 + mem[_114]])) + 1
        mem[_114 + ceil32(return_data.size)] = _117
        require _116 + _117 + 32 <= return_data.size
        t = 0
        while t < _117:
            mem[t + _114 + ceil32(return_data.size) + 32] = mem[t + _114 + _116 + 32]
            t = t + 32
            continue 
        if ceil32(_117) > _117:
            mem[_114 + ceil32(return_data.size) + _117 + 32] = 0
        require mem[_114 + 224] == mem[_114 + 236 len 20]
        if s > !mem[_114 + 96]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_114 + 96]
        continue 
    staticcall stor12.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _115 = mem[_112]
    require mem[_112] == mem[_112 + 18 len 14]
    _118 = mem[_112 + 32]
    require mem[_112 + 32] == mem[_112 + 50 len 14]
    require mem[_112 + 64] == mem[_112 + 92 len 4]
    staticcall stor12.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_123] == mem[_123 + 12 len 20]
    if stor5 != mem[_123 + 12 len 20]:
        if Mask(112, 0, _118) <= 0:
            revert with 0, 'divison by zero error'
        if Mask(112, 0, _115) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, _118):
            revert with 'NH{q', 18
        if s and 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) > -1 / s:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 and stor11 > -1 / s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100 and stor8 > -1 / s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        if msg.value < s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100 * stor8 / stor9:
            revert with 0, 'Entry fee not paid'
        if s <= 0:
            revert with 0, 'Must have some ETHS locked'
        _146 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_146]:
            revert with 'NH{q', 50
        mem[_146 + 32] = stor3
        if 1 >= mem[_146]:
            revert with 'NH{q', 50
        mem[_146 + 64] = stor5
        if 100 < stor16:
            revert with 'NH{q', 17
        if msg.value and -stor16 + 100 > -1 / msg.value:
            revert with 'NH{q', 17
        mem[_146 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[_146 + 100] = 0
        mem[_146 + 132] = 128
        mem[_146 + 228] = mem[_146]
        idx = 0
        t = _146 + 260
        u = _146 + 32
        while idx < mem[_146]:
            mem[t] = mem[u + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_146 + 164] = this.address
        mem[_146 + 196] = block.timestamp
        require ext_code.size(stor13)
        call stor13.mem[mem[64] len 4] with:
           value (100 * msg.value) - (stor16 * msg.value) / 100 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _146 + (32 * mem[_146]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s and stor8 > -1 / s:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        mem[mem[64] + 32] = address(msg.sender)
        _270 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > !block.difficulty:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp):
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) > !block.number:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number > !stor10:
            revert with 'NH{q', 17
        if not s * stor8 / stor9:
            revert with 'NH{q', 18
        if stor10 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9):
            revert with 'NH{q', 17
        stor10 += sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
        if not stor17:
            call stor5.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100 * stor8 / stor9, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9);
        else:
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > !block.difficulty:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(sha3(msg.sender) / block.timestamp):
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) > !block.number:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number > !stor10:
                revert with 'NH{q', 17
            if not stor10:
                revert with 'NH{q', 18
            if stor10 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor10) % stor10):
                revert with 'NH{q', 17
            if not stor14:
                revert with 'NH{q', 18
            if stor10 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor10) % stor10) % stor14:
                call stor5.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100 * stor8 / stor9, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_270 + 32 len mem[_270]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9);
            else:
                if s * stor8 / stor9 and stor15 > -1 / s * stor8 / stor9:
                    revert with 'NH{q', 17
                call stor5.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, s * stor8 / stor9 * stor15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _115) / Mask(112, 0, _118) / 10^18 * stor11 / 100 * stor8 / stor9, s * stor8 / stor9 * stor15);
    else:
        if Mask(112, 0, _115) <= 0:
            revert with 0, 'divison by zero error'
        if Mask(112, 0, _118) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if not Mask(112, 0, _115):
            revert with 'NH{q', 18
        if s and 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) > -1 / s:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 and stor11 > -1 / s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18:
            revert with 'NH{q', 17
        if s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100 and stor8 > -1 / s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        if msg.value < s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100 * stor8 / stor9:
            revert with 0, 'Entry fee not paid'
        if s <= 0:
            revert with 0, 'Must have some ETHS locked'
        _150 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if not mem[_150]:
            revert with 'NH{q', 50
        mem[_150 + 32] = stor3
        if 1 >= mem[_150]:
            revert with 'NH{q', 50
        mem[_150 + 64] = stor5
        if 100 < stor16:
            revert with 'NH{q', 17
        if msg.value and -stor16 + 100 > -1 / msg.value:
            revert with 'NH{q', 17
        mem[_150 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[_150 + 100] = 0
        mem[_150 + 132] = 128
        mem[_150 + 228] = mem[_150]
        idx = 0
        t = _150 + 260
        u = _150 + 32
        while idx < mem[_150]:
            mem[t] = mem[u + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_150 + 164] = this.address
        mem[_150 + 196] = block.timestamp
        require ext_code.size(stor13)
        call stor13.mem[mem[64] len 4] with:
           value (100 * msg.value) - (stor16 * msg.value) / 100 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _150 + (32 * mem[_150]) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s and stor8 > -1 / s:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        mem[mem[64] + 32] = address(msg.sender)
        _274 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        if not block.timestamp:
            revert with 'NH{q', 18
        if block.timestamp > !block.difficulty:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp):
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) > !block.number:
            revert with 'NH{q', 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number > !stor10:
            revert with 'NH{q', 17
        if not s * stor8 / stor9:
            revert with 'NH{q', 18
        if stor10 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9):
            revert with 'NH{q', 17
        stor10 += sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
        if not stor17:
            call stor5.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100 * stor8 / stor9, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9);
        else:
            if not block.timestamp:
                revert with 'NH{q', 18
            if block.timestamp > !block.difficulty:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !(sha3(msg.sender) / block.timestamp):
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) > !block.number:
                revert with 'NH{q', 17
            if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number > !stor10:
                revert with 'NH{q', 17
            if not stor10:
                revert with 'NH{q', 18
            if stor10 > !(sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor10) % stor10):
                revert with 'NH{q', 17
            if not stor14:
                revert with 'NH{q', 18
            if stor10 + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(msg.sender) / block.timestamp) + block.number + stor10) % stor10) % stor14:
                call stor5.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100 * stor8 / stor9, sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (sha3(mem[_274 + 32 len mem[_274]]) / block.timestamp) + block.number + stor10) % s * stor8 / stor9);
            else:
                if s * stor8 / stor9 and stor15 > -1 / s * stor8 / stor9:
                    revert with 'NH{q', 17
                call stor5.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, s * stor8 / stor9 * stor15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit LotteryEvent(msg.sender, s * 10^18 * Mask(112, 0, _118) / Mask(112, 0, _115) / 10^18 * stor11 / 100 * stor8 / stor9, s * stor8 / stor9 * stor15);
}



}
