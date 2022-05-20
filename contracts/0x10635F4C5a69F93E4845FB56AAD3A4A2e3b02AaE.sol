contract main {




// =====================  Runtime code  =====================


address sub_9bb5cd3fAddress;
address sub_ce27cdb2Address;

function sub_9bb5cd3f(?) payable {
    return sub_9bb5cd3fAddress
}

function sub_ce27cdb2(?) payable {
    return sub_ce27cdb2Address
}

function _fallback() payable {
    revert
}

function sub_1319e7e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_ce27cdb2Address = address(arg1)
    sub_9bb5cd3fAddress = address(arg1)
}

function sub_58d49855(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 > test266151307() or ceil32(32 * ('cd', 100).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
    s = 128
    idx = cd[100] + 36
    while idx < (32 * ('cd', 100).length) + cd[100] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx <= cd[68]:
        if idx >= mem[96]:
            revert with 0, 50
        _11 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 100).length) + 97] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 100).length) + 101] = address(cd[4])
        mem[ceil32(32 * ('cd', 100).length) + 133] = address(cd[36])
        mem[ceil32(32 * ('cd', 100).length) + 165] = _11
        require ext_code.size(sub_9bb5cd3fAddress)
        call sub_9bb5cd3fAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(cd[4]), address(cd[36]), _11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
