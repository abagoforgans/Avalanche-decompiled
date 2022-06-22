contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1, address arg2)
#  - sub_a91b33c0(?)
#  - withdraw(address arg1, uint256 arg2)
#
const sub_7a01a1da(?) = 0xfef8cd32ed93fc2f9fc78152a14807c9609af3d99c5fe4dc6b106a801aaddfe9

const sub_fbb81279(?) = 0xc6823861ee2bb2198ce6b1fd6faf4c8f44f745bc804aca4a762f67e0d507fd8a

const WITHDRAWER_ROLE = 0x10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334e4

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address sub_c1b19a78Address;
address sub_7d020c5eAddress;
uint256 price;
uint256 sub_07cc692f;

function sub_07cc692f(?) payable {
    return sub_07cc692f
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_7d020c5e(?) payable {
    return sub_7d020c5eAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function price() payable {
    return price
}

function sub_c1b19a78(?) payable {
    return sub_c1b19a78Address
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_c0fe45f7(?) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0xc6823861ee2bb2198ce6b1fd6faf4c8f44f745bc804aca4a762f67e0d507fd8a][address(msg.sender)].field_0:
        if arg1 <= 0:
            revert with 0, 'Price cannot be zero'
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        price = 10^18 * arg1
        emit PriceChanged((10^18 * arg1));
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0xc6823861ee2bb2198ce6b1fd6faf4c8f44f745bc804aca4a762f67e0d507fd8a
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_5587a323(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xc6823861ee2bb2198ce6b1fd6faf4c8f44f745bc804aca4a762f67e0d507fd8a][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0xc6823861ee2bb2198ce6b1fd6faf4c8f44f745bc804aca4a762f67e0d507fd8a
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg1:
        revert with 0, 'Cannot change by zero'
    if arg1 >= 0:
        if sub_07cc692f > !arg1:
            revert with 0, 17
        sub_07cc692f += arg1
    else:
        if bool(arg1 > 0) and -1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
            revert with 0, 17
        if bool(arg1 < 0) and -1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
            revert with 0, 17
        if -arg1 > sub_07cc692f:
            revert with 0, 'Cannot reduce credit below zero'
        if bool(arg1 > 0) and -1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / arg1:
            revert with 0, 17
        if bool(arg1 < 0) and -1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1:
            revert with 0, 17
        if sub_07cc692f < -arg1:
            revert with 0, 17
        sub_07cc692f += test266151307() * arg1
    emit 0x4d2c1971: sub_07cc692f
}

function sub_08f3c13a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfef8cd32ed93fc2f9fc78152a14807c9609af3d99c5fe4dc6b106a801aaddfe9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfef8cd32ed93fc2f9fc78152a14807c9609af3d99c5fe4dc6b106a801aaddfe9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0xace126cd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Given wallet does not have temporary creator role'
    require ext_code.size(sub_7d020c5eAddress)
    call sub_7d020c5eAddress.0xd547741f with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_07cc692f > -2:
        revert with 0, 17
    sub_07cc692f++
    emit Refund(address(arg1));
}

function sub_006a4b29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfef8cd32ed93fc2f9fc78152a14807c9609af3d99c5fe4dc6b106a801aaddfe9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfef8cd32ed93fc2f9fc78152a14807c9609af3d99c5fe4dc6b106a801aaddfe9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if sub_07cc692f <= 0:
        revert with 0, 'Insufficient credit'
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0xace126cd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'User already has temporary creator permissions'
    require ext_code.size(sub_7d020c5eAddress)
    call sub_7d020c5eAddress.0x2f2ff15d with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_07cc692f < 1:
        revert with 0, 17
    sub_07cc692f--
    emit 0xbbebc05c: address(arg1)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_581034dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0xace126cd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg1)
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0x91d14854 with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_7d020c5eAddress)
    staticcall sub_7d020c5eAddress.0x94666866 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64]] = 0x4487d3df00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_7d020c5eAddress)
        staticcall sub_7d020c5eAddress.0x4487d3df with:
                gas gas_remaining wei
               args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        _45 = mem[_44]
        require mem[_44] <= test266151307()
        require _44 + mem[_44] + 31 < _44 + return_data.size
        _46 = mem[_44 + mem[_44]]
        if mem[_44 + mem[_44]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_44 + mem[_44]])) + 1 < 0 or _44 + ceil32(return_data.size) + ceil32(ceil32(mem[_44 + mem[_44]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _44 + ceil32(return_data.size) + ceil32(ceil32(mem[_44 + mem[_44]])) + 1
        mem[_44 + ceil32(return_data.size)] = _46
        require _45 + _46 + 32 <= return_data.size
        s = 0
        while s < _46:
            mem[s + _44 + ceil32(return_data.size) + 32] = mem[s + _44 + _45 + 32]
            s = s + 32
            continue 
        if ceil32(_46) > _46:
            mem[_46 + _44 + ceil32(return_data.size) + 32] = 0
        require mem[_44 + 32] == mem[_44 + 44 len 20]
        require mem[_44 + 128] == bool(mem[_44 + 128])
        require mem[_44 + 160] == bool(mem[_44 + 160])
        require mem[_44 + 192] == mem[_44 + 204 len 20]
        if mem[_44 + 204 len 20] == address(arg1):
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 'User was never granted creation permission'
}



}
