contract main {




// =====================  Runtime code  =====================


#
#  - sub_31adcedc(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 sub_b1102e00;
uint256 marketFee;
uint8 stor3;
mapping of address auctions;
array of struct sub_6dde1cb0;

function marketFee() {
    return marketFee
}

function auctions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return auctions[arg1]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_6dde1cb0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_6dde1cb0[address(arg1)].field_0)
}

function sub_a669f0a9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_6dde1cb0[arg1].field_0)
    return address(sub_6dde1cb0[arg1][arg2].field_0), 
           uint256(sub_6dde1cb0[arg1][arg2].field_256),
           uint256(sub_6dde1cb0[arg1][arg2].field_512),
           address(sub_6dde1cb0[arg1][arg2].field_768)
}

function sub_b1102e00(?) {
    return sub_b1102e00
}

function sub_eb29a3d3(?) {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function sub_ca3be72c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == address(stor0.field_0)
    stor3 = uint8(bool(arg1))
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor0.field_0)
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require bool(ext_call.success) == 1
}

function getAuctions() {
    if sub_b1102e00 > test266151307():
        revert with 0, 65
    mem[96] = sub_b1102e00
    mem[64] = (32 * sub_b1102e00) + 128
    if sub_b1102e00:
        mem[128 len 32 * sub_b1102e00] = call.data[calldata.size len 32 * sub_b1102e00]
    idx = 0
    while idx < sub_b1102e00:
        mem[0] = idx
        mem[32] = 4
        if idx >= sub_b1102e00:
            revert with 0, 50
        mem[(32 * idx) + 128] = auctions[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * sub_b1102e00) + 128] = 32
    mem[(32 * sub_b1102e00) + 160] = sub_b1102e00
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_b1102e00:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_b1102e00) + -mem[64] + 192
}

function sub_7351c772(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require address(arg1)
    if arg2 >= uint256(sub_6dde1cb0[address(arg1)].field_0):
        revert with 0, 50
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(sub_6dde1cb0[address(arg1)][arg2].field_768):
        return 0
    if arg2 >= uint256(sub_6dde1cb0[address(arg1)].field_0):
        revert with 0, 50
    return address(sub_6dde1cb0[address(arg1)][arg2].field_0), 
           uint256(sub_6dde1cb0[address(arg1)][arg2].field_256),
           uint256(sub_6dde1cb0[address(arg1)][arg2].field_512),
           address(sub_6dde1cb0[address(arg1)][arg2].field_768)
}

function sub_da1f560f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 5
            idx = idx + 1
            continue 
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(sub_6dde1cb0[address(arg1)][idx].field_768):
            return 2
        return 1
    return 0
}

function changePrice(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'sender address cannot be zero'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You must be the owner of the token'
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 'cannot find item for sale'
        if idx + 1 < 1:
            revert with 0, 17
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        uint256(sub_6dde1cb0[address(arg1)][idx].field_512) = arg3
        emit ChangePrice(arg2, arg3, arg1);
        return 1
    revert with 0, 'cannot find item for sale'
}

function createAuction(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg5 == arg5
    if uint8(stor0.field_160):
        revert with 0, 'Contract Paused'
    if stor3:
        revert with 0, 'Auction Functionality Paused'
    require arg3 > 0
    require arg4 < arg3
    require arg1 > 300
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg5)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg5)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg5)][idx].field_256) != arg6:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg5
            mem[32] = 5
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if idx + 1:
            revert with 0, 'Item is already listed for sell'
        if sub_b1102e00 == -1:
            revert with 0, 17
        sub_b1102e00++
        create contract with 0 wei
                        code: code.data[11481 len 3258], msg.sender, arg1, arg2, arg3, arg4, address(arg5), arg6
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg5)
        call arg5.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        auctions[stor1] = address(create.new_address)
        emit 0x121d6888: arg6, arg1, arg2, arg3, arg4, msg.sender, arg5
        return 1
    if sub_b1102e00 == -1:
        revert with 0, 17
    sub_b1102e00++
    create contract with 0 wei
                    code: code.data[11481 len 3258], msg.sender, arg1, arg2, arg3, arg4, address(arg5), arg6
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg5)
    call arg5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    auctions[stor1] = address(create.new_address)
    emit 0x121d6888: arg6, arg1, arg2, arg3, arg4, msg.sender, arg5
    return 1
}

function sub_3beada66(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(arg1) != msg.sender:
            revert with 0, 'not allowed to unlist this item'
    require address(arg1)
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        mem[32] = 5
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        mem[0] = sha3(address(arg1), 5)
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if uint256(sub_6dde1cb0[address(arg1)].field_0) < 1:
            revert with 0, 17
        if uint256(sub_6dde1cb0[address(arg1)].field_0) - 1 >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        address(sub_6dde1cb0[address(arg1)][idx].field_0) = address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0)
        uint256(sub_6dde1cb0[address(arg1)][idx].field_256) = uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256)
        uint256(sub_6dde1cb0[address(arg1)][idx].field_512) = uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512)
        address(sub_6dde1cb0[address(arg1)][idx].field_768) = address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768)
        if not uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 49
        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
        uint256(sub_6dde1cb0[address(arg1)].field_0)--
        emit 0xcdae0750: arg2, msg.sender, address(arg1)
        return 1
    emit 0xcdae0750: arg2, msg.sender, address(arg1)
    return 1
}

function buy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'buyer address cannot be zero'
    if uint8(stor0.field_160):
        revert with 0, 'Contract Paused'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        revert with 0, 'token already exists in your bag'
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if not idx + 1:
            revert with 0, 'cannot find item for sale'
        if idx + 1 < 1:
            revert with 0, 17
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if msg.value < uint256(sub_6dde1cb0[address(arg1)][idx].field_512):
            revert with 0, 'not enough money to buy'
        if idx + 1 < 1:
            revert with 0, 17
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(sub_6dde1cb0[address(arg1)][idx].field_768):
            revert with 0, 'owner and seller don't match, purchase not allowed!'
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require arg1
        idx = 0
        while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
            if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 50
            if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 5
                idx = idx + 1
                continue 
            if uint256(sub_6dde1cb0[address(arg1)].field_0) < 1:
                revert with 0, 17
            if uint256(sub_6dde1cb0[address(arg1)].field_0) - 1 >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 50
            if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 50
            address(sub_6dde1cb0[address(arg1)][idx].field_0) = address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0)
            uint256(sub_6dde1cb0[address(arg1)][idx].field_256) = uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256)
            uint256(sub_6dde1cb0[address(arg1)][idx].field_512) = uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512)
            address(sub_6dde1cb0[address(arg1)][idx].field_768) = address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768)
            if not uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 49
            address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
            uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
            uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
            address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
            uint256(sub_6dde1cb0[address(arg1)].field_0)--
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value and marketFee > -1 / msg.value:
                revert with 0, 17
            if msg.value < msg.value * marketFee / 100:
                revert with 0, 17
            call address(ext_call.return_data[0]) with:
               value msg.value - (msg.value * marketFee / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(arg2, msg.sender, arg1);
            return 1
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value and marketFee > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * marketFee / 100:
            revert with 0, 17
        call address(ext_call.return_data[0]) with:
           value msg.value - (msg.value * marketFee / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Buy(arg2, msg.sender, arg1);
        return 1
    revert with 0, 'cannot find item for sale'
}

function sub_1a2d059f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require address(arg1)
    mem[64] = (32 * uint256(sub_6dde1cb0[address(arg1)].field_0)) + 128
    mem[96] = uint256(sub_6dde1cb0[address(arg1)].field_0)
    s = 128
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 5)
        _44 = mem[64]
        mem[64] = mem[64] + 128
        mem[_44] = address(sub_6dde1cb0[address(arg1)][idx].field_0)
        mem[_44 + 32] = uint256(sub_6dde1cb0[address(arg1)][idx].field_256)
        mem[_44 + 64] = uint256(sub_6dde1cb0[address(arg1)][idx].field_512)
        mem[_44 + 96] = address(sub_6dde1cb0[address(arg1)][idx].field_768)
        mem[s] = _44
        s = s + 32
        idx = idx + 1
        continue 
    require address(arg1)
    mem[0] = address(arg1)
    mem[32] = 5
    _46 = mem[64]
    mem[64] = mem[64] + (32 * uint256(sub_6dde1cb0[address(arg1)].field_0)) + 32
    mem[_46] = uint256(sub_6dde1cb0[address(arg1)].field_0)
    s = _46 + 32
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 5)
        _84 = mem[64]
        mem[64] = mem[64] + 128
        mem[_84] = address(sub_6dde1cb0[address(arg1)][idx].field_0)
        mem[_84 + 32] = uint256(sub_6dde1cb0[address(arg1)][idx].field_256)
        mem[_84 + 64] = uint256(sub_6dde1cb0[address(arg1)][idx].field_512)
        mem[_84 + 96] = address(sub_6dde1cb0[address(arg1)][idx].field_768)
        mem[s] = _84
        s = s + 32
        idx = idx + 1
        continue 
    _119 = mem[_46]
    idx = 0
    s = 0
    while idx < _119:
        if idx >= mem[_46]:
            revert with 0, 50
        _122 = mem[mem[(32 * idx) + _46 + 32] + 32]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + _46 + 32] + 32]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x6352211e with:
                gas gas_remaining wei
               args _122
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_127] == mem[_127 + 12 len 20]
        if idx >= mem[_46]:
            revert with 0, 50
        if mem[_127 + 12 len 20] != mem[mem[(32 * idx) + _46 + 32] + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            _119 = mem[_46]
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _119 = mem[_46]
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    _124 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        _176 = mem[96]
        idx = 0
        s = 0
        while idx < _176:
            if idx >= mem[96]:
                revert with 0, 50
            _181 = mem[mem[(32 * idx) + 128] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 32]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x6352211e with:
                    gas gas_remaining wei
                   args _181
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_186] == mem[_186 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_186 + 12 len 20] != mem[mem[(32 * idx) + 128] + 108 len 20]:
                if idx == -1:
                    revert with 0, 17
                _176 = mem[96]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            if s >= mem[_124]:
                revert with 0, 50
            mem[(32 * s) + _124 + 32] = mem[(32 * idx) + 128]
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            _176 = mem[96]
            idx = idx + 1
            s = s + 1
            continue 
        _179 = mem[64]
        mem[mem[64]] = 32
        _183 = mem[_124]
        mem[mem[64] + 32] = mem[_124]
        idx = 0
        s = mem[64] + 64
        t = _124 + 32
        while idx < _183:
            _222 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_222 + 32]
            mem[s + 64] = mem[_222 + 64]
            mem[s + 96] = mem[_222 + 108 len 20]
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _179 + (128 * _183) + -mem[64] + 64
    mem[64] = _124 + (32 * s) + 160
    mem[_124 + (32 * s) + 32] = 0
    mem[_124 + (32 * s) + 64] = 0
    mem[_124 + (32 * s) + 96] = 0
    mem[_124 + (32 * s) + 128] = 0
    mem[var28001] = _124 + (32 * s) + 32
    t = var28001
    idx = var28002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_124 + (32 * s) + 32] = 0
        mem[_124 + (32 * s) + 64] = 0
        mem[_124 + (32 * s) + 96] = 0
        mem[_124 + (32 * s) + 128] = 0
        mem[t + 32] = _124 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    _250 = mem[96]
    idx = 0
    s = 0
    while idx < _250:
        if idx >= mem[96]:
            revert with 0, 50
        _254 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64] + 4] = mem[mem[(32 * idx) + 128] + 32]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x6352211e with:
                gas gas_remaining wei
               args _254
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_259] == mem[_259 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_259 + 12 len 20] != mem[mem[(32 * idx) + 128] + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            _250 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        if s >= mem[_124]:
            revert with 0, 50
        mem[(32 * s) + _124 + 32] = mem[(32 * idx) + 128]
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        _250 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    _252 = mem[64]
    mem[mem[64]] = 32
    _256 = mem[_124]
    mem[mem[64] + 32] = mem[_124]
    idx = 0
    s = mem[64] + 64
    t = _124 + 32
    while idx < _256:
        _272 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_272 + 32]
        mem[s + 64] = mem[_272 + 64]
        mem[s + 96] = mem[_272 + 108 len 20]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _252 + (128 * _256) + -mem[64] + 64
}

function listForSale(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if uint8(stor0.field_160):
        revert with 0, 'Contract Paused'
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        idx = 0
        while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
            if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 50
            if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
                if idx == -1:
                    revert with 0, 17
                mem[0] = arg1
                mem[32] = 5
                idx = idx + 1
                continue 
            if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                revert with 0, 50
            require ext_code.size(arg1)
            staticcall arg1.0x6352211e with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(sub_6dde1cb0[address(arg1)][idx].field_768):
                revert with 0, 'Item already listed!'
            require arg3 > 0
            require arg1
            require ext_code.size(arg1)
            staticcall arg1.0x6352211e with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'not allowed to list this item for sale'
            idx = 0
            while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
                if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                    revert with 0, 50
                if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                    revert with 0, 50
                require ext_code.size(arg1)
                staticcall arg1.0x6352211e with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(sub_6dde1cb0[address(arg1)][idx].field_768):
                    idx = 0
                    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
                        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                            revert with 0, 50
                        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
                            if idx == -1:
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 5
                            idx = idx + 1
                            continue 
                        if var100001 < 1:
                            revert with 0, 17
                        if var104002 < var104001:
                            if 1 > !var108002:
                                revert with 0, 17
                            s = var110003 + 1
                            t = var110005
                            u = var110006
                            while s < uint256(stor[t]):
                                if u >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                                    revert with 0, 50
                                address(sub_6dde1cb0[address(arg1)][u].field_0) = address(stor[(4 * s) + sha3(t)])
                                uint256(sub_6dde1cb0[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1])
                                uint256(sub_6dde1cb0[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2])
                                address(sub_6dde1cb0[address(arg1)][u].field_768) = address(stor[(4 * s) + sha3(t) + 3])
                                if u == -1:
                                    revert with 0, 17
                                if uint256(sub_6dde1cb0[address(arg1)].field_0) < 1:
                                    revert with 0, 17
                                if u + 1 < uint256(sub_6dde1cb0[address(arg1)].field_0) - 1:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    mem[0] = arg1
                                    mem[32] = 5
                                    s = u + 2
                                    t = sha3(address(arg1), 5)
                                    u = u + 1
                                    continue 
                                if not uint256(sub_6dde1cb0[address(arg1)].field_0):
                                    revert with 0, 49
                                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
                                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
                                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
                                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
                                uint256(sub_6dde1cb0[address(arg1)].field_0)--
                                uint256(sub_6dde1cb0[address(arg1)].field_0)++
                                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
                                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
                                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
                                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
                                emit 0xd90597e1: arg2, arg3, msg.sender, arg1
                                return 1
                            revert with 0, 50
                        if not uint256(sub_6dde1cb0[address(arg1)].field_0):
                            revert with 0, 49
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(sub_6dde1cb0[address(arg1)].field_0)--
                        uint256(sub_6dde1cb0[address(arg1)].field_0)++
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
                        emit 0xd90597e1: arg2, arg3, msg.sender, arg1
                        return 1
                uint256(sub_6dde1cb0[address(arg1)].field_0)++
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
                emit 0xd90597e1: arg2, arg3, msg.sender, arg1
                return 1
            uint256(sub_6dde1cb0[address(arg1)].field_0)++
            address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
            uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
            uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
            address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
            emit 0xd90597e1: arg2, arg3, msg.sender, arg1
            return 1
        revert with 0, 'Item already listed!'
    require arg3 > 0
    require arg1
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not allowed to list this item for sale'
    idx = 0
    while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
            if idx == -1:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 5
            idx = idx + 1
            continue 
        if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
            revert with 0, 50
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(sub_6dde1cb0[address(arg1)][idx].field_768):
            idx = 0
            while idx < uint256(sub_6dde1cb0[address(arg1)].field_0):
                if idx >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                    revert with 0, 50
                if uint256(sub_6dde1cb0[address(arg1)][idx].field_256) != arg2:
                    if idx == -1:
                        revert with 0, 17
                    mem[0] = arg1
                    mem[32] = 5
                    idx = idx + 1
                    continue 
                if var68001 < 1:
                    revert with 0, 17
                if var72002 < var72001:
                    if 1 > !var76002:
                        revert with 0, 17
                    s = var78003 + 1
                    t = var78005
                    u = var78006
                    while s < uint256(stor[t]):
                        if u >= uint256(sub_6dde1cb0[address(arg1)].field_0):
                            revert with 0, 50
                        address(sub_6dde1cb0[address(arg1)][u].field_0) = address(stor[(4 * s) + sha3(t)])
                        uint256(sub_6dde1cb0[address(arg1)][u].field_256) = uint256(stor[(4 * s) + sha3(t) + 1])
                        uint256(sub_6dde1cb0[address(arg1)][u].field_512) = uint256(stor[(4 * s) + sha3(t) + 2])
                        address(sub_6dde1cb0[address(arg1)][u].field_768) = address(stor[(4 * s) + sha3(t) + 3])
                        if u == -1:
                            revert with 0, 17
                        if uint256(sub_6dde1cb0[address(arg1)].field_0) < 1:
                            revert with 0, 17
                        if u + 1 < uint256(sub_6dde1cb0[address(arg1)].field_0) - 1:
                            if 1 > !(u + 1):
                                revert with 0, 17
                            mem[0] = arg1
                            mem[32] = 5
                            s = u + 2
                            t = sha3(address(arg1), 5)
                            u = u + 1
                            continue 
                        if not uint256(sub_6dde1cb0[address(arg1)].field_0):
                            revert with 0, 49
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
                        uint256(sub_6dde1cb0[address(arg1)].field_0)--
                        uint256(sub_6dde1cb0[address(arg1)].field_0)++
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
                        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
                        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
                        emit 0xd90597e1: arg2, arg3, msg.sender, arg1
                        return 1
                    revert with 0, 50
                if not uint256(sub_6dde1cb0[address(arg1)].field_0):
                    revert with 0, 49
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_0) = 0
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_256) = 0
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_512) = 0
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0) - 1].field_768) = 0
                uint256(sub_6dde1cb0[address(arg1)].field_0)--
                uint256(sub_6dde1cb0[address(arg1)].field_0)++
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
                uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
                address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
                emit 0xd90597e1: arg2, arg3, msg.sender, arg1
                return 1
        uint256(sub_6dde1cb0[address(arg1)].field_0)++
        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
        uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
        address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
        emit 0xd90597e1: arg2, arg3, msg.sender, arg1
        return 1
    uint256(sub_6dde1cb0[address(arg1)].field_0)++
    address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_0) = arg1
    uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_256) = arg2
    uint256(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_512) = arg3
    address(sub_6dde1cb0[address(arg1)][uint256(sub_6dde1cb0[address(arg1)].field_0)].field_768) = msg.sender
    emit 0xd90597e1: arg2, arg3, msg.sender, arg1
    return 1
}



}
