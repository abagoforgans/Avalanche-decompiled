contract main {




// =====================  Runtime code  =====================


#
#  - sub_b76f7782(?)
#  - sub_c3d9233a(?)
#  - sub_d7bf98a3(?)
#
const sub_6220f0f3(?) = 55 * 10^17

const sub_dd3b7025(?) = 1


address stor0;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function getStats() {
    return Array(len=3, data=stor2, stor3, call.data[calldata.size + 64])
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

function sub_92789b02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 0x35a9cb1c92393919e6e86f56af5e68a86f945875f6076ee63:
        revert with 'NH{q', 17
    if msg.value < 55 * 10^17 * arg1:
        revert with 0, 'Wrong fee'
    if arg1 > -stor2 - 1:
        revert with 'NH{q', 17
    if arg1 + stor2 > 8888:
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
    if stor2 > -arg1 - 1:
        revert with 'NH{q', 17
    stor2 += arg1
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
    _171 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _177 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_177] == mem[_177]
    if _171 > mem[_177]:
        revert with 0, 'not enough resource: solar'
    if 1 >= _93:
        revert with 'NH{q', 50
    _185 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _193 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_193] == mem[_193]
    if _185 > mem[_193]:
        revert with 0, 'not enough resource: metal'
    if 2 >= _93:
        revert with 'NH{q', 50
    _201 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _209 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_209] == mem[_209]
    if _201 > mem[_209]:
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
    _224 = mem[(2 * ceil32(return_data.size)) + 192]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _224
    require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
    call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _224
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_229] == bool(mem[_229])
    if 1 >= _93:
        revert with 'NH{q', 50
    _236 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _236
    require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
    call 0x4c1057455747e3ee5871d374fdd77a304ce10989.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _236
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_241] == bool(mem[_241])
    if 2 >= _93:
        revert with 'NH{q', 50
    _248 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _248
    require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
    call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, _248
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _253 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_253] == bool(mem[_253])
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
        require return_data.size >= 32
        _330 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _334 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        require _330 + (32 * _334) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _330 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _334:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _334:
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
        _497 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_497] == mem[_497]
        if _485 > mem[_497]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _334:
            revert with 'NH{q', 50
        _513 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _529 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_529] == mem[_529]
        if _513 > mem[_529]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _334:
            revert with 'NH{q', 50
        _545 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _561 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_561] == mem[_561]
        if _545 > mem[_561]:
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
        if 0 >= _334:
            revert with 'NH{q', 50
        _818 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _818
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _818
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _829 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_829] == bool(mem[_829])
        if 1 >= _334:
            revert with 'NH{q', 50
        _842 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _842
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _842
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _853 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_853] == bool(mem[_853])
        if 2 >= _334:
            revert with 'NH{q', 50
        _866 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _866
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _866
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _877 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_877] == bool(mem[_877])
        _885 = mem[64]
        mem[64] = mem[64] + 64
        mem[_885] = 14
        mem[_885 + 32] = 'metadataSetter'
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
        _957 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_957] == mem[_957 + 12 len 20]
        require ext_code.size(mem[_957 + 12 len 20])
        call mem[_957 + 12 len 20].0x4e4f31ed with:
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
        require return_data.size >= 32
        _331 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162]
        require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 193 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + return_data.size + 162
        _335 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]) + 163
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 162] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 162] + 162]
        require _331 + (32 * _335) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + _331 + 194
        t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194
        while idx < _335:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 0 >= _335:
            revert with 'NH{q', 50
        _487 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        staticcall 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_499] == mem[_499]
        if _487 > mem[_499]:
            revert with 0, 'not enough resource: solar'
        if 1 >= _335:
            revert with 'NH{q', 50
        _515 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        staticcall 0x4c1057455747e3ee5871d374fdd77a304ce10989.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _531 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_531] == mem[_531]
        if _515 > mem[_531]:
            revert with 0, 'not enough resource: metal'
        if 2 >= _335:
            revert with 'NH{q', 50
        _547 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        staticcall 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _563 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_563] == mem[_563]
        if _547 > mem[_563]:
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
        if 0 >= _335:
            revert with 'NH{q', 50
        _822 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 194]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _822
        require ext_code.size(0xe6ee049183b474ecf7704da3f6f555a1dcaf240f)
        call 0xe6ee049183b474ecf7704da3f6f555a1dcaf240f.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _822
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_831] == bool(mem[_831])
        if 1 >= _335:
            revert with 'NH{q', 50
        _846 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 226]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _846
        require ext_code.size(0x4c1057455747e3ee5871d374fdd77a304ce10989)
        call 0x4c1057455747e3ee5871d374fdd77a304ce10989.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _846
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _855 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_855] == bool(mem[_855])
        if 2 >= _335:
            revert with 'NH{q', 50
        _870 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (7 * ceil32(return_data.size)) + 258]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _870
        require ext_code.size(0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4)
        call 0x70b4ae8eb7bd572fc0eb244cd8021066b3ce7ee4.burn(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _870
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _879 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_879] == bool(mem[_879])
        _887 = mem[64]
        mem[64] = mem[64] + 64
        mem[_887] = 14
        mem[_887 + 32] = 'metadataSetter'
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
        _959 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_959] == mem[_959 + 12 len 20]
        require ext_code.size(mem[_959 + 12 len 20])
        call mem[_959 + 12 len 20].0x4e4f31ed with:
             gas gas_remaining wei
            args cd[100], Array(len=9, data='boss-time'), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
