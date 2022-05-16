contract main {




// =====================  Runtime code  =====================


#
#  - sub_c3d9233a(?)
#  - sub_d7bf98a3(?)
#
address stor0;
uint256 stor2;
uint8 stor3;

function sub_2a70195f(?) {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function getStats() {
    return Array(len=3, data=8888, stor2, call.data[calldata.size + 64])
}

function sub_f9720107(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor0
    stor3 = uint8(bool(arg1))
}

function sub_cf66260d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'resourceInfo', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcf66260d with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_c674267e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'resourceInfo', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xc674267e with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function compareStrings(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307() or ceil32(ceil32(arg2.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))
}

function mintToken(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=7, data='warzone')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require address(ext_call.return_data[0])
    if address(ext_call.return_data[0]) != msg.sender:
        require msg.sender == ext_call.return_data[12 len 20]
    if not arg1:
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg3), arg2
    else:
        if arg1 != 1:
            require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
            call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg3), arg2
        else:
            require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
            call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cde99193(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 101] = 32
    mem[floor32(('cd', 4).length) + 133] = 7
    mem[floor32(('cd', 4).length) + 165] = 'warzone'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=7, data='warzone')
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 101] = 32
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 133] = 4
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 165] = 'game'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require address(ext_call.return_data[0])
    if msg.sender == address(ext_call.return_data[0]):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _42 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = 0x576cc0f700000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 101] = _42
            require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
            call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.burnItem(uint256 arg1) with:
                 gas gas_remaining wei
                args _42
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        require msg.sender == ext_call.return_data[12 len 20]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _44 = mem[(32 * idx) + 128]
            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = 0x576cc0f700000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 101] = _44
            require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
            call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.burnItem(uint256 arg1) with:
                 gas gas_remaining wei
                args _44
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_7e794819(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    mem[floor32(('cd', 36).length) + 101] = 32
    mem[floor32(('cd', 36).length) + 133] = 7
    mem[floor32(('cd', 36).length) + 165] = 'warzone'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=7, data='warzone')
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = 32
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 133] = 4
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 165] = 'game'
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require address(ext_call.return_data[0])
    if msg.sender == address(ext_call.return_data[0]):
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _55 = mem[128]
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 133] = _55
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args address(cd[4]), _55
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _67 = mem[160]
        mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = _67
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args address(cd[4]), _67
    else:
        require msg.sender == ext_call.return_data[12 len 20]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _58 = mem[128]
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 133] = _58
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args address(cd[4]), _58
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _70 = mem[160]
        mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[4])
        mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = _70
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args address(cd[4]), _70
    mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
         gas gas_remaining wei
        args address(cd[4]), mem[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_898ac941(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 7
    mem[128] = 'factory'
    mem[164] = 32
    mem[196] = 7
    mem[228] = 'factory'
    mem[235] = 0
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'factory', 0
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = 0x5c470cee00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 164] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x5c470cee with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _91 = mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 191 < ceil32(return_data.size) + return_data.size + 160
    _93 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]) + 161
    mem[(2 * ceil32(return_data.size)) + 160] = _93
    require _91 + (32 * _93) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _91 + 192
    t = (2 * ceil32(return_data.size)) + 192
    while idx < _93:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _93:
        revert with 'NH{q', 50
    _167 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _173 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_173] == mem[_173]
    if _167 > mem[_173]:
        revert with 0, 'not enough resources'
    if 0 >= _93:
        revert with 'NH{q', 50
    _181 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_189] == mem[_189]
    if _181 > mem[_189]:
        revert with 0, 'not enough resources'
    if 0 >= _93:
        revert with 'NH{q', 50
    _197 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _205 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_205] == mem[_205]
    if _197 > mem[_205]:
        revert with 0, 'not enough resources'
    mem[mem[64]] = 0xaa34511f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaa34511f with:
         gas gas_remaining wei
        args arg1, arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= _93:
        revert with 'NH{q', 50
    _220 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _220
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _220
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _225 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_225] == bool(mem[_225])
    if 1 >= _93:
        revert with 'NH{q', 50
    _232 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _232
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _232
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _237 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_237] == bool(mem[_237])
    if 2 >= _93:
        revert with 'NH{q', 50
    _244 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _244
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _244
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _249 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_249] == bool(mem[_249])
}

function sub_bef77a95(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 3
    mem[64] = floor32(('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + 193] = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _535 = mem[(32 * idx) + 128]
        _536 = mem[64]
        mem[64] = mem[64] + 64
        mem[_536] = 12
        mem[_536 + 32] = 'resourceInfo'
        _537 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_537 + s + 68] = mem[_536 + s + 32]
            s = s + 32
            continue 
        mem[_537 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _537 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _743 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _745 = mem[_743]
        require mem[_743] == mem[_743 + 12 len 20]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _535
        require ext_code.size(address(_745))
        staticcall address(_745).0xcf66260d with:
                gas gas_remaining wei
               args 0, _535
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _751 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _753 = mem[_751]
        require mem[_751] == mem[_751]
        _756 = mem[64]
        mem[64] = mem[64] + 64
        mem[_756] = 12
        mem[_756 + 32] = 'resourceInfo'
        _757 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_757 + s + 68] = mem[_756 + s + 32]
            s = s + 32
            continue 
        mem[_757 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _757 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _943 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _947 = mem[_943]
        require mem[_943] == mem[_943 + 12 len 20]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = _535
        require ext_code.size(address(_947))
        staticcall address(_947).0xcf66260d with:
                gas gas_remaining wei
               args 1, _535
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _959 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _963 = mem[_959]
        require mem[_959] == mem[_959]
        _969 = mem[64]
        mem[64] = mem[64] + 64
        mem[_969] = 12
        mem[_969 + 32] = 'resourceInfo'
        _971 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_971 + s + 68] = mem[_969 + s + 32]
            s = s + 32
            continue 
        mem[_971 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _971 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1135 = mem[_1127]
        require mem[_1127] == mem[_1127 + 12 len 20]
        mem[mem[64] + 4] = 2
        mem[mem[64] + 36] = _535
        require ext_code.size(address(_1135))
        staticcall address(_1135).0xcf66260d with:
                gas gas_remaining wei
               args 2, _535
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1167 = mem[_1159]
        require mem[_1159] == mem[_1159]
        if 0 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 4).length) + 129] > -_753 - 1:
            revert with 'NH{q', 17
        if 0 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + 129] = mem[floor32(('cd', 4).length) + 129] + _753
        if 1 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 4).length) + 161] > -_963 - 1:
            revert with 'NH{q', 17
        if 1 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + 161] = mem[floor32(('cd', 4).length) + 161] + _963
        if 2 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 4).length) + 193] > -_1167 - 1:
            revert with 'NH{q', 17
        if 2 >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + 193] = mem[floor32(('cd', 4).length) + 193] + _1167
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _538 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _538] = mem[floor32(('cd', 4).length) + 129 len 32 * _538]
    return 32, mem[mem[64] + 32 len (32 * _538) + 32]
}

function sub_7c7e97c6(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require bool(stor3) == 1
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 7
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130] = 'warzone'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = 32
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = 7
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230] = 'warzone'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 237] = 0
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'warzone', 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 162] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162] = 0x7c42eda300000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 166] = 96
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 262] = ('cd', 36).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 294 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 198] = (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 294] = ('cd', 68).length
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 326 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 230] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7c42eda3 with:
            gas gas_remaining wei
           args Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 294 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 128, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 162
    require return_data.size >= 32
    _410 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0
    require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 <= test266151307()
    require floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + return_data.size + 162
    _412 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 162]
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 162] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 162]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 162 len 4], 0 + 162]) + 163
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 162] = _412
    require _410 + (32 * _412) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + _410 + 194
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 194
    while idx < _412:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _412:
        revert with 'NH{q', 50
    _496 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 194]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _502 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_502] == mem[_502]
    if _496 > mem[_502]:
        revert with 0, 'not enough resources'
    if 0 >= _412:
        revert with 'NH{q', 50
    _510 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 194]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _518 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_518] == mem[_518]
    if _510 > mem[_518]:
        revert with 0, 'not enough resources'
    if 0 >= _412:
        revert with 'NH{q', 50
    _526 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 194]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _534 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_534] == mem[_534]
    if _526 > mem[_534]:
        revert with 0, 'not enough resources'
    mem[mem[64]] = 0xcee88f8900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4]
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = ('cd', 36).length
    mem[mem[64] + 164 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[mem[64] + 68] = (32 * ('cd', 36).length) + 160
    mem[mem[64] + (32 * ('cd', 36).length) + 164] = ('cd', 68).length
    mem[mem[64] + (32 * ('cd', 36).length) + 196 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
    mem[mem[64] + 100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xcee88f89 with:
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 160, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= _412:
        revert with 'NH{q', 50
    _655 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 194]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _655
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _655
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _660 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_660] == bool(mem[_660])
    if 1 >= _412:
        revert with 'NH{q', 50
    _667 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 226]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _667
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _667
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _672 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_672] == bool(mem[_672])
    if 2 >= _412:
        revert with 'NH{q', 50
    _679 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 258]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _679
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, _679
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _684 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_684] == bool(mem[_684])
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _713 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x576cc0f700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _713
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.burnItem(uint256 arg1) with:
             gas gas_remaining wei
            args _713
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _728 = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    while idx < _728:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _733 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        mem[mem[64]] = 0x576cc0f700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _733
        require ext_code.size(0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80)
        call 0x7c347af74c8dfaf629e4e4d3343d6e6a6ecace80.burnItem(uint256 arg1) with:
             gas gas_remaining wei
            args _733
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _728 = mem[floor32(('cd', 36).length) + 97]
        idx = idx + 1
        continue 
}

function sub_2aabff15(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + 97] = 14
    mem[floor32(('cd', 4).length) + 129] = 'metadataSetter'
    mem[floor32(('cd', 4).length) + 165] = 32
    mem[floor32(('cd', 4).length) + 197] = 14
    mem[floor32(('cd', 4).length) + 229] = 'metadataSetter'
    mem[floor32(('cd', 4).length) + 243] = 0
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'metadataSetter', 0
    mem[floor32(('cd', 4).length) + 161] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 161
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _968 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                gas gas_remaining wei
               args _968
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _985 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_985] == mem[_985 + 12 len 20]
        if mem[_985 + 12 len 20] != msg.sender:
            revert with 0, 'User is not the owner of the planet.'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _971 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_971]:
        revert with 'NH{q', 50
    mem[_971 + 32] = 0
    if 1 >= mem[_971]:
        revert with 'NH{q', 50
    mem[_971 + 64] = 0
    if 2 >= mem[_971]:
        revert with 'NH{q', 50
    mem[_971 + 96] = 0
    _1913 = mem[96]
    idx = 0
    while idx < _1913:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1917 = mem[(32 * idx) + 128]
        _1921 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1921] = 12
        mem[_1921 + 32] = 'resourceInfo'
        _1925 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_1925 + s + 68] = mem[_1921 + s + 32]
            _1913 = mem[96]
            s = s + 32
            continue 
        mem[_1925 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1925 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2409 = mem[_2405]
        require mem[_2405] == mem[_2405 + 12 len 20]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = _1917
        require ext_code.size(address(_2409))
        staticcall address(_2409).0xcf66260d with:
                gas gas_remaining wei
               args 0, _1917
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2441 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2445 = mem[_2441]
        require mem[_2441] == mem[_2441]
        _2461 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2461] = 12
        mem[_2461 + 32] = 'resourceInfo'
        _2463 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_2463 + s + 68] = mem[_2461 + s + 32]
            _1913 = mem[96]
            s = s + 32
            continue 
        mem[_2463 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2463 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2871 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2879 = mem[_2871]
        require mem[_2871] == mem[_2871 + 12 len 20]
        mem[mem[64] + 4] = 1
        mem[mem[64] + 36] = _1917
        require ext_code.size(address(_2879))
        staticcall address(_2879).0xcf66260d with:
                gas gas_remaining wei
               args 1, _1917
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2903 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2911 = mem[_2903]
        require mem[_2903] == mem[_2903]
        _2923 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2923] = 12
        mem[_2923 + 32] = 'resourceInfo'
        _2927 = mem[64]
        mem[mem[64]] = 0xac8932b500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 12
        s = 0
        while s < 12:
            mem[_2927 + s + 68] = mem[_2923 + s + 32]
            _1913 = mem[96]
            s = s + 32
            continue 
        mem[_2927 + 80] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _2927 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3255 = mem[_3239]
        require mem[_3239] == mem[_3239 + 12 len 20]
        mem[mem[64] + 4] = 2
        mem[mem[64] + 36] = _1917
        require ext_code.size(address(_3255))
        staticcall address(_3255).0xcf66260d with:
                gas gas_remaining wei
               args 2, _1917
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3319 = mem[_3303]
        require mem[_3303] == mem[_3303]
        if 0 >= mem[_971]:
            revert with 'NH{q', 50
        if mem[_971 + 32] > -_2445 - 1:
            revert with 'NH{q', 17
        if 0 >= mem[_971]:
            revert with 'NH{q', 50
        mem[_971 + 32] = mem[_971 + 32] + _2445
        if 1 >= mem[_971]:
            revert with 'NH{q', 50
        if mem[_971 + 64] > -_2911 - 1:
            revert with 'NH{q', 17
        if 1 >= mem[_971]:
            revert with 'NH{q', 50
        mem[_971 + 64] = mem[_971 + 64] + _2911
        if 2 >= mem[_971]:
            revert with 'NH{q', 50
        if mem[_971 + 96] > -_3319 - 1:
            revert with 'NH{q', 17
        if 2 >= mem[_971]:
            revert with 'NH{q', 50
        mem[_971 + 96] = mem[_971 + 96] + _3319
        if idx == -1:
            revert with 'NH{q', 17
        _1913 = mem[96]
        idx = idx + 1
        continue 
    _2389 = mem[96]
    idx = 0
    while idx < _2389:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2396 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = 11
        mem[mem[64] + 100] = 's-timestamp'
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
                gas gas_remaining wei
               args mem[mem[64] + 4], Array(len=11, data='s-timestamp')
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2419 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2419] == mem[_2419]
        if mem[_2419] < block.timestamp:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, Array(len=11, data='s-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, 96, 0, 7, 's-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, Array(len=11, data='m-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, 96, 0, 7, 'm-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, Array(len=11, data='c-timestamp'), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _2396
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = 7
            mem[mem[64] + 132] = 'c-cache'
            mem[mem[64] + 68] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x4e4f31ed with:
                 gas gas_remaining wei
                args _2396, 96, 0, 7, 'c-cache'
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        _2389 = mem[96]
        idx = idx + 1
        continue 
    if 0 >= mem[_971]:
        revert with 'NH{q', 50
    _2417 = mem[_971 + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2417
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, _2417
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2431 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2431] == bool(mem[_2431])
    if 1 >= mem[_971]:
        revert with 'NH{q', 50
    _2450 = mem[_971 + 64]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2450
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, _2450
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2471 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2471] == bool(mem[_2471])
    if 2 >= mem[_971]:
        revert with 'NH{q', 50
    _2501 = mem[_971 + 96]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2501
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, _2501
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2523 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2523] == bool(mem[_2523])
}

function sub_b589cae6(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'resourceInfo', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcf66260d with:
            gas gas_remaining wei
           args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg2
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'metadataSetter', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not arg1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args arg3, Array(len=11, data='s-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if arg1 != 1:
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                     gas gas_remaining wei
                    args ext_call.return_data[12 len 20], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                         gas gas_remaining wei
                        args ext_call.return_data[12 len 20], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
                        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
                             gas gas_remaining wei
                            args ext_call.return_data[12 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not arg1:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=11, data='s-timestamp'), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] < arg2:
                    revert with 'NH{q', 17
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4e4f31ed with:
                     gas gas_remaining wei
                    args arg3, Array(len=7, data='s-cache'), ext_call.return_data[0] - arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                        gas gas_remaining wei
                       args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                     gas gas_remaining wei
                    args ext_call.return_data[12 len 20], arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if arg1 == 1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=11, data='m-timestamp'), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < arg2:
                        revert with 'NH{q', 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x4e4f31ed with:
                         gas gas_remaining wei
                        args arg3, Array(len=7, data='m-cache'), ext_call.return_data[0] - arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                            gas gas_remaining wei
                           args arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                         gas gas_remaining wei
                        args ext_call.return_data[12 len 20], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if arg1 == 2:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=11, data='c-timestamp'), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if ext_call.return_data[0] < arg2:
                            revert with 'NH{q', 17
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x4e4f31ed with:
                             gas gas_remaining wei
                            args arg3, Array(len=7, data='c-cache'), ext_call.return_data[0] - arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
                        staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
                                gas gas_remaining wei
                               args arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
                        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x40c10f19 with:
                             gas gas_remaining wei
                            args ext_call.return_data[12 len 20], arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_22388882(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 64
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = 7
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = 'i-level'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[100], Array(len=7, data='i-level')
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 0, 'Need to build intelligence agency on your planet.'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = cd[100]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
            gas gas_remaining wei
           args cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not the owner of this planet.'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 134] = 64
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 166] = 9
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 198] = 'boss-time'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[100], Array(len=9, data='boss-time')
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 98] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 130] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 166] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 198] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 230] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 237] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'mission', 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 162] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] = 0x3a76f0f200000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3a76f0f2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162
        require return_data.size >= 32
        _324 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _328 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _328
        require _324 + (32 * _328) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _324 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _328:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _328:
            revert with 'NH{q', 50
        _479 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _491 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_491] == mem[_491]
        if _479 > mem[_491]:
            revert with 0, 'not enough resources'
        if 0 >= _328:
            revert with 'NH{q', 50
        _505 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _523 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_523] == mem[_523]
        if _505 > mem[_523]:
            revert with 0, 'not enough resources'
        if 0 >= _328:
            revert with 'NH{q', 50
        _539 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _555 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_555] == mem[_555]
        if _539 > mem[_555]:
            revert with 0, 'not enough resources'
        mem[mem[64]] = 0xc2f21eb800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        mem[mem[64] + 196 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[mem[64] + 68] = (32 * ('cd', 36).length) + 192
        mem[mem[64] + (32 * ('cd', 36).length) + 196] = ('cd', 68).length
        mem[mem[64] + (32 * ('cd', 36).length) + 228 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc2f21eb8 with:
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 196 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 192, msg.sender, cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _328:
            revert with 'NH{q', 50
        _812 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _812
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _812
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _823 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_823] == bool(mem[_823])
        if 1 >= _328:
            revert with 'NH{q', 50
        _836 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _836
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _836
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _847 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_847] == bool(mem[_847])
        if 2 >= _328:
            revert with 'NH{q', 50
        _860 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _860
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _860
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _871 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_871] == bool(mem[_871])
        _879 = mem[64]
        mem[64] = mem[64] + 64
        mem[_879] = 14
        mem[_879 + 32] = 'metadataSetter'
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 14
        mem[mem[64] + 68] = 'metadataSetter'
        mem[mem[64] + 82] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'metadataSetter', 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _951 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_951] == mem[_951 + 12 len 20]
        require ext_code.size(mem[_951 + 12 len 20])
        call mem[_951 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=9, data='boss-time'), block.timestamp
    else:
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] <= 168 * 24 * 3600:
            revert with 0, '7 days should pass after the last boss fight.'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 98] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 130] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 166] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 198] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 230] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 237] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'mission', 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 162] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] = 0x3a76f0f200000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3a76f0f2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162
        require return_data.size >= 32
        _325 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _329 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _329
        require _325 + (32 * _329) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _325 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _329:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _329:
            revert with 'NH{q', 50
        _481 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _493 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_493] == mem[_493]
        if _481 > mem[_493]:
            revert with 0, 'not enough resources'
        if 0 >= _329:
            revert with 'NH{q', 50
        _509 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _525 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_525] == mem[_525]
        if _509 > mem[_525]:
            revert with 0, 'not enough resources'
        if 0 >= _329:
            revert with 'NH{q', 50
        _541 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _557 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_557] == mem[_557]
        if _541 > mem[_557]:
            revert with 0, 'not enough resources'
        mem[mem[64]] = 0xc2f21eb800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 160
        mem[mem[64] + 164] = ('cd', 36).length
        mem[mem[64] + 196 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[mem[64] + 68] = (32 * ('cd', 36).length) + 192
        mem[mem[64] + (32 * ('cd', 36).length) + 196] = ('cd', 68).length
        mem[mem[64] + (32 * ('cd', 36).length) + 228 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
        mem[mem[64] + 100] = msg.sender
        mem[mem[64] + 132] = cd[100]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc2f21eb8 with:
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 196 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 192, msg.sender, cd[100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _329:
            revert with 'NH{q', 50
        _816 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _816
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _816
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _825 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_825] == bool(mem[_825])
        if 1 >= _329:
            revert with 'NH{q', 50
        _840 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _840
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _840
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _849 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_849] == bool(mem[_849])
        if 2 >= _329:
            revert with 'NH{q', 50
        _864 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _864
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _864
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _873 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_873] == bool(mem[_873])
        _881 = mem[64]
        mem[64] = mem[64] + 64
        mem[_881] = 14
        mem[_881 + 32] = 'metadataSetter'
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 14
        mem[mem[64] + 68] = 'metadataSetter'
        mem[mem[64] + 82] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'metadataSetter', 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _953 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_953] == mem[_953 + 12 len 20]
        require ext_code.size(mem[_953 + 12 len 20])
        call mem[_953 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=9, data='boss-time'), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b76f7782(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 64
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = 7
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = 'i-level'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[100], Array(len=7, data='i-level')
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1:
        revert with 0, 'Need to build intelligence agency on your planet.'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = cd[100]
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x6352211e with:
            gas gas_remaining wei
           args cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'you are not the owner of this planet.'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 102] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 134] = 64
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 166] = 12
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 198] = 'mission-time'
    require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
    staticcall 0xc3b29321611736341609022c23e981ac56e7f96.0x4994abe1 with:
            gas gas_remaining wei
           args cd[100], Array(len=12, data='mission-time')
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 98] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 130] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 166] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 198] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 230] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 237] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'mission', 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 162] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] = 0x70c0ada300000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 166] = cd[4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70c0ada3 with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162
        require return_data.size >= 32
        _304 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _308 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _308
        require _304 + (32 * _308) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _304 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _308:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _308:
            revert with 'NH{q', 50
        _459 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _471 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_471] == mem[_471]
        if _459 > mem[_471]:
            revert with 0, 'not enough resources'
        if 0 >= _308:
            revert with 'NH{q', 50
        _485 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _503 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_503] == mem[_503]
        if _485 > mem[_503]:
            revert with 0, 'not enough resources'
        if 0 >= _308:
            revert with 'NH{q', 50
        _519 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _535 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_535] == mem[_535]
        if _519 > mem[_535]:
            revert with 0, 'not enough resources'
        mem[mem[64]] = 0xc9152ef200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 36).length
        mem[mem[64] + 164 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[mem[64] + 68] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 164] = ('cd', 68).length
        mem[mem[64] + (32 * ('cd', 36).length) + 196 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
        mem[mem[64] + 100] = msg.sender
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc9152ef2 with:
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 160, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _308:
            revert with 'NH{q', 50
        _792 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _792
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _792
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _803 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_803] == bool(mem[_803])
        if 1 >= _308:
            revert with 'NH{q', 50
        _816 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _816
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _816
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _827 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_827] == bool(mem[_827])
        if 2 >= _308:
            revert with 'NH{q', 50
        _840 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _840
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _840
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _851 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_851] == bool(mem[_851])
        _859 = mem[64]
        mem[64] = mem[64] + 64
        mem[_859] = 14
        mem[_859 + 32] = 'metadataSetter'
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 14
        mem[mem[64] + 68] = 'metadataSetter'
        mem[mem[64] + 82] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'metadataSetter', 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _931 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_931] == mem[_931 + 12 len 20]
        require ext_code.size(mem[_931 + 12 len 20])
        call mem[_931 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=12, data='mission-time'), block.timestamp
    else:
        if block.timestamp < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[0] <= 24 * 3600:
            revert with 0, '24 hours should pass after the last mission.'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 98] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 130] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 166] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 198] = 7
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 230] = 'mission'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 237] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'mission', 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 162] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] = 0x70c0ada300000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 166] = cd[4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70c0ada3 with:
                gas gas_remaining wei
               args cd[4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162
        require return_data.size >= 32
        _305 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _309 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _309
        require _305 + (32 * _309) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _305 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _309:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _309:
            revert with 'NH{q', 50
        _461 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _473 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_473] == mem[_473]
        if _461 > mem[_473]:
            revert with 0, 'not enough resources'
        if 0 >= _309:
            revert with 'NH{q', 50
        _489 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _505 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_505] == mem[_505]
        if _489 > mem[_505]:
            revert with 0, 'not enough resources'
        if 0 >= _309:
            revert with 'NH{q', 50
        _521 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _537 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_537] == mem[_537]
        if _521 > mem[_537]:
            revert with 0, 'not enough resources'
        mem[mem[64]] = 0xc9152ef200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 36).length
        mem[mem[64] + 164 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[mem[64] + 68] = (32 * ('cd', 36).length) + 160
        mem[mem[64] + (32 * ('cd', 36).length) + 164] = ('cd', 68).length
        mem[mem[64] + (32 * ('cd', 36).length) + 196 len 32 * ('cd', 68).length] = mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 68).length]
        mem[mem[64] + 100] = msg.sender
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xc9152ef2 with:
             gas gas_remaining wei
            args cd[4], Array(len=('cd', 36).length, data=mem[mem[64] + 164 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 160, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _309:
            revert with 'NH{q', 50
        _796 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _796
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _796
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _805 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_805] == bool(mem[_805])
        if 1 >= _309:
            revert with 'NH{q', 50
        _820 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _820
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _820
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _829 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_829] == bool(mem[_829])
        if 2 >= _309:
            revert with 'NH{q', 50
        _844 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _844
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _844
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _853 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_853] == bool(mem[_853])
        _861 = mem[64]
        mem[64] = mem[64] + 64
        mem[_861] = 14
        mem[_861 + 32] = 'metadataSetter'
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 14
        mem[mem[64] + 68] = 'metadataSetter'
        mem[mem[64] + 82] = 0
        require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
        staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
                gas gas_remaining wei
               args 'metadataSetter', 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _933 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_933] == mem[_933 + 12 len 20]
        require ext_code.size(mem[_933 + 12 len 20])
        call mem[_933 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=12, data='mission-time'), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
