contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
mapping of uint8 stor3;
mapping of uint256 balances;
address stor5;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function owner() {
    return owner
}

function sub_d75e1386(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    return bool(stor3[arg1][arg2])
}

function controllers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor5 = stor2
    stor1[stor0] = 1
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

function sub_b4fad1b5(?) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[address(msg.sender)] = 0
}

function sub_9e1fe14c(?) {
    require calldata.size - 4 >= 96
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = sha3(cd[4] << 248, 3)
        stor3[cd[4] << 248][cd[((32 * idx) + cd[36] + 36)]] = uint8(bool(cd[68]))
        idx = idx + 1
        continue 
}

function getTokenId() {
    require ext_code.size(stor5)
    staticcall stor5.0x5b449c4e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 1 < 1:
        revert with 'NH{q', 17
    if 10000 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not -ext_call.return_data[0] + 10000:
        revert with 'NH{q', 18
    mem[ceil32(return_data.size) + 216] = sha3(block.timestamp, msg.sender, block.hash(block.number)) % -ext_call.return_data[0] + 10000
    require ext_code.size(stor5)
    staticcall stor5.0xc1608d6b with:
            gas gas_remaining wei
           args (sha3(block.timestamp, msg.sender, block.hash(block.number)) % -ext_call.return_data[0] + 10000)
    mem[ceil32(return_data.size) + 212] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
    else:
        mem[(2 * ceil32(return_data.size)) + 212] = sha3(block.timestamp, msg.sender, block.hash(block.number)) % -ext_call.return_data[0] + 10000
    return memory
      from (2 * ceil32(return_data.size)) + 212
       len ceil32(return_data.size) + 32
}

function sub_44769c4a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    idx = arg1
    while uint8(idx) < 5:
        mem[0] = uint8(idx)
        mem[32] = 3
        require ext_code.size(stor5)
        staticcall stor5.0x5b449c4e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_29]
        require mem[_29] == mem[_29]
        if mem[_29] > -2:
            revert with 'NH{q', 17
        if mem[_29] + 1 < 1:
            revert with 'NH{q', 17
        _32 = mem[64]
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = block.hash(block.number)
        _33 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _35 = sha3(mem[_33 + 32 len mem[_33]])
        if 10000 < _30:
            revert with 'NH{q', 17
        if not -_30 + 10000:
            revert with 'NH{q', 18
        mem[_32 + 120] = sha3(mem[_33 + 32 len mem[_33]]) % -_30 + 10000
        require ext_code.size(stor5)
        staticcall stor5.0xc1608d6b with:
                gas gas_remaining wei
               args (_35 % -_30 + 10000)
        mem[_32 + 116] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _32 + ceil32(return_data.size) + 116
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[0] = ext_call.return_data[0]
            mem[32] = sha3(idx << 248, 3)
            if not stor3[idx << 248][ext_call.return_data[0]]:
                idx = idx + 1
                continue 
        else:
            mem[0] = _35 % -_30 + 10000
            mem[32] = sha3(idx << 248, 3)
            if not stor3[idx << 248][_35 % -_30 + 10000]:
                idx = idx + 1
                continue 
        return 1
    return 0
}

function sub_cad9ba1a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if balances[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] += msg.value
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    idx = arg1
    while uint8(idx) < 5:
        mem[0] = uint8(idx)
        mem[32] = 3
        require ext_code.size(stor5)
        staticcall stor5.0x5b449c4e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _35 = mem[_34]
        require mem[_34] == mem[_34]
        if mem[_34] > -2:
            revert with 'NH{q', 17
        if mem[_34] + 1 < 1:
            revert with 'NH{q', 17
        _36 = mem[64]
        mem[mem[64] + 32] = block.timestamp
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = block.hash(block.number)
        _37 = mem[64]
        mem[mem[64]] = 84
        mem[64] = mem[64] + 116
        _39 = sha3(mem[_37 + 32 len mem[_37]])
        if 10000 < _35:
            revert with 'NH{q', 17
        if not -_35 + 10000:
            revert with 'NH{q', 18
        mem[_36 + 120] = sha3(mem[_37 + 32 len mem[_37]]) % -_35 + 10000
        require ext_code.size(stor5)
        staticcall stor5.0xc1608d6b with:
                gas gas_remaining wei
               args (_39 % -_35 + 10000)
        mem[_36 + 116] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _36 + ceil32(return_data.size) + 116
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            mem[0] = ext_call.return_data[0]
            mem[32] = sha3(idx << 248, 3)
            if not stor3[idx << 248][ext_call.return_data[0]]:
                idx = idx + 1
                continue 
        else:
            mem[0] = _39 % -_35 + 10000
            mem[32] = sha3(idx << 248, 3)
            if not stor3[idx << 248][_39 % -_35 + 10000]:
                idx = idx + 1
                continue 
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        balances[address(msg.sender)] = 0
}



}
