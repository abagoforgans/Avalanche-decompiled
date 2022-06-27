contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_f507789d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    stor1 = address(arg1)
}

function test(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg1.length) + 97] = 0x2a30348b00000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + 101] = 32
    mem[floor32(arg1.length) + 133] = arg1.length
    mem[floor32(arg1.length) + 165 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
    require ext_code.size(stor1)
    call stor1.earnMany(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=mem[floor32(arg1.length) + 165 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
