contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_5a3cc484Address;
uint256 sub_11318b33;
uint8 stor3;
address sub_30c5f595Address; offset 8

function sub_11318b33(?) {
    return sub_11318b33
}

function sub_30c5f595(?) {
    return sub_30c5f595Address
}

function sub_5a3cc484(?) {
    return sub_5a3cc484Address
}

function paused() {
    return bool(stor3)
}

function destroySmartContract(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'You are not the owner!!!'
    if bool(stor3) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe436f6e7472616374205374617475733a204e6f742d506175736564202d204d7573742066697273742070617573652121,
                    mem[213 len 15]
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'You are not the owner!!!'
    stor3 = uint8(arg1)
}

function getCurrentBalance() {
    if stor0 != msg.sender:
        revert with 0, 'You are not the owner!!!'
    if stor3:
        revert with 0, 'Contract Status: Paused!!!'
    return eth.balance(this.address)
}

function getFunds() payable {
    sub_11318b33 += msg.value
    call sub_5a3cc484Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
