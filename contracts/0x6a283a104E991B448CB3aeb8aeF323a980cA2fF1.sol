contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c


mapping of struct roleAdmin;
address sub_d63843cdAddress;
address sub_a97232f4Address;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_a97232f4(?) payable {
    return sub_a97232f4Address
}

function sub_d63843cd(?) payable {
    return sub_d63843cdAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_2fde5525(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 36).length)) + 97 > test266151307() or ceil32(ceil32(('cd', 36).length)) + 97 < 96:
        revert with 'NH{q', 65
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[('cd', 36).length + 128] = 0
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(('cd', 36).length)) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(ceil32(('cd', 36).length)) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x523a704056dcd17bcf83bed8b68c59416dac1119be77755efe3bde0a64e46e0c
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if 0 >= ('cd', 68).length:
        revert with 'NH{q', 50
    _118 = mem[ceil32(ceil32(('cd', 36).length)) + 129]
    if 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    _120 = mem[ceil32(ceil32(('cd', 36).length)) + 161]
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 68).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
    if ceil32(('cd', 36).length) > ('cd', 36).length:
        mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + ('cd', 36).length + 199] = 0
    require ext_code.size(sub_d63843cdAddress)
    call sub_d63843cdAddress.setTokenURI(uint256 arg1, string arg2) with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(('cd', 36).length)) + 129], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
    if not ext_call.success:
        emit Log(Array(len=16, data='setTokenURI FAIL'));
        revert with 0, 'setTokenURI FAIL'
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = 0x50dfc65800000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = _118
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = 64
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = ('cd', 100).length
    mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 100).length]
    require ext_code.size(sub_d63843cdAddress)
    call sub_d63843cdAddress.0x50dfc658 with:
         gas gas_remaining wei
        args _118, Array(len=('cd', 100).length, data=mem[ceil32(ceil32(('cd', 36).length)) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199 len 32 * ('cd', 100).length])
    if not ext_call.success:
        emit Log(Array(len=18, data='setExperience FAIL'));
        revert with 0, 'setExperience FAIL'
    require ext_code.size(sub_a97232f4Address)
    call sub_a97232f4Address.0x5ea61de1 with:
         gas gas_remaining wei
        args address(cd[4]), _120, block.timestamp
    if not ext_call.success:
        emit Log(Array(len=10, data='Merge FAIL'));
        revert with 0, 'Merge FAIL'
    emit Log(Array(len=10, data='Merge Done'));
}



}
