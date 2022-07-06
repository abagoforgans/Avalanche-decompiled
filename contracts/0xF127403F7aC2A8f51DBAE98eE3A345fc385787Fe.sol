contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 stor3;
array of address stor4;
address stor5;

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

function sub_e52927f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
}

function sub_386ffa0c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4.length++
    stor4[stor4.length] = address(arg1)
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor3.length++
        mem[0] = 3
        stor3[stor3.length] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
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
    staticcall stor5.0x5b449c4e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < 5:
        revert with 0, 17
    if not stor3.length:
        revert with 0, 18
    if not stor4.length:
        revert with 0, 18
    if sha3(block.hash(block.number - 5), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], block.timestamp, tx.origin) % stor3.length >= stor3.length:
        revert with 0, 50
    if sha3(block.hash(block.number - 5), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], block.timestamp, tx.origin) % stor4.length >= stor4.length:
        revert with 0, 50
    return sha3(block.timestamp, block.hash(block.number), stor3[sha3(block.hash(block.number - 5), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], block.timestamp, tx.origin) % stor3.length], ext_call.return_data[0], sha3(block.hash(block.number - 5), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], block.timestamp, tx.origin), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, stor4[sha3(block.hash(block.number - 5), 0xfe41736761726449735468654265737450726f6a6563744f6e4176616c616e636865406d65313534333233323937392140232523, mem[(2 * ceil32(return_data.size)) + 180 len 12] >> 160, ext_call.return_data[0], block.timestamp, tx.origin) % stor4.length], tx.origin)
}



}
