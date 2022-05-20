contract main {




// =====================  Runtime code  =====================


#
#  - sub_4b007dbb(?)
#
uint256 stor0;

function withdraw() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function _fallback() payable {
    if stor0 <= 0:
        revert with 0, '__b'
    emit 0x49df34c0: 1638
    mem[228 len 128] = withdrawETH(address arg1, uint256 arg2, address arg3), 0x70bbe4a294878a14cb3cdd93, 238313827, stor0, address(this.address), mem[228 len 28]
    call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 96]
}



}
