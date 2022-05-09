contract main {




// =====================  Runtime code  =====================


address owner;
address sub_00499e1eAddress;
address sub_6bac7483Address;
uint256 stor3;
uint16 stor4;

function sub_00499e1e(?) payable {
    return sub_00499e1eAddress
}

function sub_6bac7483(?) payable {
    return sub_6bac7483Address
}

function owner() payable {
    return owner
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

function setMintPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function sub_5c544560(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint16(arg1)
}

function setUtilityToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00499e1eAddress = arg1
}

function sub_80d29e66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6bac7483Address = address(arg1)
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

function random(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg1 >= 4
    if arg1 < 2:
        revert with 'NH{q', 17
    if arg1 < 3:
        revert with 'NH{q', 17
    if arg1 < 1:
        revert with 'NH{q', 17
    return sha3(block.hash(arg1 - 4), tx.origin, block.hash(arg1 - 2), block.hash(arg1 - 3), block.hash(arg1 - 1), arg3, arg2)
}

function sub_ba5cebcc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg1 >= 4
    if arg1 < 2:
        revert with 'NH{q', 17
    if arg1 < 3:
        revert with 'NH{q', 17
    if arg1 < 1:
        revert with 'NH{q', 17
    if uint16(sha3(block.hash(arg1 - 4), tx.origin, block.hash(arg1 - 2), block.hash(arg1 - 3), block.hash(arg1 - 1), arg3, arg2)) % 10:
        return not uint16(sha3(block.hash(arg1 - 4), tx.origin, block.hash(arg1 - 2), block.hash(arg1 - 3), block.hash(arg1 - 1), arg3, arg2)) % 10
    return not not sha3(block.hash(arg1 - 4), tx.origin, block.hash(arg1 - 2), block.hash(arg1 - 3), block.hash(arg1 - 1), arg3, arg2) % 2048 >> 245 % 10
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_00499e1eAddress)
    staticcall sub_00499e1eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    require ext_code.size(sub_00499e1eAddress)
    call sub_00499e1eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function safeMint() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_00499e1eAddress)
    staticcall sub_00499e1eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor3:
        revert with 0, 'Not enough game token balance'
    require ext_code.size(sub_6bac7483Address)
    staticcall sub_6bac7483Address.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] > 65534:
        revert with 'NH{q', 17
    require block.number >= 4
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), uint16(ext_call.return_data[0]) + 1 << 240, block.timestamp)) % 10:
        revert with 0, 'Better luck next time'
    if not sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), uint16(ext_call.return_data[0]) + 1 << 240, block.timestamp) % 2048 >> 245 % 10:
        revert with 0, 'Better luck next time'
    require ext_code.size(sub_00499e1eAddress)
    call sub_00499e1eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_065035fa(?) payable {
    require ext_code.size(sub_6bac7483Address)
    staticcall sub_6bac7483Address.minted() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    idx = 0
    s = 0
    while uint8(idx) < 3:
        if block.number > -2:
            revert with 'NH{q', 17
        if block.timestamp > -stor4 - 1:
            revert with 'NH{q', 17
        if block.timestamp + stor4 < 1:
            revert with 'NH{q', 17
        if block.timestamp + stor4 > -uint8(idx):
            revert with 'NH{q', 17
        if uint16(ext_call.return_data[0]) > 65534:
            revert with 'NH{q', 17
        require block.number + 1 >= 4
        if block.number + 1 < 2:
            revert with 'NH{q', 17
        if block.number + 1 < 3:
            revert with 'NH{q', 17
        if block.number + 1 < 1:
            revert with 'NH{q', 17
        mem[mem[64] + 32] = block.hash(block.number - 3)
        mem[mem[64] + 64] = tx.origin
        mem[mem[64] + 84] = block.hash(block.number - 1)
        mem[mem[64] + 116] = block.hash(block.number - 2)
        mem[mem[64] + 148] = block.hash(block.number)
        mem[mem[64] + 180] = uint16(uint16(ext_call.return_data[0]) + 1)
        mem[mem[64] + 212] = block.timestamp + stor4 + uint8(idx) - 1
        _12 = mem[64]
        mem[mem[64]] = 212
        mem[64] = mem[64] + 244
        if uint16(sha3(mem[_12 + 32 len mem[_12]])) % 10:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            continue 
        if not sha3(mem[_12 + 32 len mem[_12]]) % 2048 >> 245 % 10:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = s
            continue 
        if uint16(s) == 65535:
            revert with 'NH{q', 17
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = uint16(s) + 1
        continue 
    return uint16(s)
}



}
