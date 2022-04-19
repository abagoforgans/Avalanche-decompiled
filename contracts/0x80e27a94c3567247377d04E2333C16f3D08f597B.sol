contract main {




// =====================  Runtime code  =====================


const sub_1f560cf9(?) = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const oracle = 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89

const sub_d3a86817(?) = 5000


function _fallback() payable {
    revert
}

function sub_e5977729(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReserveData(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
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
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return 0
    if 2 * ext_call.return_data[0] > 0xd1b71758e219652bd3c36113404ea4a8c154c985f06f694467381d7dbf486:
        revert with 0, '', 0
    return ((10000 * ext_call.return_data[0]) + 5000 / 10000)
}

function sub_d31cab71(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 740] = address(cd[4])
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getUserConfiguration(address rg1) with:
            gas gas_remaining wei
           args address(cd[4])
    mem[(32 * ('cd', 36).length) + 736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool((32 * ('cd', 36).length) + ceil32(return_data.size) + 768 <= test266151307())
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 736] = ext_call.return_data[0]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] = 0xd1946dbc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReservesList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _781 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768]
    require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] <= test266151307()
    require (32 * ('cd', 36).length) + ceil32(return_data.size) + return_data.size + 768 > (32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 799
    _782 = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]
    require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768] <= test266151307()
    require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]) + 32 >= 0 and (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]) + 800 <= test266151307()
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 768] = mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 768] + 768]
    require return_data.size >= _781 + (32 * _782) + 32
    s = (32 * ('cd', 36).length) + ceil32(return_data.size) + _781 + 800
    t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 800
    idx = 0
    while idx < _782:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getUserConfiguration(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReserveData(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 960 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 992 <= test266151307())
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
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[352]) >= 128:
        revert with 0, '', 0
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
        require ext_code.size(address(ext_call.return_data[288]))
        staticcall address(ext_call.return_data[288]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    if not bool(Mask(256, -(2 * uint8(ext_call.return_data[352])) - 1, ext_call.return_data[0]) >> (2 * uint8(ext_call.return_data[352])) + 1):
        if uint8(ext_call.return_data[352]) >= 128:
            revert with 0, '', 0
        if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
            return 0
        require ext_code.size(address(ext_call.return_data[256]))
        staticcall address(ext_call.return_data[256]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[288]))
        staticcall address(ext_call.return_data[288]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    require ext_code.size(address(ext_call.return_data[224]))
    staticcall address(ext_call.return_data[224]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 0, 'SafeMath: division by zero', 0
        if uint8(ext_call.return_data[352]) >= 128:
            revert with 0, '', 0
        if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
            return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0
        require ext_code.size(address(ext_call.return_data[256]))
        staticcall address(ext_call.return_data[256]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[288]))
        staticcall address(ext_call.return_data[288]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
                revert with 0, 'SafeMath: division by zero', 0
            return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 0, 'SafeMath: division by zero', 0
        return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
               (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
        revert with 0, 'SafeMath: division by zero', 0
    if uint8(ext_call.return_data[352]) >= 128:
        revert with 0, '', 0
    if not bool(Mask(256, -2 * uint8(ext_call.return_data[352]), ext_call.return_data[0]) >> 2 * uint8(ext_call.return_data[352])):
        return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 0
    require ext_code.size(address(ext_call.return_data[256]))
    staticcall address(ext_call.return_data[256]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[288]))
    staticcall address(ext_call.return_data[288]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
            revert with 0, 'SafeMath: division by zero', 0
        return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
               0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48):
        revert with 0, 'SafeMath: division by zero', 0
    return ext_call.return_data[0] * ext_call.return_data[0] / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48), 
           (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48)
}

function sub_836fc08d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReserveData(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
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
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getReserveData(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool((2 * ceil32(return_data.size)) + 1728 <= test266151307())
    require return_data.size >= 32
    require bool((2 * ceil32(return_data.size)) + 1760 <= test266151307())
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
    require return_data.size >= 32
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89)
    staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg4 * ext_call.return_data[0]:
                if 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] / arg4 * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0]:
                    if ext_call.return_data[26 len 2]:
                        if 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] > -5001 / ext_call.return_data[26 len 2]:
                            revert with 0, '', 0
        revert with 0, 'SafeMath: division by zero', 0
    if 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if ext_call.return_data[0] >= 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
            return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0], arg4
    else:
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg4 * ext_call.return_data[0]:
            if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if ext_call.return_data[0] >= 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0], arg4
        else:
            if 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] / arg4 * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0]:
                if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if ext_call.return_data[0] >= 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                    return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0], arg4
            else:
                if not ext_call.return_data[26 len 2]:
                    if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ext_call.return_data[0] >= 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                        return 0 / 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0], arg4
                else:
                    if 10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] > -5001 / ext_call.return_data[26 len 2]:
                        revert with 0, '', 0
                    if not 10^(Mask(8, 48, ext_call.return_data[0]) >> 48) * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ext_call.return_data[0] >= (10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] * ext_call.return_data[26 len 2]) + 5000 / 10000 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]:
                        return (10^ext_call.return_data[25 len 1] * arg4 * ext_call.return_data[0] * ext_call.return_data[26 len 2]) + 5000 / 10000 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0], 
                               arg4
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] * ext_call.return_data[0]:
                if 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                    revert with 0, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero', 0
    if 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] / ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        if not 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not Mask(16, 32, ext_call.return_data[0]) >> 32:
            revert with 0, '', 0
        if 0 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] > !(Mask(15, 33, ext_call.return_data[0]) >> 33) / 10000:
            revert with 0, '', 0
        if Mask(16, 32, ext_call.return_data[0]) >> 32:
            return ext_call.return_data[0], 
                   (10000 * 0 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if not 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(16, 32, ext_call.return_data[0]) >> 32:
                revert with 0, '', 0
            if 0 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] > !(Mask(15, 33, ext_call.return_data[0]) >> 33) / 10000:
                revert with 0, '', 0
            if Mask(16, 32, ext_call.return_data[0]) >> 32:
                return ext_call.return_data[0], 
                       (10000 * 0 / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
        else:
            if 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10^ext_call.return_data[25 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not Mask(16, 32, ext_call.return_data[0]) >> 32:
                revert with 0, '', 0
            if 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] > !(Mask(15, 33, ext_call.return_data[0]) >> 33) / 10000:
                revert with 0, '', 0
            if Mask(16, 32, ext_call.return_data[0]) >> 32:
                return ext_call.return_data[0], 
                       (10000 * 10^ext_call.return_data[25 len 1] * ext_call.return_data[0] * ext_call.return_data[0] / 10^ext_call.return_data[25 len 1] * ext_call.return_data[0]) + (Mask(15, 33, ext_call.return_data[0]) >> 33) / Mask(16, 32, ext_call.return_data[0]) >> 32
    ('iszero', ('mask_shl', 16, 32, -32, ('ext_call.return_data', 0, 32)))
    revert
}



}
