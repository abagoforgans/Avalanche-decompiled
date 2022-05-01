contract main {




// =====================  Runtime code  =====================


const sub_1f560cf9(?) = 0x70bbe4a294878a14cb3cdd9315f5eb490e346163

const oracle = 0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8

const sub_d3a86817(?) = 5000


function _fallback() payable {
    revert
}

function sub_e5977729(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '48', 0
    return ((10000 * ext_call.return_data[0]) + 5000 / 10000)
}

function sub_d31cab71(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[(32 * ('cd', 36).length) + 224] = 0
    mem[(32 * ('cd', 36).length) + 256] = 0
    mem[(32 * ('cd', 36).length) + 288] = 0
    mem[(32 * ('cd', 36).length) + 320] = 0
    mem[(32 * ('cd', 36).length) + 352] = 0
    mem[(32 * ('cd', 36).length) + 384] = 0
    mem[(32 * ('cd', 36).length) + 416] = 0
    mem[(32 * ('cd', 36).length) + 448] = 0
    mem[(32 * ('cd', 36).length) + 480] = 0
    mem[(32 * ('cd', 36).length) + 512] = 0
    mem[(32 * ('cd', 36).length) + 544] = 0
    mem[(32 * ('cd', 36).length) + 576] = 0
    mem[(32 * ('cd', 36).length) + 608] = 0
    mem[(32 * ('cd', 36).length) + 640] = 0
    mem[(32 * ('cd', 36).length) + 672] = 0
    mem[(32 * ('cd', 36).length) + 704] = 0
    mem[(32 * ('cd', 36).length) + 740] = address(cd[4])
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getUserConfiguration(address arg1) with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(32 * ('cd', 36).length) + 736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((32 * ('cd', 36).length) + ceil32(return_data.size) + 768 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 736] = ext_call.return_data[0]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 768
    require return_data.size >= 32
    _382 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768]
    require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] <= test266151307()
    require (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 799 < (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 768
    _383 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]
    require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768] <= test266151307()
    require (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]) + 800 <= test266151307() and (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]) + 32 >= 0
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 768] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]
    require _382 + (32 * _383) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 36).length) + ceil32(return_data.size) + _382 + 800
    t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 800
    while idx < _383:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 736]:
        # nil
    else:
        return 0, 0, 0, 0, -1
}

function sub_63c56c40(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getUserConfiguration(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 960 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 992 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_code.size(0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8)
    staticcall 0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8.getAssetPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if uint8(ext_call.return_data[352]) >= 128:
        revert with 0, '77', 0
    if not Mask(16, 16, ext_call.return_data[0]):
        if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
            return 0
        require ext_code.size(address(ext_call.return_data[256]))
        staticcall address(ext_call.return_data[256]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[288]))
        staticcall address(ext_call.return_data[288]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                return 0, 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
        else:
            if ext_call.return_data[0]:
                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                    return 0, 
                           (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    else:
        if not bool(Mask(256, -(2 * uint8(ext_call.return_data[352])) - 1, ext_call.return_data[0]) >> (2 * uint8(ext_call.return_data[352])) + 1):
            if uint8(ext_call.return_data[352]) >= 128:
                revert with 0, '77', 0
            if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
                return 0
            require ext_code.size(address(ext_call.return_data[256]))
            staticcall address(ext_call.return_data[256]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[288]))
            staticcall address(ext_call.return_data[288]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                    return 0, 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
            else:
                if ext_call.return_data[0]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                        return 0, 
                               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
        else:
            require ext_code.size(address(ext_call.return_data[224]))
            staticcall address(ext_call.return_data[224]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                    if uint8(ext_call.return_data[352]) >= 128:
                        revert with 0, '77', 0
                    if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
                        return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0
                    require ext_code.size(address(ext_call.return_data[256]))
                    staticcall address(ext_call.return_data[256]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[288]))
                    staticcall address(ext_call.return_data[288]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                            return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
                    else:
                        if ext_call.return_data[0]:
                            if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                                return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
                                       (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
            else:
                if ext_call.return_data[0]:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                        if uint8(ext_call.return_data[352]) >= 128:
                            revert with 0, '77', 0
                        if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
                            return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0
                        require ext_code.size(address(ext_call.return_data[256]))
                        staticcall address(ext_call.return_data[256]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(address(ext_call.return_data[288]))
                        staticcall address(ext_call.return_data[288]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                                return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
                                       0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
                        else:
                            if ext_call.return_data[0]:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                                    return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
                                           (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    revert
}

function sub_836fc08d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
    staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getReserveData(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 384
        require bool(ceil32(return_data.size) + 896 <= test266151307())
        require return_data.size >= 32
        require bool(ceil32(return_data.size) + 928 <= test266151307())
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
        require ext_call.return_data[64] == ext_call.return_data[80 len 16]
        require ext_call.return_data[96] == ext_call.return_data[112 len 16]
        require ext_call.return_data[128] == ext_call.return_data[144 len 16]
        require ext_call.return_data[160] == ext_call.return_data[176 len 16]
        require ext_call.return_data[192] == ext_call.return_data[219 len 5]
        require ext_call.return_data[224] == ext_call.return_data[236 len 20]
        require ext_call.return_data[256] == ext_call.return_data[268 len 20]
        require ext_call.return_data[288] == ext_call.return_data[300 len 20]
        require ext_call.return_data[320] == ext_call.return_data[332 len 20]
        require ext_call.return_data[352] == ext_call.return_data[383 len 1]
        require ext_code.size(0x70bbe4a294878a14cb3cdd9315f5eb490e346163)
        staticcall 0x70bbe4a294878a14cb3cdd9315f5eb490e346163.getReserveData(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 384
            require bool((2 * ceil32(return_data.size)) + 1728 <= test266151307())
            require return_data.size >= 32
            require bool((2 * ceil32(return_data.size)) + 1760 <= test266151307())
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[48 len 16]
            require ext_call.return_data[64] == ext_call.return_data[80 len 16]
            require ext_call.return_data[96] == ext_call.return_data[112 len 16]
            require ext_call.return_data[128] == ext_call.return_data[144 len 16]
            require ext_call.return_data[160] == ext_call.return_data[176 len 16]
            require ext_call.return_data[192] == ext_call.return_data[219 len 5]
            require ext_call.return_data[224] == ext_call.return_data[236 len 20]
            require ext_call.return_data[256] == ext_call.return_data[268 len 20]
            require ext_call.return_data[288] == ext_call.return_data[300 len 20]
            require ext_call.return_data[320] == ext_call.return_data[332 len 20]
            require ext_call.return_data[352] == ext_call.return_data[383 len 1]
            require ext_code.size(address(ext_call.return_data[224]))
            staticcall address(ext_call.return_data[224]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8)
                staticcall 0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8.getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8)
                    staticcall 0x89fc4fa08b5fcb8fa9538d6cc25b638370fc26d8.getAssetPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0]
                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0]
                                    if ext_call.return_data[0] * arg4 / ext_call.return_data[0] != arg4:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    else:
                                        if ext_call.return_data[0] * arg4:
                                            require ext_call.return_data[0] * arg4
                                            if ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * arg4 != 10^ext_call.return_data[25 len 1]:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            else:
                                                if not ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1]:
                                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    else:
                                                        require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= ext_call.return_data[0]:
                                                            return 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1], arg4
                                                        else:
                                                            if ext_call.return_data[0]:
                                                                require ext_call.return_data[0]
                                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if ext_call.return_data[0]:
                                                                        require ext_call.return_data[0]
                                                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                                require ext_call.return_data[0] * ext_call.return_data[0]
                                                                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                                    else:
                                                                                        require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                        if not Mask(16, 32, ext_call.return_data[0]):
                                                                                            revert with 0, '50', 0
                                                                                        else:
                                                                                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                                revert with 0, '48', 0
                                                                                            else:
                                                                                                require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                                return ext_call.return_data[0], 
                                                                                                       (10000 * ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                            else:
                                                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                else:
                                                                                    require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                    if not Mask(16, 32, ext_call.return_data[0]):
                                                                                        revert with 0, '50', 0
                                                                                    else:
                                                                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                            revert with 0, '48', 0
                                                                                        else:
                                                                                            require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                            return ext_call.return_data[0], 
                                                                                                   (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                    else:
                                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        else:
                                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                            if not Mask(16, 32, ext_call.return_data[0]):
                                                                                revert with 0, '50', 0
                                                                            else:
                                                                                if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                    revert with 0, '48', 0
                                                                                else:
                                                                                    require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                    return ext_call.return_data[0], 
                                                                                           (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        else:
                                                                            require ext_call.return_data[0] * ext_call.return_data[0]
                                                                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                else:
                                                    if Mask(16, 32, ext_call.return_data[0]):
                                                        require ext_call.return_data[26 len 2]
                                                        if ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] > -5001 / ext_call.return_data[26 len 2]:
                                                            revert with 0, '48', 0
                                                        else:
                                                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                revert with 0, 'SafeMath: division by zero', 0
                                                            else:
                                                                require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                if (ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] * ext_call.return_data[26 len 2]) + 5000 / 10000 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= ext_call.return_data[0]:
                                                                    return (ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] * ext_call.return_data[26 len 2]) + 5000 / 10000 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1], 
                                                                           arg4
                                                                else:
                                                                    if ext_call.return_data[0]:
                                                                        require ext_call.return_data[0]
                                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                require ext_call.return_data[0]
                                                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                                                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                                        else:
                                                                                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                                            else:
                                                                                                require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                                if not Mask(16, 32, ext_call.return_data[0]):
                                                                                                    revert with 0, '50', 0
                                                                                                else:
                                                                                                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                                        revert with 0, '48', 0
                                                                                                    else:
                                                                                                        require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                                        return ext_call.return_data[0], 
                                                                                                               (10000 * ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                    else:
                                                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                                        else:
                                                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                            if not Mask(16, 32, ext_call.return_data[0]):
                                                                                                revert with 0, '50', 0
                                                                                            else:
                                                                                                if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                                    revert with 0, '48', 0
                                                                                                else:
                                                                                                    require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                                    return ext_call.return_data[0], 
                                                                                                           (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                            else:
                                                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                else:
                                                                                    require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                    if not Mask(16, 32, ext_call.return_data[0]):
                                                                                        revert with 0, '50', 0
                                                                                    else:
                                                                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                            revert with 0, '48', 0
                                                                                        else:
                                                                                            require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                            return ext_call.return_data[0], 
                                                                                                   (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                    else:
                                                                        if not ext_call.return_data[0]:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        else:
                                                                            require ext_call.return_data[0]
                                                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                                else:
                                                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                    else:
                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        else:
                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                            if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= ext_call.return_data[0]:
                                                                return 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1], arg4
                                                            else:
                                                                if ext_call.return_data[0]:
                                                                    require ext_call.return_data[0]
                                                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        if ext_call.return_data[0]:
                                                                            require ext_call.return_data[0]
                                                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                                            else:
                                                                                if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                                                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                                    else:
                                                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                                        else:
                                                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                            if not Mask(16, 32, ext_call.return_data[0]):
                                                                                                revert with 0, '50', 0
                                                                                            else:
                                                                                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                                    revert with 0, '48', 0
                                                                                                else:
                                                                                                    require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                                    return ext_call.return_data[0], 
                                                                                                           (10000 * ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                else:
                                                                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                                    else:
                                                                                        require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                        if not Mask(16, 32, ext_call.return_data[0]):
                                                                                            revert with 0, '50', 0
                                                                                        else:
                                                                                            if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                                revert with 0, '48', 0
                                                                                            else:
                                                                                                require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                                return ext_call.return_data[0], 
                                                                                                       (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                        else:
                                                                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            else:
                                                                                require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                if not Mask(16, 32, ext_call.return_data[0]):
                                                                                    revert with 0, '50', 0
                                                                                else:
                                                                                    if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                        revert with 0, '48', 0
                                                                                    else:
                                                                                        require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                        return ext_call.return_data[0], 
                                                                                               (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                else:
                                                                    if not ext_call.return_data[0]:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            else:
                                                                                require ext_call.return_data[0] * ext_call.return_data[0]
                                                                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                                else:
                                                                                    revert with 0, 'SafeMath: division by zero', 0
                                        else:
                                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            else:
                                                require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= ext_call.return_data[0]:
                                                    return 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1], arg4
                                                else:
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0]
                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if ext_call.return_data[0]:
                                                                require ext_call.return_data[0]
                                                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                        require ext_call.return_data[0] * ext_call.return_data[0]
                                                                        if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                                        else:
                                                                            if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                                revert with 0, 'SafeMath: division by zero', 0
                                                                            else:
                                                                                require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                                if not Mask(16, 32, ext_call.return_data[0]):
                                                                                    revert with 0, '50', 0
                                                                                else:
                                                                                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                        revert with 0, '48', 0
                                                                                    else:
                                                                                        require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                        return ext_call.return_data[0], 
                                                                                               (10000 * ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                    else:
                                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                            revert with 0, 'SafeMath: division by zero', 0
                                                                        else:
                                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                            if not Mask(16, 32, ext_call.return_data[0]):
                                                                                revert with 0, '50', 0
                                                                            else:
                                                                                if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                    revert with 0, '48', 0
                                                                                else:
                                                                                    require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                    return ext_call.return_data[0], 
                                                                                           (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                            else:
                                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                else:
                                                                    require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                    if not Mask(16, 32, ext_call.return_data[0]):
                                                                        revert with 0, '50', 0
                                                                    else:
                                                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                            revert with 0, '48', 0
                                                                        else:
                                                                            require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                            return ext_call.return_data[0], 
                                                                                   (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                else:
                                                                    require ext_call.return_data[0] * ext_call.return_data[0]
                                                                    if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                                    else:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                else:
                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    else:
                                        require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= ext_call.return_data[0]:
                                            return 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1], arg4
                                        else:
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0]
                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if ext_call.return_data[0]:
                                                        require ext_call.return_data[0]
                                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if ext_call.return_data[0] * ext_call.return_data[0]:
                                                                require ext_call.return_data[0] * ext_call.return_data[0]
                                                                if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero', 0
                                                                    else:
                                                                        require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                        if not Mask(16, 32, ext_call.return_data[0]):
                                                                            revert with 0, '50', 0
                                                                        else:
                                                                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                                revert with 0, '48', 0
                                                                            else:
                                                                                require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                                return ext_call.return_data[0], 
                                                                                       (10000 * ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                            else:
                                                                if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero', 0
                                                                else:
                                                                    require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                                    if not Mask(16, 32, ext_call.return_data[0]):
                                                                        revert with 0, '50', 0
                                                                    else:
                                                                        if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                            revert with 0, '48', 0
                                                                        else:
                                                                            require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                            return ext_call.return_data[0], 
                                                                                   (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                                    else:
                                                        if ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] <= 0:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        else:
                                                            require ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]
                                                            if not Mask(16, 32, ext_call.return_data[0]):
                                                                revert with 0, '50', 0
                                                            else:
                                                                if 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] > -(Mask(15, 33, ext_call.return_data[0]) >> 33) - 1 / 10000:
                                                                    revert with 0, '48', 0
                                                                else:
                                                                    require Mask(16, 32, ext_call.return_data[0]) >> 32
                                                                    return ext_call.return_data[0], 
                                                                           (10000 * 0 / ext_call.return_data[0] * 10^ext_call.return_data[25 len 1]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
                                            else:
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                else:
                                                    require ext_call.return_data[0]
                                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: division by zero', 0
                                                        else:
                                                            require ext_call.return_data[0] * ext_call.return_data[0]
                                                            if ext_call.return_data[0] * ext_call.return_data[0] * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                revert with 0, 'SafeMath: division by zero', 0
                        else:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            else:
                                require ext_call.return_data[0]
                                if ext_call.return_data[0] * arg4 / ext_call.return_data[0] != arg4:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                else:
                                    if not ext_call.return_data[0] * arg4:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    else:
                                        require ext_call.return_data[0] * arg4
                                        if ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] / ext_call.return_data[0] * arg4 != 10^ext_call.return_data[25 len 1]:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if not ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1]:
                                                revert with 0, 'SafeMath: division by zero', 0
                                            else:
                                                if not Mask(16, 32, ext_call.return_data[0]):
                                                    revert with 0, 'SafeMath: division by zero', 0
                                                else:
                                                    require ext_call.return_data[26 len 2]
                                                    if ext_call.return_data[0] * arg4 * 10^ext_call.return_data[25 len 1] > -5001 / ext_call.return_data[26 len 2]:
                                                        revert with 0, '48', 0
                                                    else:
                                                        revert with 0, 'SafeMath: division by zero', 0
}



}
