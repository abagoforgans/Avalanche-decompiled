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
        s = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _426 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] == 1:
                mem[mem[64] + 4] = s
                require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x4a36d6c1 with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_447] == mem[_447]
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = mem[_447]
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    mem[mem[64] + 4] = s
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xf1ee8d92 with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _450 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_450] == mem[_450]
                    if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = mem[_450]
                else:
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _439 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_439] == mem[_439 + 12 len 20]
                    require ext_code.size(address(_426))
                    staticcall address(_426).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_439 + 12 len 20] != address(cd[36]):
                        _467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _481 = mem[_467]
                        require mem[_467] == mem[_467 + 18 len 14]
                        _487 = mem[_467 + 32]
                        require mem[_467 + 32] == mem[_467 + 50 len 14]
                        require mem[_467 + 64] == mem[_467 + 92 len 4]
                        require ext_code.size(address(_426))
                        staticcall address(_426).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _503 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_503] == mem[_503 + 12 len 20]
                        if idx >= mem[floor32(('cd', 68).length) + 97]:
                            revert with 'NH{q', 50
                        if s <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _487) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _481) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                            revert with 'NH{q', 17
                        if s and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / s:
                            revert with 'NH{q', 17
                        if s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _481) > -1 / s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                            revert with 'NH{q', 17
                        if Mask(112, 0, _487) and 10000 > -1 / Mask(112, 0, _487):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _487) > (-1 * s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _487)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _481) / (10000 * Mask(112, 0, _487)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                    else:
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _482 = mem[_468]
                        require mem[_468] == mem[_468 + 18 len 14]
                        _488 = mem[_468 + 32]
                        require mem[_468 + 32] == mem[_468 + 50 len 14]
                        require mem[_468 + 64] == mem[_468 + 92 len 4]
                        require ext_code.size(address(_426))
                        staticcall address(_426).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_504] == mem[_504 + 12 len 20]
                        if idx >= mem[floor32(('cd', 68).length) + 97]:
                            revert with 'NH{q', 50
                        if s <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                        if Mask(112, 0, _482) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _488) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                            revert with 'NH{q', 17
                        if s and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / s:
                            revert with 'NH{q', 17
                        if s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _488) > -1 / s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                            revert with 'NH{q', 17
                        if Mask(112, 0, _482) and 10000 > -1 / Mask(112, 0, _482):
                            revert with 'NH{q', 17
                        if 10000 * Mask(112, 0, _482) > (-1 * s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                            revert with 'NH{q', 17
                        if not (10000 * Mask(112, 0, _482)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                            revert with 'NH{q', 18
                        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _488) / (10000 * Mask(112, 0, _482)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        mem[mem[64]] = 32
        _437 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 64 len 32 * _437] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _437]
        return 32, mem[mem[64] + 32 len (32 * _437) + 32]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _428 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 140 len 20] == 1:
            mem[mem[64] + 4] = s
            require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
            staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x4a36d6c1 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_448] == mem[_448]
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = mem[_448]
        else:
            if not mem[(32 * idx) + 140 len 20]:
                mem[mem[64] + 4] = s
                require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xf1ee8d92 with:
                        gas gas_remaining wei
                       args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_452] == mem[_452]
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = mem[_452]
            else:
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_440] == mem[_440 + 12 len 20]
                require ext_code.size(address(_428))
                staticcall address(_428).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_440 + 12 len 20] != address(cd[36]):
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _484 = mem[_470]
                    require mem[_470] == mem[_470 + 18 len 14]
                    _489 = mem[_470 + 32]
                    require mem[_470 + 32] == mem[_470 + 50 len 14]
                    require mem[_470 + 64] == mem[_470 + 92 len 4]
                    require ext_code.size(address(_428))
                    staticcall address(_428).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_505] == mem[_505 + 12 len 20]
                    if idx >= mem[floor32(('cd', 68).length) + 97]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if Mask(112, 0, _489) <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, _484) <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                        revert with 'NH{q', 17
                    if s and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / s:
                        revert with 'NH{q', 17
                    if s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _484) > -1 / s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _489) and 10000 > -1 / Mask(112, 0, _489):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _489) > (-1 * s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _489)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                        revert with 'NH{q', 18
                    if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _484) / (10000 * Mask(112, 0, _489)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                else:
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _485 = mem[_471]
                    require mem[_471] == mem[_471 + 18 len 14]
                    _490 = mem[_471 + 32]
                    require mem[_471 + 32] == mem[_471 + 50 len 14]
                    require mem[_471 + 64] == mem[_471 + 92 len 4]
                    require ext_code.size(address(_428))
                    staticcall address(_428).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_506] == mem[_506 + 12 len 20]
                    if idx >= mem[floor32(('cd', 68).length) + 97]:
                        revert with 'NH{q', 50
                    if s <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                    if Mask(112, 0, _485) <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if Mask(112, 0, _490) <= 0:
                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                    if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                        revert with 'NH{q', 17
                    if s and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / s:
                        revert with 'NH{q', 17
                    if s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _490) > -1 / s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                        revert with 'NH{q', 17
                    if Mask(112, 0, _485) and 10000 > -1 / Mask(112, 0, _485):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _485) > (-1 * s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _485)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                        revert with 'NH{q', 18
                    if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _490) / (10000 * Mask(112, 0, _485)) + (s * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
        continue 
    mem[mem[64]] = 32
    _438 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 64 len 32 * _438] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _438]
    return 32, mem[mem[64] + 32 len (32 * _438) + 32]
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
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98
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
    if mem[172 len 20] == 1:
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _997 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1013 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == mem[_1025 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1025 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1058 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1080 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1080 + 36] = _1013
                            mem[_1080 + 68] = 0
                            mem[_1080 + 100] = this.address
                            mem[_1080 + 132] = 128
                            mem[_1080 + 164] = mem[_1080]
                            s = 0
                            while s < mem[_1080]:
                                mem[_1080 + s + 196] = mem[_1080 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1080]) > mem[_1080]:
                                mem[_1080 + mem[_1080] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(this.address), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1080 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1080 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1106 = mem[(32 * idx + 1) + 128]
                            _1118 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1118 + 36] = _1013
                            mem[_1118 + 68] = 0
                            mem[_1118 + 100] = address(_1106)
                            mem[_1118 + 132] = 128
                            mem[_1118 + 164] = mem[_1118]
                            s = 0
                            while s < mem[_1118]:
                                mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1118]) > mem[_1118]:
                                mem[_1118 + mem[_1118] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(_1106), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1118 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1118 + ceil32(return_data.size) + 32
                    else:
                        _1060 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1081 + 36] = 0
                            mem[_1081 + 68] = _1013
                            mem[_1081 + 100] = this.address
                            mem[_1081 + 132] = 128
                            mem[_1081 + 164] = mem[_1081]
                            s = 0
                            while s < mem[_1081]:
                                mem[_1081 + s + 196] = mem[_1081 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1081]) > mem[_1081]:
                                mem[_1081 + mem[_1081] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(this.address), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1081 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1081 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1107 = mem[(32 * idx + 1) + 128]
                            _1119 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1119 + 36] = 0
                            mem[_1119 + 68] = _1013
                            mem[_1119 + 100] = address(_1107)
                            mem[_1119 + 132] = 128
                            mem[_1119 + 164] = mem[_1119]
                            s = 0
                            while s < mem[_1119]:
                                mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1119]) > mem[_1119]:
                                mem[_1119 + mem[_1119] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(_1107), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1119 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1119 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1029 = mem[_1022]
                    require mem[_1022] == mem[_1022]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1046 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1046] == mem[_1046]
                    if mem[_1046] >= _1029:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1133 = mem[_1120]
                    require mem[_1120] == mem[_1120]
                    mem[mem[64] + 4] = mem[_1120]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _1133
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1133 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1169 = mem[_1162]
                    require mem[_1162] == mem[_1162]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1169
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1169
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1310] == bool(mem[_1310])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
            revert with 'NH{q', 17
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _1034 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1034 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1034 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1094 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1094] == bool(mem[_1094])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1000 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1016 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1026] == mem[_1026 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1026 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1063 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1083 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1083 + 36] = _1016
                                mem[_1083 + 68] = 0
                                mem[_1083 + 100] = this.address
                                mem[_1083 + 132] = 128
                                mem[_1083 + 164] = mem[_1083]
                                s = 0
                                while s < mem[_1083]:
                                    mem[_1083 + s + 196] = mem[_1083 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1083]) > mem[_1083]:
                                    mem[_1083 + mem[_1083] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(this.address), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1083 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1083 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1110 = mem[(32 * idx + 1) + 128]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 36] = _1016
                                mem[_1121 + 68] = 0
                                mem[_1121 + 100] = address(_1110)
                                mem[_1121 + 132] = 128
                                mem[_1121 + 164] = mem[_1121]
                                s = 0
                                while s < mem[_1121]:
                                    mem[_1121 + s + 196] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1121]) > mem[_1121]:
                                    mem[_1121 + mem[_1121] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(_1110), 128, mem[_1121], mem[_1121 + 196 len ceil32(mem[_1121])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1121 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 32
                        else:
                            _1065 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1084 + 36] = 0
                                mem[_1084 + 68] = _1016
                                mem[_1084 + 100] = this.address
                                mem[_1084 + 132] = 128
                                mem[_1084 + 164] = mem[_1084]
                                s = 0
                                while s < mem[_1084]:
                                    mem[_1084 + s + 196] = mem[_1084 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1084]) > mem[_1084]:
                                    mem[_1084 + mem[_1084] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(this.address), 128, mem[_1084], mem[_1084 + 196 len ceil32(mem[_1084])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1084 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1084 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1111 = mem[(32 * idx + 1) + 128]
                                _1122 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1122 + 36] = 0
                                mem[_1122 + 68] = _1016
                                mem[_1122 + 100] = address(_1111)
                                mem[_1122 + 132] = 128
                                mem[_1122 + 164] = mem[_1122]
                                s = 0
                                while s < mem[_1122]:
                                    mem[_1122 + s + 196] = mem[_1122 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1122]) > mem[_1122]:
                                    mem[_1122 + mem[_1122] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(_1111), 128, mem[_1122], mem[_1122 + 196 len ceil32(mem[_1122])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1122 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1122 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1031 = mem[_1023]
                        require mem[_1023] == mem[_1023]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == mem[_1047]
                        if mem[_1047] >= _1031:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1123]
                        require mem[_1123] == mem[_1123]
                        mem[mem[64] + 4] = mem[_1123]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1134
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1134 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1170 = mem[_1165]
                        require mem[_1165] == mem[_1165]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1170
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1311] == bool(mem[_1311])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1036 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1036 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1095] == bool(mem[_1095])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _681 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _681
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _681
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1003 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1019 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1027] == mem[_1027 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1027 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1068 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1086 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1086 + 36] = _1019
                                mem[_1086 + 68] = 0
                                mem[_1086 + 100] = this.address
                                mem[_1086 + 132] = 128
                                mem[_1086 + 164] = mem[_1086]
                                s = 0
                                while s < mem[_1086]:
                                    mem[_1086 + s + 196] = mem[_1086 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1086]) > mem[_1086]:
                                    mem[_1086 + mem[_1086] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(this.address), 128, mem[_1086], mem[_1086 + 196 len ceil32(mem[_1086])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1086 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1086 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1114 = mem[(32 * idx + 1) + 128]
                                _1124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1124 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 36] = _1019
                                mem[_1124 + 68] = 0
                                mem[_1124 + 100] = address(_1114)
                                mem[_1124 + 132] = 128
                                mem[_1124 + 164] = mem[_1124]
                                s = 0
                                while s < mem[_1124]:
                                    mem[_1124 + s + 196] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1124]) > mem[_1124]:
                                    mem[_1124 + mem[_1124] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(_1114), 128, mem[_1124], mem[_1124 + 196 len ceil32(mem[_1124])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1124 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 32
                        else:
                            _1070 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1087 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1087 + 36] = 0
                                mem[_1087 + 68] = _1019
                                mem[_1087 + 100] = this.address
                                mem[_1087 + 132] = 128
                                mem[_1087 + 164] = mem[_1087]
                                s = 0
                                while s < mem[_1087]:
                                    mem[_1087 + s + 196] = mem[_1087 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1087]) > mem[_1087]:
                                    mem[_1087 + mem[_1087] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(this.address), 128, mem[_1087], mem[_1087 + 196 len ceil32(mem[_1087])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1087 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1087 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1115 = mem[(32 * idx + 1) + 128]
                                _1125 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1125 + 36] = 0
                                mem[_1125 + 68] = _1019
                                mem[_1125 + 100] = address(_1115)
                                mem[_1125 + 132] = 128
                                mem[_1125 + 164] = mem[_1125]
                                s = 0
                                while s < mem[_1125]:
                                    mem[_1125 + s + 196] = mem[_1125 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1125]) > mem[_1125]:
                                    mem[_1125 + mem[_1125] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(_1115), 128, mem[_1125], mem[_1125 + 196 len ceil32(mem[_1125])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1125 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1125 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1033 = mem[_1024]
                        require mem[_1024] == mem[_1024]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1048] == mem[_1048]
                        if mem[_1048] >= _1033:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1135 = mem[_1126]
                        require mem[_1126] == mem[_1126]
                        mem[mem[64] + 4] = mem[_1126]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1135
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1135 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1168]
                        require mem[_1168] == mem[_1168]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1171
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1171
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1312] == bool(mem[_1312])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1038 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1038 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1038 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1096] == bool(mem[_1096])
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
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98
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
    if mem[172 len 20] == 1:
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _997 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1013 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == mem[_1025 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1025 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1058 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1080 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1080 + 36] = _1013
                            mem[_1080 + 68] = 0
                            mem[_1080 + 100] = this.address
                            mem[_1080 + 132] = 128
                            mem[_1080 + 164] = mem[_1080]
                            s = 0
                            while s < mem[_1080]:
                                mem[_1080 + s + 196] = mem[_1080 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1080]) > mem[_1080]:
                                mem[_1080 + mem[_1080] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(this.address), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1080 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1080 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1106 = mem[(32 * idx + 1) + 128]
                            _1118 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1118 + 36] = _1013
                            mem[_1118 + 68] = 0
                            mem[_1118 + 100] = address(_1106)
                            mem[_1118 + 132] = 128
                            mem[_1118 + 164] = mem[_1118]
                            s = 0
                            while s < mem[_1118]:
                                mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1118]) > mem[_1118]:
                                mem[_1118 + mem[_1118] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(_1106), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1118 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1118 + ceil32(return_data.size) + 32
                    else:
                        _1060 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1081 + 36] = 0
                            mem[_1081 + 68] = _1013
                            mem[_1081 + 100] = this.address
                            mem[_1081 + 132] = 128
                            mem[_1081 + 164] = mem[_1081]
                            s = 0
                            while s < mem[_1081]:
                                mem[_1081 + s + 196] = mem[_1081 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1081]) > mem[_1081]:
                                mem[_1081 + mem[_1081] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(this.address), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1081 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1081 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1107 = mem[(32 * idx + 1) + 128]
                            _1119 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1119 + 36] = 0
                            mem[_1119 + 68] = _1013
                            mem[_1119 + 100] = address(_1107)
                            mem[_1119 + 132] = 128
                            mem[_1119 + 164] = mem[_1119]
                            s = 0
                            while s < mem[_1119]:
                                mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1119]) > mem[_1119]:
                                mem[_1119 + mem[_1119] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(_1107), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1119 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1119 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1029 = mem[_1022]
                    require mem[_1022] == mem[_1022]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1046 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1046] == mem[_1046]
                    if mem[_1046] >= _1029:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1133 = mem[_1120]
                    require mem[_1120] == mem[_1120]
                    mem[mem[64] + 4] = mem[_1120]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _1133
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1133 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1169 = mem[_1162]
                    require mem[_1162] == mem[_1162]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1169
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1169
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1310] == bool(mem[_1310])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
            revert with 'NH{q', 17
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _1034 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1034 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1034 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1094 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1094] == bool(mem[_1094])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1000 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1016 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1026] == mem[_1026 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1026 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1063 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1083 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1083 + 36] = _1016
                                mem[_1083 + 68] = 0
                                mem[_1083 + 100] = this.address
                                mem[_1083 + 132] = 128
                                mem[_1083 + 164] = mem[_1083]
                                s = 0
                                while s < mem[_1083]:
                                    mem[_1083 + s + 196] = mem[_1083 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1083]) > mem[_1083]:
                                    mem[_1083 + mem[_1083] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(this.address), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1083 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1083 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1110 = mem[(32 * idx + 1) + 128]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 36] = _1016
                                mem[_1121 + 68] = 0
                                mem[_1121 + 100] = address(_1110)
                                mem[_1121 + 132] = 128
                                mem[_1121 + 164] = mem[_1121]
                                s = 0
                                while s < mem[_1121]:
                                    mem[_1121 + s + 196] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1121]) > mem[_1121]:
                                    mem[_1121 + mem[_1121] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(_1110), 128, mem[_1121], mem[_1121 + 196 len ceil32(mem[_1121])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1121 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 32
                        else:
                            _1065 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1084 + 36] = 0
                                mem[_1084 + 68] = _1016
                                mem[_1084 + 100] = this.address
                                mem[_1084 + 132] = 128
                                mem[_1084 + 164] = mem[_1084]
                                s = 0
                                while s < mem[_1084]:
                                    mem[_1084 + s + 196] = mem[_1084 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1084]) > mem[_1084]:
                                    mem[_1084 + mem[_1084] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(this.address), 128, mem[_1084], mem[_1084 + 196 len ceil32(mem[_1084])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1084 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1084 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1111 = mem[(32 * idx + 1) + 128]
                                _1122 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1122 + 36] = 0
                                mem[_1122 + 68] = _1016
                                mem[_1122 + 100] = address(_1111)
                                mem[_1122 + 132] = 128
                                mem[_1122 + 164] = mem[_1122]
                                s = 0
                                while s < mem[_1122]:
                                    mem[_1122 + s + 196] = mem[_1122 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1122]) > mem[_1122]:
                                    mem[_1122 + mem[_1122] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(_1111), 128, mem[_1122], mem[_1122 + 196 len ceil32(mem[_1122])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1122 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1122 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1031 = mem[_1023]
                        require mem[_1023] == mem[_1023]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == mem[_1047]
                        if mem[_1047] >= _1031:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1123]
                        require mem[_1123] == mem[_1123]
                        mem[mem[64] + 4] = mem[_1123]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1134
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1134 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1170 = mem[_1165]
                        require mem[_1165] == mem[_1165]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1170
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1311] == bool(mem[_1311])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1036 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1036 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1095] == bool(mem[_1095])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _681 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _681
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _681
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1003 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1019 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1027] == mem[_1027 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1027 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1068 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1086 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1086 + 36] = _1019
                                mem[_1086 + 68] = 0
                                mem[_1086 + 100] = this.address
                                mem[_1086 + 132] = 128
                                mem[_1086 + 164] = mem[_1086]
                                s = 0
                                while s < mem[_1086]:
                                    mem[_1086 + s + 196] = mem[_1086 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1086]) > mem[_1086]:
                                    mem[_1086 + mem[_1086] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(this.address), 128, mem[_1086], mem[_1086 + 196 len ceil32(mem[_1086])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1086 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1086 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1114 = mem[(32 * idx + 1) + 128]
                                _1124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1124 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 36] = _1019
                                mem[_1124 + 68] = 0
                                mem[_1124 + 100] = address(_1114)
                                mem[_1124 + 132] = 128
                                mem[_1124 + 164] = mem[_1124]
                                s = 0
                                while s < mem[_1124]:
                                    mem[_1124 + s + 196] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1124]) > mem[_1124]:
                                    mem[_1124 + mem[_1124] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(_1114), 128, mem[_1124], mem[_1124 + 196 len ceil32(mem[_1124])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1124 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 32
                        else:
                            _1070 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1087 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1087 + 36] = 0
                                mem[_1087 + 68] = _1019
                                mem[_1087 + 100] = this.address
                                mem[_1087 + 132] = 128
                                mem[_1087 + 164] = mem[_1087]
                                s = 0
                                while s < mem[_1087]:
                                    mem[_1087 + s + 196] = mem[_1087 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1087]) > mem[_1087]:
                                    mem[_1087 + mem[_1087] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(this.address), 128, mem[_1087], mem[_1087 + 196 len ceil32(mem[_1087])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1087 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1087 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1115 = mem[(32 * idx + 1) + 128]
                                _1125 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1125 + 36] = 0
                                mem[_1125 + 68] = _1019
                                mem[_1125 + 100] = address(_1115)
                                mem[_1125 + 132] = 128
                                mem[_1125 + 164] = mem[_1125]
                                s = 0
                                while s < mem[_1125]:
                                    mem[_1125 + s + 196] = mem[_1125 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1125]) > mem[_1125]:
                                    mem[_1125 + mem[_1125] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(_1115), 128, mem[_1125], mem[_1125 + 196 len ceil32(mem[_1125])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1125 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1125 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1033 = mem[_1024]
                        require mem[_1024] == mem[_1024]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1048] == mem[_1048]
                        if mem[_1048] >= _1033:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1135 = mem[_1126]
                        require mem[_1126] == mem[_1126]
                        mem[mem[64] + 4] = mem[_1126]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1135
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1135 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1168]
                        require mem[_1168] == mem[_1168]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1171
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1171
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1312] == bool(mem[_1312])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1038 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1038 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1038 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1096] == bool(mem[_1096])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98
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
    if mem[172 len 20] == 1:
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _997 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1013 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == mem[_1025 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1025 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1058 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1080 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1080 + 36] = _1013
                            mem[_1080 + 68] = 0
                            mem[_1080 + 100] = this.address
                            mem[_1080 + 132] = 128
                            mem[_1080 + 164] = mem[_1080]
                            s = 0
                            while s < mem[_1080]:
                                mem[_1080 + s + 196] = mem[_1080 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1080]) > mem[_1080]:
                                mem[_1080 + mem[_1080] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(this.address), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1080 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1080 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1106 = mem[(32 * idx + 1) + 128]
                            _1118 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1118 + 36] = _1013
                            mem[_1118 + 68] = 0
                            mem[_1118 + 100] = address(_1106)
                            mem[_1118 + 132] = 128
                            mem[_1118 + 164] = mem[_1118]
                            s = 0
                            while s < mem[_1118]:
                                mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1118]) > mem[_1118]:
                                mem[_1118 + mem[_1118] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(_1106), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1118 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1118 + ceil32(return_data.size) + 32
                    else:
                        _1060 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1081 + 36] = 0
                            mem[_1081 + 68] = _1013
                            mem[_1081 + 100] = this.address
                            mem[_1081 + 132] = 128
                            mem[_1081 + 164] = mem[_1081]
                            s = 0
                            while s < mem[_1081]:
                                mem[_1081 + s + 196] = mem[_1081 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1081]) > mem[_1081]:
                                mem[_1081 + mem[_1081] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(this.address), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1081 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1081 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1107 = mem[(32 * idx + 1) + 128]
                            _1119 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1119 + 36] = 0
                            mem[_1119 + 68] = _1013
                            mem[_1119 + 100] = address(_1107)
                            mem[_1119 + 132] = 128
                            mem[_1119 + 164] = mem[_1119]
                            s = 0
                            while s < mem[_1119]:
                                mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1119]) > mem[_1119]:
                                mem[_1119 + mem[_1119] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(_1107), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1119 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1119 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1029 = mem[_1022]
                    require mem[_1022] == mem[_1022]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1046 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1046] == mem[_1046]
                    if mem[_1046] >= _1029:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1133 = mem[_1120]
                    require mem[_1120] == mem[_1120]
                    mem[mem[64] + 4] = mem[_1120]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _1133
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1133 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1169 = mem[_1162]
                    require mem[_1162] == mem[_1162]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1169
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1169
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1310] == bool(mem[_1310])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
            revert with 'NH{q', 17
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _1034 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1034 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1034 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1094 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1094] == bool(mem[_1094])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1000 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1016 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1026] == mem[_1026 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1026 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1063 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1083 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1083 + 36] = _1016
                                mem[_1083 + 68] = 0
                                mem[_1083 + 100] = this.address
                                mem[_1083 + 132] = 128
                                mem[_1083 + 164] = mem[_1083]
                                s = 0
                                while s < mem[_1083]:
                                    mem[_1083 + s + 196] = mem[_1083 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1083]) > mem[_1083]:
                                    mem[_1083 + mem[_1083] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(this.address), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1083 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1083 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1110 = mem[(32 * idx + 1) + 128]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 36] = _1016
                                mem[_1121 + 68] = 0
                                mem[_1121 + 100] = address(_1110)
                                mem[_1121 + 132] = 128
                                mem[_1121 + 164] = mem[_1121]
                                s = 0
                                while s < mem[_1121]:
                                    mem[_1121 + s + 196] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1121]) > mem[_1121]:
                                    mem[_1121 + mem[_1121] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(_1110), 128, mem[_1121], mem[_1121 + 196 len ceil32(mem[_1121])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1121 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 32
                        else:
                            _1065 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1084 + 36] = 0
                                mem[_1084 + 68] = _1016
                                mem[_1084 + 100] = this.address
                                mem[_1084 + 132] = 128
                                mem[_1084 + 164] = mem[_1084]
                                s = 0
                                while s < mem[_1084]:
                                    mem[_1084 + s + 196] = mem[_1084 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1084]) > mem[_1084]:
                                    mem[_1084 + mem[_1084] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(this.address), 128, mem[_1084], mem[_1084 + 196 len ceil32(mem[_1084])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1084 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1084 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1111 = mem[(32 * idx + 1) + 128]
                                _1122 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1122 + 36] = 0
                                mem[_1122 + 68] = _1016
                                mem[_1122 + 100] = address(_1111)
                                mem[_1122 + 132] = 128
                                mem[_1122 + 164] = mem[_1122]
                                s = 0
                                while s < mem[_1122]:
                                    mem[_1122 + s + 196] = mem[_1122 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1122]) > mem[_1122]:
                                    mem[_1122 + mem[_1122] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(_1111), 128, mem[_1122], mem[_1122 + 196 len ceil32(mem[_1122])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1122 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1122 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1031 = mem[_1023]
                        require mem[_1023] == mem[_1023]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == mem[_1047]
                        if mem[_1047] >= _1031:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1123]
                        require mem[_1123] == mem[_1123]
                        mem[mem[64] + 4] = mem[_1123]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1134
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1134 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1170 = mem[_1165]
                        require mem[_1165] == mem[_1165]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1170
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1311] == bool(mem[_1311])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1036 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1036 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1095] == bool(mem[_1095])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _681 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _681
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _681
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1003 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1019 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1027] == mem[_1027 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1027 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1068 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1086 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1086 + 36] = _1019
                                mem[_1086 + 68] = 0
                                mem[_1086 + 100] = this.address
                                mem[_1086 + 132] = 128
                                mem[_1086 + 164] = mem[_1086]
                                s = 0
                                while s < mem[_1086]:
                                    mem[_1086 + s + 196] = mem[_1086 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1086]) > mem[_1086]:
                                    mem[_1086 + mem[_1086] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(this.address), 128, mem[_1086], mem[_1086 + 196 len ceil32(mem[_1086])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1086 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1086 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1114 = mem[(32 * idx + 1) + 128]
                                _1124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1124 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 36] = _1019
                                mem[_1124 + 68] = 0
                                mem[_1124 + 100] = address(_1114)
                                mem[_1124 + 132] = 128
                                mem[_1124 + 164] = mem[_1124]
                                s = 0
                                while s < mem[_1124]:
                                    mem[_1124 + s + 196] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1124]) > mem[_1124]:
                                    mem[_1124 + mem[_1124] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(_1114), 128, mem[_1124], mem[_1124 + 196 len ceil32(mem[_1124])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1124 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 32
                        else:
                            _1070 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1087 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1087 + 36] = 0
                                mem[_1087 + 68] = _1019
                                mem[_1087 + 100] = this.address
                                mem[_1087 + 132] = 128
                                mem[_1087 + 164] = mem[_1087]
                                s = 0
                                while s < mem[_1087]:
                                    mem[_1087 + s + 196] = mem[_1087 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1087]) > mem[_1087]:
                                    mem[_1087 + mem[_1087] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(this.address), 128, mem[_1087], mem[_1087 + 196 len ceil32(mem[_1087])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1087 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1087 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1115 = mem[(32 * idx + 1) + 128]
                                _1125 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1125 + 36] = 0
                                mem[_1125 + 68] = _1019
                                mem[_1125 + 100] = address(_1115)
                                mem[_1125 + 132] = 128
                                mem[_1125 + 164] = mem[_1125]
                                s = 0
                                while s < mem[_1125]:
                                    mem[_1125 + s + 196] = mem[_1125 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1125]) > mem[_1125]:
                                    mem[_1125 + mem[_1125] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(_1115), 128, mem[_1125], mem[_1125 + 196 len ceil32(mem[_1125])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1125 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1125 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1033 = mem[_1024]
                        require mem[_1024] == mem[_1024]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1048] == mem[_1048]
                        if mem[_1048] >= _1033:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1135 = mem[_1126]
                        require mem[_1126] == mem[_1126]
                        mem[mem[64] + 4] = mem[_1126]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1135
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1135 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1168]
                        require mem[_1168] == mem[_1168]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1171
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1171
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1312] == bool(mem[_1312])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1038 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1038 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1038 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1096] == bool(mem[_1096])
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
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98
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
    if mem[172 len 20] == 1:
        idx = 1
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _997 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1013 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1025 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1025] == mem[_1025 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1025 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1058 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1080 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1080 + 36] = _1013
                            mem[_1080 + 68] = 0
                            mem[_1080 + 100] = this.address
                            mem[_1080 + 132] = 128
                            mem[_1080 + 164] = mem[_1080]
                            s = 0
                            while s < mem[_1080]:
                                mem[_1080 + s + 196] = mem[_1080 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1080]) > mem[_1080]:
                                mem[_1080 + mem[_1080] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(this.address), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1080 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1080 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1106 = mem[(32 * idx + 1) + 128]
                            _1118 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1118 + 36] = _1013
                            mem[_1118 + 68] = 0
                            mem[_1118 + 100] = address(_1106)
                            mem[_1118 + 132] = 128
                            mem[_1118 + 164] = mem[_1118]
                            s = 0
                            while s < mem[_1118]:
                                mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1118]) > mem[_1118]:
                                mem[_1118 + mem[_1118] + 196] = 0
                            require ext_code.size(address(_1058))
                            call address(_1058).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1013, 0, address(_1106), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token0() with:
                                    gas gas_remaining wei
                            mem[_1118 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1118 + ceil32(return_data.size) + 32
                    else:
                        _1060 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1081 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1081 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1081 + 36] = 0
                            mem[_1081 + 68] = _1013
                            mem[_1081 + 100] = this.address
                            mem[_1081 + 132] = 128
                            mem[_1081 + 164] = mem[_1081]
                            s = 0
                            while s < mem[_1081]:
                                mem[_1081 + s + 196] = mem[_1081 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1081]) > mem[_1081]:
                                mem[_1081 + mem[_1081] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(this.address), 128, mem[_1081], mem[_1081 + 196 len ceil32(mem[_1081])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1081 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1081 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1107 = mem[(32 * idx + 1) + 128]
                            _1119 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1119 + 36] = 0
                            mem[_1119 + 68] = _1013
                            mem[_1119 + 100] = address(_1107)
                            mem[_1119 + 132] = 128
                            mem[_1119 + 164] = mem[_1119]
                            s = 0
                            while s < mem[_1119]:
                                mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1119]) > mem[_1119]:
                                mem[_1119 + mem[_1119] + 196] = 0
                            require ext_code.size(address(_1060))
                            call address(_1060).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1013, address(_1107), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_997))
                            staticcall address(_997).token1() with:
                                    gas gas_remaining wei
                            mem[_1119 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1119 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1022 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1029 = mem[_1022]
                    require mem[_1022] == mem[_1022]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1046 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1046] == mem[_1046]
                    if mem[_1046] >= _1029:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1120 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1133 = mem[_1120]
                    require mem[_1120] == mem[_1120]
                    mem[mem[64] + 4] = mem[_1120]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args _1133
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1133 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1169 = mem[_1162]
                    require mem[_1162] == mem[_1162]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1169
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1169
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1310] == bool(mem[_1310])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
            revert with 'NH{q', 17
        if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _1034 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1034 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1034 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1094 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1094] == bool(mem[_1094])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1000 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1016 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1026 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1026] == mem[_1026 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1026 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1063 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1083 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1083 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1083 + 36] = _1016
                                mem[_1083 + 68] = 0
                                mem[_1083 + 100] = this.address
                                mem[_1083 + 132] = 128
                                mem[_1083 + 164] = mem[_1083]
                                s = 0
                                while s < mem[_1083]:
                                    mem[_1083 + s + 196] = mem[_1083 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1083]) > mem[_1083]:
                                    mem[_1083 + mem[_1083] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(this.address), 128, mem[_1083], mem[_1083 + 196 len ceil32(mem[_1083])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1083 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1083 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1110 = mem[(32 * idx + 1) + 128]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1121 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 36] = _1016
                                mem[_1121 + 68] = 0
                                mem[_1121 + 100] = address(_1110)
                                mem[_1121 + 132] = 128
                                mem[_1121 + 164] = mem[_1121]
                                s = 0
                                while s < mem[_1121]:
                                    mem[_1121 + s + 196] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1121]) > mem[_1121]:
                                    mem[_1121 + mem[_1121] + 196] = 0
                                require ext_code.size(address(_1063))
                                call address(_1063).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1016, 0, address(_1110), 128, mem[_1121], mem[_1121 + 196 len ceil32(mem[_1121])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token0() with:
                                        gas gas_remaining wei
                                mem[_1121 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 32
                        else:
                            _1065 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1084 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1084 + 36] = 0
                                mem[_1084 + 68] = _1016
                                mem[_1084 + 100] = this.address
                                mem[_1084 + 132] = 128
                                mem[_1084 + 164] = mem[_1084]
                                s = 0
                                while s < mem[_1084]:
                                    mem[_1084 + s + 196] = mem[_1084 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1084]) > mem[_1084]:
                                    mem[_1084 + mem[_1084] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(this.address), 128, mem[_1084], mem[_1084 + 196 len ceil32(mem[_1084])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1084 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1084 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1111 = mem[(32 * idx + 1) + 128]
                                _1122 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1122 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1122 + 36] = 0
                                mem[_1122 + 68] = _1016
                                mem[_1122 + 100] = address(_1111)
                                mem[_1122 + 132] = 128
                                mem[_1122 + 164] = mem[_1122]
                                s = 0
                                while s < mem[_1122]:
                                    mem[_1122 + s + 196] = mem[_1122 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1122]) > mem[_1122]:
                                    mem[_1122 + mem[_1122] + 196] = 0
                                require ext_code.size(address(_1065))
                                call address(_1065).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1016, address(_1111), 128, mem[_1122], mem[_1122 + 196 len ceil32(mem[_1122])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1000))
                                staticcall address(_1000).token1() with:
                                        gas gas_remaining wei
                                mem[_1122 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1122 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1023 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1031 = mem[_1023]
                        require mem[_1023] == mem[_1023]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1047] == mem[_1047]
                        if mem[_1047] >= _1031:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1123 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1123]
                        require mem[_1123] == mem[_1123]
                        mem[mem[64] + 4] = mem[_1123]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1134
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1134 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1170 = mem[_1165]
                        require mem[_1165] == mem[_1165]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1170
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1170
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1311] == bool(mem[_1311])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1036 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1036 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1095 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1095] == bool(mem[_1095])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _681 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _681
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _681
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 98
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1003 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1019 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1027 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1027] == mem[_1027 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1027 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1068 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1086 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1086 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1086 + 36] = _1019
                                mem[_1086 + 68] = 0
                                mem[_1086 + 100] = this.address
                                mem[_1086 + 132] = 128
                                mem[_1086 + 164] = mem[_1086]
                                s = 0
                                while s < mem[_1086]:
                                    mem[_1086 + s + 196] = mem[_1086 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1086]) > mem[_1086]:
                                    mem[_1086 + mem[_1086] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(this.address), 128, mem[_1086], mem[_1086 + 196 len ceil32(mem[_1086])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1086 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1086 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1114 = mem[(32 * idx + 1) + 128]
                                _1124 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1124 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 36] = _1019
                                mem[_1124 + 68] = 0
                                mem[_1124 + 100] = address(_1114)
                                mem[_1124 + 132] = 128
                                mem[_1124 + 164] = mem[_1124]
                                s = 0
                                while s < mem[_1124]:
                                    mem[_1124 + s + 196] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1124]) > mem[_1124]:
                                    mem[_1124 + mem[_1124] + 196] = 0
                                require ext_code.size(address(_1068))
                                call address(_1068).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1019, 0, address(_1114), 128, mem[_1124], mem[_1124 + 196 len ceil32(mem[_1124])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token0() with:
                                        gas gas_remaining wei
                                mem[_1124 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 32
                        else:
                            _1070 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1087 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1087 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1087 + 36] = 0
                                mem[_1087 + 68] = _1019
                                mem[_1087 + 100] = this.address
                                mem[_1087 + 132] = 128
                                mem[_1087 + 164] = mem[_1087]
                                s = 0
                                while s < mem[_1087]:
                                    mem[_1087 + s + 196] = mem[_1087 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1087]) > mem[_1087]:
                                    mem[_1087 + mem[_1087] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(this.address), 128, mem[_1087], mem[_1087 + 196 len ceil32(mem[_1087])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1087 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1087 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1115 = mem[(32 * idx + 1) + 128]
                                _1125 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1125 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1125 + 36] = 0
                                mem[_1125 + 68] = _1019
                                mem[_1125 + 100] = address(_1115)
                                mem[_1125 + 132] = 128
                                mem[_1125 + 164] = mem[_1125]
                                s = 0
                                while s < mem[_1125]:
                                    mem[_1125 + s + 196] = mem[_1125 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1125]) > mem[_1125]:
                                    mem[_1125 + mem[_1125] + 196] = 0
                                require ext_code.size(address(_1070))
                                call address(_1070).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1019, address(_1115), 128, mem[_1125], mem[_1125 + 196 len ceil32(mem[_1125])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_1003))
                                staticcall address(_1003).token1() with:
                                        gas gas_remaining wei
                                mem[_1125 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1125 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1024 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1033 = mem[_1024]
                        require mem[_1024] == mem[_1024]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1048] == mem[_1048]
                        if mem[_1048] >= _1033:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1135 = mem[_1126]
                        require mem[_1126] == mem[_1126]
                        mem[mem[64] + 4] = mem[_1126]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _1135
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1135 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1171 = mem[_1168]
                        require mem[_1168] == mem[_1168]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1171
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1171
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1312 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1312] == bool(mem[_1312])
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] < 1:
                revert with 'NH{q', 17
            if mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1 >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                revert with 'NH{q', 50
            _1038 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1038 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1038 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1096 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1096] == bool(mem[_1096])
}



}
