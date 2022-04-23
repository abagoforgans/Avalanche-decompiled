contract main {




// =====================  Runtime code  =====================


#
#  - compareStrings(string arg1, string arg2)
#  - sub_c3d9233a(?)
#  - sub_d7bf98a3(?)
#
const sub_6220f0f3(?) = 55 * 10^17


address stor0;
uint8 stor2;
uint256 stor3;
uint256 stor4;

function sub_dd3b7025(?) {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function getStats() {
    return Array(len=3, data=stor3, stor4, call.data[calldata.size + 64])
}

function sub_0b1940eb(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor0
    stor2 = uint8(bool(arg1))
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require arg1 <= eth.balance(this.address)
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
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

function sub_92789b02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 0x35a9cb1c92393919e6e86f56af5e68a86f945875f6076ee63:
        revert with 'NH{q', 17
    if msg.value < 55 * 10^17 * arg1:
        revert with 0, 'Wrong fee'
    if arg1 > -stor3 - 1:
        revert with 'NH{q', 17
    if arg1 + stor3 > 8888:
        revert with 0, 'Not enough planets left'
    if arg1 <= 0:
        revert with 0, 'Amount should be 0-40'
    if arg1 > 40:
        revert with 0, 'Amount should be 0-40'
    mem[96] = 14
    mem[128] = 'metadataSetter'
    mem[164] = 32
    mem[196] = 14
    mem[228] = 'metadataSetter'
    mem[242] = 0
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args 'metadataSetter', 0
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xc3b29321611736341609022c23e981ac56e7f96)
        call 0x0c3b29321611736341609022c23e981ac56e7f96.0x3db12d03 with:
             gas gas_remaining wei
            args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_79]
        require mem[_79] == mem[_79]
        mem[mem[64] + 4] = mem[_79]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args mem[mem[64] + 4], Array(len=7, data='s-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _81, Array(len=7, data='m-level'), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _81, Array(len=11, data='s-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x4e4f31ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _81
        mem[mem[64] + 36] = 96
        mem[mem[64] + 100] = 11
        mem[mem[64] + 132] = 'm-timestamp'
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x4e4f31ed with:
             gas gas_remaining wei
            args _81, Array(len=11, data='m-timestamp'), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if stor3 > -arg1 - 1:
        revert with 'NH{q', 17
    stor3 += arg1
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

function sub_898ac941(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require bool(stor2) == 1
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
    mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160 len 4], Mask(224, 32, arg1) >> 32 + 160]
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
        revert with 0, 'not enough resource: solar'
    if 1 >= _93:
        revert with 'NH{q', 50
    _181 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
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
        revert with 0, 'not enough resource: metal'
    if 2 >= _93:
        revert with 'NH{q', 50
    _197 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
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
        revert with 0, 'not enough resource: crystal'
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
        _2415 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2415] == mem[_2415]
        if mem[_2415] < block.timestamp:
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
    _2418 = mem[_971 + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2418
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, _2418
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
    _2472 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2472] == bool(mem[_2472])
    if 2 >= mem[_971]:
        revert with 'NH{q', 50
    _2503 = mem[_971 + 96]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2503
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, _2503
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2524 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2524] == bool(mem[_2524])
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
        if arg1 == 1:
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
        else:
            if arg1 != 2:
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
                    require ext_code.size(0)
                    call 0x0.0x40c10f19 with:
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
                        require ext_code.size(0)
                        call 0x0.0x40c10f19 with:
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
                            require ext_code.size(0)
                            call 0x0.0x40c10f19 with:
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
    require bool(stor2) == 1
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
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] = 0x3a76f0f200000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x3a76f0f2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162
        require return_data.size >= 32
        _327 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _331 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _331
        require _327 + (32 * _331) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _327 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _331:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _331:
            revert with 'NH{q', 50
        _482 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _494 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_494] == mem[_494]
        if _482 > mem[_494]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _331:
            revert with 'NH{q', 50
        _510 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _526 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_526] == mem[_526]
        if _510 > mem[_526]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _331:
            revert with 'NH{q', 50
        _542 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_558] == mem[_558]
        if _542 > mem[_558]:
            revert with 0, 'not enough resource: crystal'
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
        if 0 >= _331:
            revert with 'NH{q', 50
        _759 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _759
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _759
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _770 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_770] == bool(mem[_770])
        if 1 >= _331:
            revert with 'NH{q', 50
        _783 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _783
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _783
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _794 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_794] == bool(mem[_794])
        if 2 >= _331:
            revert with 'NH{q', 50
        _807 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _807
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _807
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _818 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_818] == bool(mem[_818])
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
        _328 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _332 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _332
        require _328 + (32 * _332) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _328 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _332:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _332:
            revert with 'NH{q', 50
        _484 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _496 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_496] == mem[_496]
        if _484 > mem[_496]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _332:
            revert with 'NH{q', 50
        _512 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _528 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_528] == mem[_528]
        if _512 > mem[_528]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _332:
            revert with 'NH{q', 50
        _544 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _560 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_560] == mem[_560]
        if _544 > mem[_560]:
            revert with 0, 'not enough resource: crystal'
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
        if 0 >= _332:
            revert with 'NH{q', 50
        _763 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _763
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _763
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _772 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_772] == bool(mem[_772])
        if 1 >= _332:
            revert with 'NH{q', 50
        _787 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _787
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _787
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _796 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_796] == bool(mem[_796])
        if 2 >= _332:
            revert with 'NH{q', 50
        _811 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _811
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _811
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _820 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_820] == bool(mem[_820])
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
    require bool(stor2) == 1
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
        _460 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _472 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_472] == mem[_472]
        if _460 > mem[_472]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _309:
            revert with 'NH{q', 50
        _488 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _504 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_504] == mem[_504]
        if _488 > mem[_504]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _309:
            revert with 'NH{q', 50
        _520 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _536 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_536] == mem[_536]
        if _520 > mem[_536]:
            revert with 0, 'not enough resource: crystal'
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
        _793 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _793
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _793
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _804 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_804] == bool(mem[_804])
        if 1 >= _309:
            revert with 'NH{q', 50
        _817 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _817
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _817
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _828 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_828] == bool(mem[_828])
        if 2 >= _309:
            revert with 'NH{q', 50
        _841 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _841
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _841
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _852 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_852] == bool(mem[_852])
        _860 = mem[64]
        mem[64] = mem[64] + 64
        mem[_860] = 14
        mem[_860 + 32] = 'metadataSetter'
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
        _932 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_932] == mem[_932 + 12 len 20]
        require ext_code.size(mem[_932 + 12 len 20])
        call mem[_932 + 12 len 20].0x4e4f31ed with:
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
        _306 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _310 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162 len 4], Mask(224, 32, cd[4]) >> 32 + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = _310
        require _306 + (32 * _310) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _306 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _310:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _310:
            revert with 'NH{q', 50
        _462 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _474 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_474] == mem[_474]
        if _462 > mem[_474]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _310:
            revert with 'NH{q', 50
        _490 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _506 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_506] == mem[_506]
        if _490 > mem[_506]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _310:
            revert with 'NH{q', 50
        _522 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _538 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_538] == mem[_538]
        if _522 > mem[_538]:
            revert with 0, 'not enough resource: crystal'
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
        if 0 >= _310:
            revert with 'NH{q', 50
        _797 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _797
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _797
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _806 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_806] == bool(mem[_806])
        if 1 >= _310:
            revert with 'NH{q', 50
        _821 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _821
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _821
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _830 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_830] == bool(mem[_830])
        if 2 >= _310:
            revert with 'NH{q', 50
        _845 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _845
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, _845
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _854 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_854] == bool(mem[_854])
        _862 = mem[64]
        mem[64] = mem[64] + 64
        mem[_862] = 14
        mem[_862 + 32] = 'metadataSetter'
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
        _934 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_934] == mem[_934 + 12 len 20]
        require ext_code.size(mem[_934 + 12 len 20])
        call mem[_934 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=12, data='mission-time'), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
