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
    while idx < 1:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = stor7[idx]
        mem[164] = stor6[idx]
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor7[idx], stor6[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5684b33c(?) payable {
    require calldata.size - 4 >= 64
    require calldata.size >= 36
    require calldata.size >= 68
    if not stor0[msg.sender]:
        revert with 0, 'Admin: caller is not a admin!'
    s = 6
    idx = 4
    while 36 > idx:
        uint256(stor[s]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while 7 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    s = 7
    idx = 36
    while 68 > idx:
        address(stor[s]) = address(cd[idx])
        s = s + 1
        idx = idx + 32
        continue 
    idx = 8
    while 8 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
}



}
