contract main {




// =====================  Runtime code  =====================


#
#  - getPairInfo(address arg1)
#
function _fallback() payable {
    revert
}

function getPairReserves(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, block.timestamp
}

function sub_a453a1ce(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + 101] = cd[36]
    mem[ceil32(32 * ('cd', 68).length) + 133] = 64
    mem[ceil32(32 * ('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = ceil32(32 * ('cd', 68).length) + 197
    t = 128
    while idx < ('cd', 68).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 68).length, data=mem[ceil32(32 * ('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _31 = mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 68).length) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128
    _32 = mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 32 * _32] = mem[ceil32(32 * ('cd', 68).length) + _31 + 129 len 32 * _32]
    if 0 >= _32:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
    emit 0x55ece6c4: mem[mem[64]], block.timestamp
}

function sub_9b36ea03(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + 101] = cd[36]
    mem[ceil32(32 * ('cd', 68).length) + 133] = 64
    mem[ceil32(32 * ('cd', 68).length) + 165] = ('cd', 68).length
    idx = 0
    s = ceil32(32 * ('cd', 68).length) + 197
    t = 128
    while idx < ('cd', 68).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36], Array(len=('cd', 68).length, data=mem[ceil32(32 * ('cd', 68).length) + 197 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _33 = mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 68).length) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 128
    _34 = mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97 len 4], Mask(224, 32, cd[36]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = _34
    require _33 + (32 * _34) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 32 * _34] = mem[ceil32(32 * ('cd', 68).length) + _33 + 129 len 32 * _34]
    if _34 < 1:
        revert with 0, 17
    if _34 - 1 >= _34:
        revert with 0, 50
    mem[mem[64]] = mem[(32 * _34 - 1) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129]
    emit 0x55ece6c4: mem[mem[64]], block.timestamp
}



}
