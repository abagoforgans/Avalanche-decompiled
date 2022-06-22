contract main {




// =====================  Runtime code  =====================


#
#  - sub_d55a4046(?)
#
const ROLE_TRADER = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce

const ROLE_OWNER = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address vaultAddress;

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

function vault() payable {
    return vaultAddress
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        vaultAddress = arg1
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
    revert with 0, 'Strings: hex length insufficient'
}

function withdrawEth() payable {
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
    revert with 0, 'Strings: hex length insufficient'
}

function withdrawEthAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
    revert with 0, 'Strings: hex length insufficient'
}

function withdrawTokenAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approveToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
        revert with 0, 'Strings: hex length insufficient'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function sub_f7ad0d03(?) payable {
    require calldata.size - 4 >= 96
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
        require cd[s] == address(cd[s])
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0xd55a404600000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 96
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 132
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 230] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 262
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + -mem[64] + 258]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    if not mem[_128]:
        return 0
    _130 = mem[64]
    mem[mem[64]] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _129
    mem[mem[64] + 36] = address(cd[4])
    mem[mem[64] + 68] = 128
    _133 = mem[96]
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = (32 * _133) + 160
    _154 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + (32 * _133) + 164] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + (32 * _133) + 196
    while idx < _154:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _130 + (32 * _133) + (32 * _154) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _174 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _175 = mem[_174]
    require mem[_174] <= test266151307()
    require _174 + mem[_174] + 31 < _174 + return_data.size
    _176 = mem[_174 + mem[_174]]
    if mem[_174 + mem[_174]] > test266151307():
        revert with 'NH{q', 65
    if _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1 > test266151307() or floor32(mem[_174 + mem[_174]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _174 + ceil32(return_data.size) + floor32(mem[_174 + mem[_174]]) + 1
    mem[_174 + ceil32(return_data.size)] = _176
    require _175 + (32 * _176) + 32 <= return_data.size
    idx = 0
    s = _174 + _175 + 32
    t = _174 + ceil32(return_data.size) + 32
    while idx < _176:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _176 < 1:
        revert with 'NH{q', 17
    if _176 - 1 >= _176:
        revert with 'NH{q', 50
    if mem[(32 * _176 - 1) + _174 + ceil32(return_data.size) + 32] <= _129:
        return 0
    if _129 > -2:
        revert with 'NH{q', 17
    if _176 < 1:
        revert with 'NH{q', 17
    if _176 - 1 >= _176:
        revert with 'NH{q', 50
    if mem[(32 * _176 - 1) + _174 + ceil32(return_data.size) + 32] < _129 + 1:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[(32 * _176 - 1) + _174 + ceil32(return_data.size) + 32] + -_129 - 1
    return memory
      from mem[64]
       len 32
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 132)] == cd[(arg4 + 132)]
    if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        revert with 'NH{q', 50
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 'NH{q', 50
    _183 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _183
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _183
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 1
    s = cd[(arg4 + 36)]
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _279 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _281 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_284] == mem[_284 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[_284 + 12 len 20] != address(s):
            _291 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _298 = mem[64]
                mem[64] = mem[64] + 32
                mem[_298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_298 + 36] = _281
                mem[_298 + 68] = 0
                mem[_298 + 100] = this.address
                mem[_298 + 132] = 128
                mem[_298 + 164] = mem[_298]
                s = 0
                while s < mem[_298]:
                    mem[_298 + s + 196] = mem[_298 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_298]) > mem[_298]:
                    mem[_298 + mem[_298] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(this.address), 128, mem[_298], mem[_298 + 196 len ceil32(mem[_298])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_298 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _298 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _306 = mem[(32 * idx + 1) + 128]
                _308 = mem[64]
                mem[64] = mem[64] + 32
                mem[_308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_308 + 36] = _281
                mem[_308 + 68] = 0
                mem[_308 + 100] = address(_306)
                mem[_308 + 132] = 128
                mem[_308 + 164] = mem[_308]
                s = 0
                while s < mem[_308]:
                    mem[_308 + s + 196] = mem[_308 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_308]) > mem[_308]:
                    mem[_308 + mem[_308] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(_306), 128, mem[_308], mem[_308 + 196 len ceil32(mem[_308])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_308 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _308 + ceil32(return_data.size) + 32
        else:
            _293 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _299 = mem[64]
                mem[64] = mem[64] + 32
                mem[_299 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_299 + 36] = 0
                mem[_299 + 68] = _281
                mem[_299 + 100] = this.address
                mem[_299 + 132] = 128
                mem[_299 + 164] = mem[_299]
                s = 0
                while s < mem[_299]:
                    mem[_299 + s + 196] = mem[_299 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_299]) > mem[_299]:
                    mem[_299 + mem[_299] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(this.address), 128, mem[_299], mem[_299 + 196 len ceil32(mem[_299])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_299 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _299 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _307 = mem[(32 * idx + 1) + 128]
                _309 = mem[64]
                mem[64] = mem[64] + 32
                mem[_309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_309 + 36] = 0
                mem[_309 + 68] = _281
                mem[_309 + 100] = address(_307)
                mem[_309 + 132] = 128
                mem[_309 + 164] = mem[_309]
                s = 0
                while s < mem[_309]:
                    mem[_309 + s + 196] = mem[_309 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_309]) > mem[_309]:
                    mem[_309 + mem[_309] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(_307), 128, mem[_309], mem[_309 + 196 len ceil32(mem[_309])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_309 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _309 + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    mem[mem[64] + 4] = vaultAddress
    mem[mem[64] + 36] = cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _287 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_287] == bool(mem[_287])
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
        revert with 'NH{q', 17
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
        revert with 'NH{q', 50
    _303 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = _303 - cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _303 - cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _318 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_318] == bool(mem[_318])
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 132)] == cd[(arg4 + 132)]
    if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        revert with 'NH{q', 50
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 'NH{q', 50
    _183 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _183
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _183
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 1
    s = cd[(arg4 + 36)]
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _279 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _281 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_284] == mem[_284 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[_284 + 12 len 20] != address(s):
            _291 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _298 = mem[64]
                mem[64] = mem[64] + 32
                mem[_298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_298 + 36] = _281
                mem[_298 + 68] = 0
                mem[_298 + 100] = this.address
                mem[_298 + 132] = 128
                mem[_298 + 164] = mem[_298]
                s = 0
                while s < mem[_298]:
                    mem[_298 + s + 196] = mem[_298 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_298]) > mem[_298]:
                    mem[_298 + mem[_298] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(this.address), 128, mem[_298], mem[_298 + 196 len ceil32(mem[_298])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_298 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _298 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _306 = mem[(32 * idx + 1) + 128]
                _308 = mem[64]
                mem[64] = mem[64] + 32
                mem[_308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_308 + 36] = _281
                mem[_308 + 68] = 0
                mem[_308 + 100] = address(_306)
                mem[_308 + 132] = 128
                mem[_308 + 164] = mem[_308]
                s = 0
                while s < mem[_308]:
                    mem[_308 + s + 196] = mem[_308 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_308]) > mem[_308]:
                    mem[_308 + mem[_308] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(_306), 128, mem[_308], mem[_308 + 196 len ceil32(mem[_308])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_308 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _308 + ceil32(return_data.size) + 32
        else:
            _293 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _299 = mem[64]
                mem[64] = mem[64] + 32
                mem[_299 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_299 + 36] = 0
                mem[_299 + 68] = _281
                mem[_299 + 100] = this.address
                mem[_299 + 132] = 128
                mem[_299 + 164] = mem[_299]
                s = 0
                while s < mem[_299]:
                    mem[_299 + s + 196] = mem[_299 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_299]) > mem[_299]:
                    mem[_299 + mem[_299] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(this.address), 128, mem[_299], mem[_299 + 196 len ceil32(mem[_299])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_299 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _299 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _307 = mem[(32 * idx + 1) + 128]
                _309 = mem[64]
                mem[64] = mem[64] + 32
                mem[_309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_309 + 36] = 0
                mem[_309 + 68] = _281
                mem[_309 + 100] = address(_307)
                mem[_309 + 132] = 128
                mem[_309 + 164] = mem[_309]
                s = 0
                while s < mem[_309]:
                    mem[_309 + s + 196] = mem[_309 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_309]) > mem[_309]:
                    mem[_309 + mem[_309] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(_307), 128, mem[_309], mem[_309 + 196 len ceil32(mem[_309])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_309 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _309 + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    mem[mem[64] + 4] = vaultAddress
    mem[mem[64] + 36] = cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _287 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_287] == bool(mem[_287])
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
        revert with 'NH{q', 17
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
        revert with 'NH{q', 50
    _303 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = _303 - cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _303 - cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _318 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_318] == bool(mem[_318])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 128
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 132)] == cd[(arg4 + 132)]
    if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        revert with 'NH{q', 50
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 'NH{q', 50
    _183 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _183
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _183
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 1
    s = cd[(arg4 + 36)]
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _279 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _281 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_284] == mem[_284 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[_284 + 12 len 20] != address(s):
            _291 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _298 = mem[64]
                mem[64] = mem[64] + 32
                mem[_298 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_298 + 36] = _281
                mem[_298 + 68] = 0
                mem[_298 + 100] = this.address
                mem[_298 + 132] = 128
                mem[_298 + 164] = mem[_298]
                s = 0
                while s < mem[_298]:
                    mem[_298 + s + 196] = mem[_298 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_298]) > mem[_298]:
                    mem[_298 + mem[_298] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(this.address), 128, mem[_298], mem[_298 + 196 len ceil32(mem[_298])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_298 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _298 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _306 = mem[(32 * idx + 1) + 128]
                _308 = mem[64]
                mem[64] = mem[64] + 32
                mem[_308 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_308 + 36] = _281
                mem[_308 + 68] = 0
                mem[_308 + 100] = address(_306)
                mem[_308 + 132] = 128
                mem[_308 + 164] = mem[_308]
                s = 0
                while s < mem[_308]:
                    mem[_308 + s + 196] = mem[_308 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_308]) > mem[_308]:
                    mem[_308 + mem[_308] + 196] = 0
                require ext_code.size(address(_291))
                call address(_291).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _281, 0, address(_306), 128, mem[_308], mem[_308 + 196 len ceil32(mem[_308])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token0() with:
                        gas gas_remaining wei
                mem[_308 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _308 + ceil32(return_data.size) + 32
        else:
            _293 = mem[(32 * idx) + 128]
            if mem[96] < 1:
                revert with 'NH{q', 17
            if idx == mem[96] - 1:
                _299 = mem[64]
                mem[64] = mem[64] + 32
                mem[_299 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_299 + 36] = 0
                mem[_299 + 68] = _281
                mem[_299 + 100] = this.address
                mem[_299 + 132] = 128
                mem[_299 + 164] = mem[_299]
                s = 0
                while s < mem[_299]:
                    mem[_299 + s + 196] = mem[_299 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_299]) > mem[_299]:
                    mem[_299 + mem[_299] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(this.address), 128, mem[_299], mem[_299 + 196 len ceil32(mem[_299])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_299 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _299 + ceil32(return_data.size) + 32
            else:
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                _307 = mem[(32 * idx + 1) + 128]
                _309 = mem[64]
                mem[64] = mem[64] + 32
                mem[_309 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_309 + 36] = 0
                mem[_309 + 68] = _281
                mem[_309 + 100] = address(_307)
                mem[_309 + 132] = 128
                mem[_309 + 164] = mem[_309]
                s = 0
                while s < mem[_309]:
                    mem[_309 + s + 196] = mem[_309 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_309]) > mem[_309]:
                    mem[_309 + mem[_309] + 196] = 0
                require ext_code.size(address(_293))
                call address(_293).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _281, address(_307), 128, mem[_309], mem[_309 + 196 len ceil32(mem[_309])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(_279))
                staticcall address(_279).token1() with:
                        gas gas_remaining wei
                mem[_309 + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _309 + ceil32(return_data.size) + 32
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    mem[mem[64] + 4] = vaultAddress
    mem[mem[64] + 36] = cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _287 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_287] == bool(mem[_287])
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
        revert with 'NH{q', 17
    if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
        revert with 'NH{q', 50
    _303 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = mem[140 len 20]
    mem[mem[64] + 36] = _303 - cd[(arg4 + 132)]
    require ext_code.size(address(s))
    call address(s).0xa9059cbb with:
         gas gas_remaining wei
        args mem[mem[64] + 4], _303 - cd[(arg4 + 132)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _318 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_318] == bool(mem[_318])
}

function sub_c7d22fd5(?) payable {
    require calldata.size - 4 >= 160
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
        require cd[s] == address(cd[s])
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    mem[0] = msg.sender
    mem[32] = sha3(0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce, 0)
    if not roleAdmin[0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce][address(msg.sender)].field_0:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 42] = call.data[calldata.size len 42]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 226 len 66] = call.data[calldata.size len 66]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 354] = 'AccessControl: account '
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 377 len 64] = 0, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 63]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = ' is missing role '
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 436 len 96] = 0, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 95]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 502] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 506] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 538] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 570 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 354 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])]
        if ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]) > mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322] + 570] = 0
        revert with 0, 
                    32,
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322],
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 570 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = (32 * ('cd', 36).length) + 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 262] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 294
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + -mem[64] + 290]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _257 = mem[_256]
    require mem[_256] <= test266151307()
    require _256 + mem[_256] + 31 < _256 + return_data.size
    _258 = mem[_256 + mem[_256]]
    if mem[_256 + mem[_256]] > test266151307():
        revert with 'NH{q', 65
    if _256 + ceil32(return_data.size) + floor32(mem[_256 + mem[_256]]) + 1 > test266151307() or floor32(mem[_256 + mem[_256]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _256 + ceil32(return_data.size) + floor32(mem[_256 + mem[_256]]) + 1
    mem[_256 + ceil32(return_data.size)] = _258
    require _257 + (32 * _258) + 32 <= return_data.size
    idx = 0
    s = _256 + _257 + 32
    t = _256 + ceil32(return_data.size) + 32
    while idx < _258:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[100] > -2:
        revert with 'NH{q', 17
    if _258 < 1:
        revert with 'NH{q', 17
    if _258 - 1 >= _258:
        revert with 'NH{q', 50
    _352 = mem[(32 * _258 - 1) + _256 + ceil32(return_data.size) + 32]
    if mem[(32 * _258 - 1) + _256 + ceil32(return_data.size) + 32] < cd[100] + 1:
        revert with 'NH{q', 17
    if mem[(32 * _258 - 1) + _256 + ceil32(return_data.size) + 32] + -cd[100] - 1 <= cd[132]:
        revert with 0, 'BBB'
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _372 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_372] == mem[_372 + 12 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    if mem[_372 + 12 len 20] != address(cd[4]):
        staticcall mem[140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_394] == mem[_394 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _400 = mem[128]
        if 0 >= _258:
            revert with 'NH{q', 50
        _404 = mem[_256 + ceil32(return_data.size) + 32]
        _405 = mem[64]
        mem[mem[64] + 32] = mem[_394 + 12 len 20]
        mem[mem[64] + 64] = 128
        _408 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _408:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_405 + 96] = (32 * _408) + 160
        _432 = mem[_256 + ceil32(return_data.size)]
        mem[_405 + (32 * _408) + 192] = mem[_256 + ceil32(return_data.size)]
        mem[_405 + (32 * _408) + 224 len 32 * _432] = mem[_256 + ceil32(return_data.size) + 32 len 32 * _432]
        mem[_405 + 128] = _352 + -cd[100] - 1
        _478 = mem[64]
        mem[64] = _405 + (32 * _408) + (32 * _432) + 224
        mem[_405 + (32 * _408) + (32 * _432) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_405 + (32 * _408) + (32 * _432) + 228] = _404
        mem[_405 + (32 * _408) + (32 * _432) + 260] = 0
        mem[_405 + (32 * _408) + (32 * _432) + 292] = this.address
        mem[_405 + (32 * _408) + (32 * _432) + 324] = 128
        _490 = mem[_478]
        mem[_405 + (32 * _408) + (32 * _432) + 356] = mem[_478]
        mem[_405 + (32 * _408) + (32 * _432) + 388 len ceil32(_490)] = mem[_478 + 32 len ceil32(_490)]
        if ceil32(_490) > _490:
            mem[_405 + (32 * _408) + (32 * _432) + _490 + 388] = 0
        require ext_code.size(address(_400))
        call address(_400).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _404, 0, address(this.address), 128, mem[_405 + (32 * _408) + (32 * _432) + 356 len ceil32(_490) + 32]
    else:
        staticcall mem[140 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_395] == mem[_395 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _402 = mem[128]
        if 0 >= _258:
            revert with 'NH{q', 50
        _406 = mem[_256 + ceil32(return_data.size) + 32]
        _407 = mem[64]
        mem[mem[64] + 32] = mem[_395 + 12 len 20]
        mem[mem[64] + 64] = 128
        _409 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _409:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_407 + 96] = (32 * _409) + 160
        _433 = mem[_256 + ceil32(return_data.size)]
        mem[_407 + (32 * _409) + 192] = mem[_256 + ceil32(return_data.size)]
        mem[_407 + (32 * _409) + 224 len 32 * _433] = mem[_256 + ceil32(return_data.size) + 32 len 32 * _433]
        mem[_407 + 128] = _352 + -cd[100] - 1
        _480 = mem[64]
        mem[64] = _407 + (32 * _409) + (32 * _433) + 224
        mem[_407 + (32 * _409) + (32 * _433) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_407 + (32 * _409) + (32 * _433) + 228] = 0
        mem[_407 + (32 * _409) + (32 * _433) + 260] = _406
        mem[_407 + (32 * _409) + (32 * _433) + 292] = this.address
        mem[_407 + (32 * _409) + (32 * _433) + 324] = 128
        _491 = mem[_480]
        mem[_407 + (32 * _409) + (32 * _433) + 356] = mem[_480]
        mem[_407 + (32 * _409) + (32 * _433) + 388 len ceil32(_491)] = mem[_480 + 32 len ceil32(_491)]
        if ceil32(_491) > _491:
            mem[_407 + (32 * _409) + (32 * _433) + _491 + 388] = 0
        require ext_code.size(address(_402))
        call address(_402).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _406, address(this.address), 128, mem[_407 + (32 * _409) + (32 * _433) + 356 len ceil32(_491) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5fbf80c(?) payable {
    require calldata.size - 4 >= 128
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
        require cd[s] == address(cd[s])
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
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == cd[100]
    mem[0] = msg.sender
    mem[32] = sha3(0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce, 0)
    if not roleAdmin[0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce][address(msg.sender)].field_0:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 42] = call.data[calldata.size len 42]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 226 len 66] = call.data[calldata.size len 66]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 354] = 'AccessControl: account '
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 377 len 64] = 0, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131 len 63]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 419] = ' is missing role '
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 436 len 96] = 0, mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 227 len 95]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 502] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 506] = 32
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 538] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 570 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 354 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])]
        if ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]) > mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322]:
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322] + 570] = 0
        revert with 0, 
                    32,
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322],
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 570 len ceil32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 322])]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0xd55a404600000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = 96
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 198] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 132
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 230] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 262
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + -mem[64] + 258]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _248 = mem[_247]
    require mem[_247] == mem[_247]
    if mem[_247] <= 0:
        revert with 0, 'AAA'
    _251 = mem[64]
    mem[mem[64]] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _248
    mem[mem[64] + 36] = address(cd[4])
    mem[mem[64] + 68] = 128
    _255 = mem[96]
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < _255:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_251 + 100] = (32 * _255) + 160
    _348 = mem[floor32(('cd', 36).length) + 97]
    mem[_251 + (32 * _255) + 164] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _251 + (32 * _255) + 196
    while idx < _348:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _251 + (32 * _255) + (32 * _348) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _441 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _450 = mem[_441]
    require mem[_441] <= test266151307()
    require _441 + mem[_441] + 31 < _441 + return_data.size
    _455 = mem[_441 + mem[_441]]
    if mem[_441 + mem[_441]] > test266151307():
        revert with 'NH{q', 65
    if _441 + ceil32(return_data.size) + floor32(mem[_441 + mem[_441]]) + 1 > test266151307() or floor32(mem[_441 + mem[_441]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _441 + ceil32(return_data.size) + floor32(mem[_441 + mem[_441]]) + 1
    mem[_441 + ceil32(return_data.size)] = _455
    require _450 + (32 * _455) + 32 <= return_data.size
    idx = 0
    s = _441 + _450 + 32
    t = _441 + ceil32(return_data.size) + 32
    while idx < _455:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _248 > -2:
        revert with 'NH{q', 17
    if _455 < 1:
        revert with 'NH{q', 17
    if _455 - 1 >= _455:
        revert with 'NH{q', 50
    _538 = mem[(32 * _455 - 1) + _441 + ceil32(return_data.size) + 32]
    if mem[(32 * _455 - 1) + _441 + ceil32(return_data.size) + 32] < _248 + 1:
        revert with 'NH{q', 17
    if mem[(32 * _455 - 1) + _441 + ceil32(return_data.size) + 32] + -_248 - 1 <= cd[100]:
        revert with 0, 'BBB'
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _544 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_544] == mem[_544 + 12 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    if mem[_544 + 12 len 20] != address(cd[4]):
        staticcall mem[140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _555 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_555] == mem[_555 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _561 = mem[128]
        if 0 >= _455:
            revert with 'NH{q', 50
        _565 = mem[_441 + ceil32(return_data.size) + 32]
        _566 = mem[64]
        mem[mem[64] + 32] = mem[_555 + 12 len 20]
        mem[mem[64] + 64] = 128
        _569 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * _569) + 160
        _591 = mem[_441 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _569) + 192] = mem[_441 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _569) + 224 len 32 * _591] = mem[_441 + ceil32(return_data.size) + 32 len 32 * _591]
        mem[mem[64] + 128] = _538 + -_248 - 1
        _609 = mem[64]
        mem[64] = mem[64] + (32 * _569) + (32 * _591) + 224
        mem[_566 + (32 * _569) + (32 * _591) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_566 + (32 * _569) + (32 * _591) + 228] = _565
        mem[_566 + (32 * _569) + (32 * _591) + 260] = 0
        mem[_566 + (32 * _569) + (32 * _591) + 292] = this.address
        mem[_566 + (32 * _569) + (32 * _591) + 324] = 128
        _613 = mem[_609]
        mem[_566 + (32 * _569) + (32 * _591) + 356] = mem[_609]
        mem[_566 + (32 * _569) + (32 * _591) + 388 len ceil32(_613)] = mem[_609 + 32 len ceil32(_613)]
        if ceil32(_613) > _613:
            mem[_566 + (32 * _569) + (32 * _591) + _613 + 388] = 0
        require ext_code.size(address(_561))
        call address(_561).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _565, 0, address(this.address), 128, mem[_566 + (32 * _569) + (32 * _591) + 356 len ceil32(_613) + 32]
    else:
        staticcall mem[140 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _556 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_556] == mem[_556 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _563 = mem[128]
        if 0 >= _455:
            revert with 'NH{q', 50
        _567 = mem[_441 + ceil32(return_data.size) + 32]
        _568 = mem[64]
        mem[mem[64] + 32] = mem[_556 + 12 len 20]
        mem[mem[64] + 64] = 128
        _570 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _570:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_568 + 96] = (32 * _570) + 160
        _592 = mem[_441 + ceil32(return_data.size)]
        mem[_568 + (32 * _570) + 192] = mem[_441 + ceil32(return_data.size)]
        mem[_568 + (32 * _570) + 224 len 32 * _592] = mem[_441 + ceil32(return_data.size) + 32 len 32 * _592]
        mem[_568 + 128] = _538 + -_248 - 1
        _611 = mem[64]
        mem[64] = _568 + (32 * _570) + (32 * _592) + 224
        mem[_568 + (32 * _570) + (32 * _592) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_568 + (32 * _570) + (32 * _592) + 228] = 0
        mem[_568 + (32 * _570) + (32 * _592) + 260] = _567
        mem[_568 + (32 * _570) + (32 * _592) + 292] = this.address
        mem[_568 + (32 * _570) + (32 * _592) + 324] = 128
        _614 = mem[_611]
        mem[_568 + (32 * _570) + (32 * _592) + 356] = mem[_611]
        mem[_568 + (32 * _570) + (32 * _592) + 388 len ceil32(_614)] = mem[_611 + 32 len ceil32(_614)]
        if ceil32(_614) > _614:
            mem[_568 + (32 * _570) + (32 * _592) + _614 + 388] = 0
        require ext_code.size(address(_563))
        call address(_563).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _567, address(this.address), 128, mem[_568 + (32 * _570) + (32 * _592) + 356 len ceil32(_614) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e6e949c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 1:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _342 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == mem[_349 + 12 len 20]
            require ext_code.size(address(_342))
            staticcall address(_342).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_349 + 12 len 20] != address(s):
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _371 = mem[_367]
                require mem[_367] == mem[_367 + 18 len 14]
                _375 = mem[_367 + 32]
                require mem[_367 + 32] == mem[_367 + 50 len 14]
                require mem[_367 + 64] == mem[_367 + 92 len 4]
                require ext_code.size(address(_342))
                staticcall address(_342).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _395 = mem[_391]
                require mem[_391] == mem[_391 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _375) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _371) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _371) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _375) and 10000 > -1 / Mask(112, 0, _375):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _375) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _375)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _371) / (10000 * Mask(112, 0, _375)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _395
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _372 = mem[_368]
            require mem[_368] == mem[_368 + 18 len 14]
            _376 = mem[_368 + 32]
            require mem[_368 + 32] == mem[_368 + 50 len 14]
            require mem[_368 + 64] == mem[_368 + 92 len 4]
            require ext_code.size(address(_342))
            staticcall address(_342).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _396 = mem[_392]
            require mem[_392] == mem[_392 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _372) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _376) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _376) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _372) and 10000 > -1 / Mask(112, 0, _372):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _372) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _372)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _376) / (10000 * Mask(112, 0, _372)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _396
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        mem[mem[64]] = 32
        _351 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 64 len 32 * _351] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _351]
        return 32, mem[mem[64] + 32 len (32 * _351) + 32]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    s = cd[36]
    t = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _346 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _350 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_350] == mem[_350 + 12 len 20]
        require ext_code.size(address(_346))
        staticcall address(_346).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_350 + 12 len 20] != address(s):
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _373 = mem[_369]
            require mem[_369] == mem[_369 + 18 len 14]
            _377 = mem[_369 + 32]
            require mem[_369 + 32] == mem[_369 + 50 len 14]
            require mem[_369 + 64] == mem[_369 + 92 len 4]
            require ext_code.size(address(_346))
            staticcall address(_346).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _397 = mem[_393]
            require mem[_393] == mem[_393 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _377) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _373) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _373) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _377) and 10000 > -1 / Mask(112, 0, _377):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _377) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _377)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _373) / (10000 * Mask(112, 0, _377)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _397
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _374 = mem[_370]
        require mem[_370] == mem[_370 + 18 len 14]
        _378 = mem[_370 + 32]
        require mem[_370 + 32] == mem[_370 + 50 len 14]
        require mem[_370 + 64] == mem[_370 + 92 len 4]
        require ext_code.size(address(_346))
        staticcall address(_346).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _398 = mem[_394]
        require mem[_394] == mem[_394 + 12 len 20]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        if t <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
        if Mask(112, 0, _374) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, _378) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
            revert with 'NH{q', 17
        if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
            revert with 'NH{q', 17
        if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _378) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
            revert with 'NH{q', 17
        if Mask(112, 0, _374) and 10000 > -1 / Mask(112, 0, _374):
            revert with 'NH{q', 17
        if 10000 * Mask(112, 0, _374) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
            revert with 'NH{q', 17
        if not (10000 * Mask(112, 0, _374)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
            revert with 'NH{q', 18
        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _378) / (10000 * Mask(112, 0, _374)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _398
        t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
        continue 
    mem[mem[64]] = 32
    _352 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 64 len 32 * _352] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _352]
    return 32, mem[mem[64] + 32 len (32 * _352) + 32]
}



}
