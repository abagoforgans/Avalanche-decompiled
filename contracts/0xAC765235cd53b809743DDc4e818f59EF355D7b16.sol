contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;
address stor2;
mapping of uint256 claims;
mapping of uint8 stor4;
array of uint256 stor6;
array of address stor7;

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

function sub_fd2c0783(?) payable {
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    idx = 0
    while idx < stor7.length:
        if idx >= stor6.length:
            revert with 0, 50
        mem[0] = 6
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(stor7[idx])
        mem[164] = stor6[idx]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor7[idx]), stor6[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_643d2f5b(?) payable {
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
    stor7.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(stor7[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
}



}
