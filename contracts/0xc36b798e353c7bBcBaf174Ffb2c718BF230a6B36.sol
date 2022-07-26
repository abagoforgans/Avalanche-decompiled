contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
mapping of uint256 claims;
mapping of uint8 stor4;
uint256 stor5;
array of uint256 stor6;

function hasClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function claims(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claims[arg1]
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function sub_d079da68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return claims[address(arg1)]
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    if msg.sender == arg1:
        revert with 0, 'Admin: You are already an admin!'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    if stor1 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERROR: You cannot remove contract owner as admin.'
    stor0[address(arg1)] = 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_121cf3f2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    stor6.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor6[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
}

function claim() payable {
    if not claims[msg.sender]:
        revert with 0, 'ERROR: Nothing to claim'
    if stor4[msg.sender]:
        revert with 0, 'ERROR: Already claimed'
    idx = 0
    while idx < claims[msg.sender]:
        if stor5 >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor6[stor5]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, stor6[stor5]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 1 > !stor5:
            revert with 0, 17
        stor5++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_89c292b1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        claims[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
