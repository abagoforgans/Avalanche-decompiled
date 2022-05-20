contract main {




// =====================  Runtime code  =====================


address sub_f10e38afAddress;
address tokenAddress;

function getTokenAddress() payable {
    return tokenAddress
}

function sub_f10e38af(?) payable {
    return sub_f10e38afAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    tokenAddress = arg1
    sub_f10e38afAddress = arg1
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
        require ext_code.size(sub_f10e38afAddress)
        call sub_f10e38afAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
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
