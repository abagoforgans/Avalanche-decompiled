contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address managerAddress;
array of address sub_8e34e138;
mapping of uint8 stor3;

function manager() {
    return managerAddress
}

function verifyUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function sub_8e34e138(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_8e34e138.length
    return sub_8e34e138[arg1]
}

function _fallback() payable {
    revert
}

function exampleFunction() {
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: You need to be whitelisted'
    return 1
}

function addUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function enter() payable {
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: You need to be whitelisted'
    require msg.value > 10^15
    sub_8e34e138.length++
    sub_8e34e138[sub_8e34e138.length] = msg.sender
}

function sub_3fe16e63(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if managerAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor0 = 0
    call address(arg1) with:
       value stor0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
