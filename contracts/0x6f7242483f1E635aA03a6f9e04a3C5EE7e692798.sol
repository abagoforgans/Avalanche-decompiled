contract main {




// =====================  Runtime code  =====================


function sub_87792be5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require sha3(block.timestamp, block.difficulty, msg.sender) % 101 == 100
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(0x7cfce9ab543917acc25a5bdf35287f2767b822fd)
    call 0x7cfce9ab543917acc25a5bdf35287f2767b822fd.0xb69a922 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 'NH{q', 18
    return (sha3(block.timestamp, block.difficulty, msg.sender) % arg1)
}



}
