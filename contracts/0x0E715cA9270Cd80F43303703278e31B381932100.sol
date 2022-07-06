contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 stor3;
address stor4;

function owner() payable {
    return owner
}

function allowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_386ffa0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = address(arg1)
}

function sub_9ae13df5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2[address(arg1)]) = not uint8(stor2[address(arg1)]) or Mask(248, 8, uint256(stor2[address(arg1)]))
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

function sub_a027c486(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
}

function enoughRandom() payable {
    if not uint8(stor2[msg.sender]):
        if owner != msg.sender:
            revert with 0, 'Access denied'
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 0x90f28160fb5d89c507e329076d99cb8297e9fb1f.0x5b449c4e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3.length:
        revert with 0, 18
    if sha3(block.hash(block.number), stor4, 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 178 len 14] >> 144, ext_call.return_data[0]) % stor3.length >= stor3.length:
        revert with 0, 50
    return sha3(block.timestamp, block.hash(block.number), stor3[sha3(block.hash(block.number), stor4, 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 178 len 14] >> 144, ext_call.return_data[0]) % stor3.length], ext_call.return_data[0], sha3(block.hash(block.number), stor4, 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 178 len 14] >> 144, ext_call.return_data[0]), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 178 len 14] >> 144)
}



}
