contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_dedf14b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_6aae5cda(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'CollectionsRegistry: sender is not the collection contract owner'
    stor0[address(arg1)] = 1
    emit 0x6fe041da: msg.sender, address(arg1)
}

function sub_05d4bc90(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = bool(stor0[address(cd[((32 * idx) + cd[4] + 36)])])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 128] = 32
    mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * ('cd', 4).length) + -mem[64] + 192
}



}
