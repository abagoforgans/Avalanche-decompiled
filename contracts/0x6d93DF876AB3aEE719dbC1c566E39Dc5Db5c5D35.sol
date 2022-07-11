contract main {




// =====================  Runtime code  =====================


address owner;
address sub_230e386aAddress;
address sub_12c12248Address;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 sub_f4428671;
uint256 sub_a4fb79fc;
array of uint256 sub_951ad960;

function sub_12c12248(?) payable {
    return sub_12c12248Address
}

function sub_230e386a(?) payable {
    return sub_230e386aAddress
}

function sub_6c0305b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_78a7ed0a(?) payable {
    require calldata.size - 4 >= 32
    return sub_f4428671[arg1]
}

function owner() payable {
    return owner
}

function sub_951ad960(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_951ad960.length
    return sub_951ad960[arg1]
}

function sub_a4fb79fc(?) payable {
    return sub_a4fb79fc
}

function sub_b2292549(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_f4428671(?) payable {
    require calldata.size - 4 >= 32
    return sub_f4428671[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5713aee3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a4fb79fc = arg1
}

function sub_61af9abe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_0e8fc228(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_12c12248Address = address(arg1)
}

function sub_d263e38a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_230e386aAddress = address(arg1)
}

function sub_592093a2(?) payable {
    require calldata.size - 4 >= 32
    if sub_12c12248Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only King Pyro can call this function!'
    if sub_f4428671[arg1] > -2:
        revert with 0, 17
    sub_f4428671[arg1]++
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_590b9195(?) payable {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_230e386aAddress)
    staticcall sub_230e386aAddress.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if not _5:
        revert with 0, 'You don't have any cats!'
    idx = 0
    while idx < _5:
        if idx >= _5:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 5
        if not stor5[mem[(32 * idx) + ceil32(return_data.size) + 128]]:
            if idx >= _5:
                revert with 0, 50
            mem[32] = 5
            stor5[mem[(32 * idx) + ceil32(return_data.size) + 128]] = 1
            if idx >= _5:
                revert with 0, 50
            sub_951ad960.length++
            mem[0] = 8
            sub_951ad960[sub_951ad960.length] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x619cabb5: msg.sender, _5
}

function sub_5d088518(?) payable {
    require calldata.size - 4 >= 32
    if not sub_951ad960.length:
        return address(this.address), 0, 0
    if block.difficulty > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if block.timestamp > !(2 * block.difficulty):
        revert with 0, 17
    if not sub_951ad960.length:
        revert with 0, 18
    if block.timestamp + (2 * block.difficulty) % sub_951ad960.length >= sub_951ad960.length:
        revert with 0, 50
    if 20 > !sub_f4428671[stor8[block.timestamp + (2 * block.difficulty) % stor8.length]]:
        revert with 0, 17
    if sub_f4428671[stor8[block.timestamp + (2 * block.difficulty) % stor8.length]] + 20 <= arg1:
        if block.timestamp + (2 * block.difficulty) > !block.number:
            revert with 0, 17
        if block.timestamp + (2 * block.difficulty) + block.number % 100 <= 0:
            require ext_code.size(sub_230e386aAddress)
            staticcall sub_230e386aAddress.0x6352211e with:
                    gas gas_remaining wei
                   args sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return ext_call.return_data[12 len 20], sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length], 1
    else:
        if 20 > !sub_f4428671[stor8[block.timestamp + (2 * block.difficulty) % stor8.length]]:
            revert with 0, 17
        if sub_f4428671[stor8[block.timestamp + (2 * block.difficulty) % stor8.length]] + 20 < arg1:
            revert with 0, 17
        if block.timestamp + (2 * block.difficulty) > !block.number:
            revert with 0, 17
        if block.timestamp + (2 * block.difficulty) + block.number % 100 <= sub_f4428671[stor8[block.timestamp + (2 * block.difficulty) % stor8.length]] + -arg1 + 20:
            require ext_code.size(sub_230e386aAddress)
            staticcall sub_230e386aAddress.0x6352211e with:
                    gas gas_remaining wei
                   args sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return ext_call.return_data[12 len 20], sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length], 1
    require ext_code.size(sub_230e386aAddress)
    staticcall sub_230e386aAddress.0x6352211e with:
            gas gas_remaining wei
           args sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], sub_951ad960[block.timestamp + (2 * block.difficulty) % sub_951ad960.length], 0
}



}
