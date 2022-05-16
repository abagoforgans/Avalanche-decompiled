contract main {




// =====================  Runtime code  =====================


#
#  - sub_c7923c68(?)
#
function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0xb1e04c1319af275d9d3dfa19b6b6f743f0be51c18bd589d059cb130e:
        revert with 0, 17
    return (6181332129 * arg1)
}

function sub_cac0025f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 256
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] == mem[172 len 20]
    _5 = mem[192]
    require mem[192] == mem[204 len 20]
    _6 = mem[224]
    require mem[224] == mem[236 len 20]
    _7 = mem[256]
    _8 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 159 < arg2.length + 128
    _9 = mem[mem[288] + 128]
    if mem[mem[288] + 128] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[288] + 128]) + 160 < 128 or ceil32(arg2.length) + (32 * mem[mem[288] + 128]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[288] + 128]) + 160
    mem[ceil32(arg2.length) + 128] = mem[mem[288] + 128]
    require arg2.length + 32 >= _8 + (32 * _9) + 64
    mem[ceil32(arg2.length) + 160 len 32 * _9] = mem[_8 + 160 len 32 * _9]
    _104 = mem[320]
    require mem[320] <= test266151307()
    require mem[320] + 159 < arg2.length + 128
    _105 = mem[mem[320] + 128]
    if mem[mem[320] + 128] > test266151307():
        revert with 0, 65
    _106 = mem[64]
    if mem[64] + (32 * mem[mem[320] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[320] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[320] + 128]) + 32
    mem[_106] = mem[mem[320] + 128]
    require arg2.length + 32 >= _104 + (32 * _105) + 64
    idx = 0
    s = _104 + 160
    t = _106 + 32
    while idx < _105:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _196 = mem[352]
    require mem[352] <= test266151307()
    require mem[352] + 159 < arg2.length + 128
    _197 = mem[mem[352] + 128]
    if mem[mem[352] + 128] > test266151307():
        revert with 0, 65
    _198 = mem[64]
    if mem[64] + (32 * mem[mem[352] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[352] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[352] + 128]) + 32
    mem[_198] = mem[mem[352] + 128]
    require arg2.length + 32 >= _196 + (32 * _197) + 64
    idx = 0
    s = _196 + 160
    t = _198 + 32
    while idx < _197:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = _7
    mem[mem[64] + 68] = address(_5)
    require ext_code.size(address(_4))
    call address(_4).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(_3), _7, address(_5)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _286 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_286]:
        revert with 0, '1'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_5))
    staticcall address(_5).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _292 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(address(_5))
    call address(_5).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(_6))
    staticcall address(_6).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _300 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if 0 >= mem[ceil32(arg2.length) + 128]:
        revert with 0, 50
    if mem[_300] < mem[ceil32(arg2.length) + 160]:
        revert with 0, '2'
    if 0 >= _197:
        revert with 0, 50
    if 0 >= mem[ceil32(arg2.length) + 128]:
        revert with 0, 50
    _308 = mem[ceil32(arg2.length) + 160]
    mem[mem[64] + 4] = mem[_198 + 44 len 20]
    mem[mem[64] + 36] = _308
    require ext_code.size(address(_6))
    call address(_6).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _308
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _312 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_312] == bool(mem[_312])
    if var162001 < 1:
        revert with 0, 17
    if var166002 >= var166001:
    if var168001 >= mem[_106]:
        revert with 0, 50
    if mem[(32 * var170001) + _106 + 32]:
        if var174003 >= mem[_106]:
            revert with 0, 50
        if not mem[(32 * var176001) + _106 + 32]:
            if var180004 < _197:
                if 1 > !var184002:
                    revert with 0, 17
                idx = var186003 + 1
                s = var186007
                t = var186009
                u = var186011
                u = var186012
                while idx < _197:
                    _1643 = mem[(32 * idx) + _198 + 32]
                    _1645 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1645 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1645 + 36] = s
                    mem[_1645 + 68] = 0
                    mem[_1645 + 100] = address(_1643)
                    mem[_1645 + 132] = 128
                    mem[_1645 + 164] = mem[_1645]
                    idx = 0
                    while idx < mem[_1645]:
                        mem[idx + _1645 + 196] = mem[idx + _1645 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(mem[_1645]) > mem[_1645]:
                        mem[_1645 + mem[_1645] + 196] = 0
                    require ext_code.size(t)
                    call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args s, 0, address(_1643), 128, mem[_1645], mem[_1645 + 196 len ceil32(mem[_1645])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if u == -1:
                        revert with 0, 17
                    if mem[_198] < 1:
                        revert with 0, 17
                    if u + 1 >= mem[_198] - 1:
                    if u + 1 >= mem[_106]:
                        revert with 0, 50
                    if mem[(32 * u + 1) + _106 + 32]:
                        if u + 1 >= mem[_106]:
                            revert with 0, 50
                        if mem[(32 * u + 1) + _106 + 32]:
                            if 1 > !(u + 1):
                                revert with 0, 17
                            if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                revert with 0, 50
                        if u + 1 >= mem[_198]:
                            revert with 0, 50
                        if 1 > !(u + 1):
                            revert with 0, 17
                        idx = u + 2
                        s = 0
                        t = mem[(32 * u + 1) + _198 + 44 len 20]
                        u = 0
                        u = u + 1
                        continue 
                    if 1 > !(u + 1):
                        revert with 0, 17
                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if u + 1 >= mem[_106]:
                        revert with 0, 50
                    if mem[(32 * u + 1) + _106 + 32]:
                        if 1 > !(u + 1):
                            revert with 0, 17
                        if u + 2 >= mem[ceil32(arg2.length) + 128]:
                            revert with 0, 50
                    if u + 1 >= mem[_198]:
                        revert with 0, 50
                    if 1 > !(u + 1):
                        revert with 0, 17
                    idx = u + 2
                    s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                    t = mem[(32 * u + 1) + _198 + 44 len 20]
                    u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                    u = u + 1
                    continue 
            revert with 0, 50
        if 1 > !var184002:
            revert with 0, 17
        if var188001 >= mem[ceil32(arg2.length) + 128]:
            revert with 0, 50
        if var187004 >= _197:
            revert with 0, 50
        if 1 > !var191002:
            revert with 0, 17
        # nil
    else:
        if 1 > !var174002:
            revert with 0, 17
        if var178001 >= mem[ceil32(arg2.length) + 128]:
            revert with 0, 50
        if var177003 >= mem[_106]:
            revert with 0, 50
        if mem[(32 * var179001) + _106 + 32]:
            if 1 > !var187002:
                revert with 0, 17
            if var191001 >= mem[ceil32(arg2.length) + 128]:
                revert with 0, 50
            # nil
        else:
            if var183004 >= _197:
                revert with 0, 50
            if 1 > !var187002:
                revert with 0, 17
            # nil
}



}
