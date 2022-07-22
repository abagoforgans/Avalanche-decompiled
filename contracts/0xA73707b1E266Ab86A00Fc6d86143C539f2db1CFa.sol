contract main {




// =====================  Runtime code  =====================


const sub_a9898fd9(?) = 4000


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint8 stor4; offset 48
uint32 sub_04285a0c;
uint32 sub_79aee341; offset 24
uint256 stor4; offset 48
mapping of uint256 addressToId;
uint256 sub_00dc8136;
address sub_6a78a216Address;
uint8 stor8; offset 160
uint128 stor8; offset 160
address sub_5c44ea0eAddress;

function sub_00dc8136(?) payable {
    return sub_00dc8136
}

function sub_04285a0c(?) payable {
    return sub_04285a0c
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function hasMinted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_5c44ea0e(?) payable {
    return sub_5c44ea0eAddress
}

function sub_6a78a216(?) payable {
    return sub_6a78a216Address
}

function sub_79aee341(?) payable {
    return sub_79aee341
}

function owner() payable {
    return owner
}

function addressToId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressToId[arg1]
}

function sub_d9e7fef2(?) payable {
    return bool(uint8(stor4.field_48))
}

function reserved(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_ff057705(?) payable {
    return bool(uint8(stor8.field_160))
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

function sub_c8747eed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, bool(arg1))
    Mask(208, 0, stor4.field_48) = Mask(208, 0, bool(arg2))
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

function sub_8992d06a(?) payable {
    if not addressToId[address(msg.sender)]:
        revert with 0, 'NOTHING IS ASSIGNED'
    if stor2[address(msg.sender)]:
        revert with 0, 'ALREADY MINTED'
    require ext_code.size(sub_5c44ea0eAddress)
    call sub_5c44ea0eAddress.0xae1c64b3 with:
         gas gas_remaining wei
        args msg.sender, addressToId[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(msg.sender)] = 1
    if sub_79aee341 == 16777215:
        revert with 'NH{q', 17
    sub_79aee341 = sub_79aee341 + 1 % 16777216
    emit Claimed(msg.sender, addressToId[address(msg.sender)], block.timestamp);
}

function updateWhiteList(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b15d8faa(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'NOT THE SAME LENGTH'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        addressToId[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6b466d5a(?) payable {
    if bool(uint8(stor4.field_48)) != 1:
        revert with 0, 'RESERVE NOT OPEN'
    if sub_04285a0c >= 4000:
        revert with 0, 'Max reserve hit'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_00dc8136:
        revert with 0, 'NOT ENOUGH EGG'
    if not uint8(stor8.field_160):
        if bool(stor1[address(msg.sender)]) != 1:
            revert with 0, 'NOT IN WHITELIST'
    if stor3[address(msg.sender)]:
        revert with 0, 'ALREADY RESERVED'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, sub_00dc8136
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[address(msg.sender)] = 1
    if sub_04285a0c == 16777215:
        revert with 'NH{q', 17
    sub_04285a0c = sub_04285a0c + 1 % 16777216
    emit Reserved(msg.sender, block.timestamp);
}



}
