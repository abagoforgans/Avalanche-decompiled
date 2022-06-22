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

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
  stop
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setVault(address arg1) {
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

function withdrawEth() {
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

function withdrawEthAmount(uint256 arg1) {
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

function withdrawTokenAmount(address arg1, uint256 arg2) {
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

function approveToken(address arg1, address arg2, uint256 arg3) {
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

function withdrawToken(address arg1) {
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

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function sub_f7ad0d03(?) {
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
    _98 = mem[floor32(('cd', 36).length) + 97]
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
           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + (32 * _98) + -mem[64] + 258]
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

function sub_c5fbf80c(?) {
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
    _169 = mem[floor32(('cd', 36).length) + 97]
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
           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + (32 * _169) + -mem[64] + 258]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _246 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _247 = mem[_246]
    require mem[_246] == mem[_246]
    if mem[_246] <= 0:
        revert with 0, 'AAA'
    _250 = mem[64]
    mem[mem[64]] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _247
    mem[mem[64] + 36] = address(cd[4])
    mem[mem[64] + 68] = 128
    _254 = mem[96]
    mem[mem[64] + 132] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < _254:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_250 + 100] = (32 * _254) + 160
    _347 = mem[floor32(('cd', 36).length) + 97]
    mem[_250 + (32 * _254) + 164] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _250 + (32 * _254) + 196
    while idx < _347:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _250 + (32 * _254) + (32 * _347) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _440 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _449 = mem[_440]
    require mem[_440] <= test266151307()
    require _440 + mem[_440] + 31 < _440 + return_data.size
    _454 = mem[_440 + mem[_440]]
    if mem[_440 + mem[_440]] > test266151307():
        revert with 'NH{q', 65
    if _440 + ceil32(return_data.size) + floor32(mem[_440 + mem[_440]]) + 1 > test266151307() or floor32(mem[_440 + mem[_440]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _440 + ceil32(return_data.size) + floor32(mem[_440 + mem[_440]]) + 1
    mem[_440 + ceil32(return_data.size)] = _454
    require _449 + (32 * _454) + 32 <= return_data.size
    idx = 0
    s = _440 + _449 + 32
    t = _440 + ceil32(return_data.size) + 32
    while idx < _454:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _247 > -2:
        revert with 'NH{q', 17
    if _454 < 1:
        revert with 'NH{q', 17
    if _454 - 1 >= _454:
        revert with 'NH{q', 50
    _537 = mem[(32 * _454 - 1) + _440 + ceil32(return_data.size) + 32]
    if mem[(32 * _454 - 1) + _440 + ceil32(return_data.size) + 32] < _247 + 1:
        revert with 'NH{q', 17
    if mem[(32 * _454 - 1) + _440 + ceil32(return_data.size) + 32] + -_247 - 1 <= cd[100]:
        revert with 0, 'BBB'
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _543 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_543] == mem[_543 + 12 len 20]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    require ext_code.size(mem[140 len 20])
    if mem[_543 + 12 len 20] != address(cd[4]):
        staticcall mem[140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _554 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_554] == mem[_554 + 12 len 20]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _560 = mem[128]
        if 0 >= _454:
            revert with 'NH{q', 50
        _564 = mem[_440 + ceil32(return_data.size) + 32]
        _565 = mem[64]
        mem[mem[64] + 32] = mem[_554 + 12 len 20]
        mem[mem[64] + 64] = 128
        _568 = mem[96]
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
        mem[mem[64] + 96] = (32 * _568) + 160
        _590 = mem[_440 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _568) + 192] = mem[_440 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _568) + 224 len 32 * _590] = mem[_440 + ceil32(return_data.size) + 32 len 32 * _590]
        mem[mem[64] + 128] = _537 + -_247 - 1
        _608 = mem[64]
        mem[64] = mem[64] + (32 * _568) + (32 * _590) + 224
        mem[_565 + (32 * _568) + (32 * _590) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_565 + (32 * _568) + (32 * _590) + 228] = _564
        mem[_565 + (32 * _568) + (32 * _590) + 260] = 0
        mem[_565 + (32 * _568) + (32 * _590) + 292] = this.address
        mem[_565 + (32 * _568) + (32 * _590) + 324] = 128
        _612 = mem[_608]
        mem[_565 + (32 * _568) + (32 * _590) + 356] = mem[_608]
        mem[_565 + (32 * _568) + (32 * _590) + 388 len ceil32(_612)] = mem[_608 + 32 len ceil32(_612)]
        if ceil32(_612) > _612:
            mem[_565 + (32 * _568) + (32 * _590) + _612 + 388] = 0
        require ext_code.size(address(_560))
        call address(_560).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args _564, 0, address(this.address), 128, mem[_565 + (32 * _568) + (32 * _590) + 356 len ceil32(_612) + 32]
    else:
        staticcall mem[140 len 20].token1() with:
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
        _562 = mem[128]
        if 0 >= _454:
            revert with 'NH{q', 50
        _566 = mem[_440 + ceil32(return_data.size) + 32]
        _567 = mem[64]
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
        _591 = mem[_440 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _569) + 192] = mem[_440 + ceil32(return_data.size)]
        mem[mem[64] + (32 * _569) + 224 len 32 * _591] = mem[_440 + ceil32(return_data.size) + 32 len 32 * _591]
        mem[mem[64] + 128] = _537 + -_247 - 1
        _610 = mem[64]
        mem[64] = mem[64] + (32 * _569) + (32 * _591) + 224
        mem[_567 + (32 * _569) + (32 * _591) + 224] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[_567 + (32 * _569) + (32 * _591) + 228] = 0
        mem[_567 + (32 * _569) + (32 * _591) + 260] = _566
        mem[_567 + (32 * _569) + (32 * _591) + 292] = this.address
        mem[_567 + (32 * _569) + (32 * _591) + 324] = 128
        _613 = mem[_610]
        mem[_567 + (32 * _569) + (32 * _591) + 356] = mem[_610]
        mem[_567 + (32 * _569) + (32 * _591) + 388 len ceil32(_613)] = mem[_610 + 32 len ceil32(_613)]
        if ceil32(_613) > _613:
            mem[_567 + (32 * _569) + (32 * _591) + _613 + 388] = 0
        require ext_code.size(address(_562))
        call address(_562).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, _566, address(this.address), 128, mem[_567 + (32 * _569) + (32 * _591) + 356 len ceil32(_613) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e6e949c(?) {
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

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
            _991 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1007 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1019] == mem[_1019 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1019 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1052 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1074 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1074 + 36] = _1007
                            mem[_1074 + 68] = 0
                            mem[_1074 + 100] = this.address
                            mem[_1074 + 132] = 128
                            mem[_1074 + 164] = mem[_1074]
                            s = 0
                            while s < mem[_1074]:
                                mem[_1074 + s + 196] = mem[_1074 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1074]) > mem[_1074]:
                                mem[_1074 + mem[_1074] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(this.address), 128, mem[_1074], mem[_1074 + 196 len ceil32(mem[_1074])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1074 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1074 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1100 = mem[(32 * idx + 1) + 128]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1112 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1112 + 36] = _1007
                            mem[_1112 + 68] = 0
                            mem[_1112 + 100] = address(_1100)
                            mem[_1112 + 132] = 128
                            mem[_1112 + 164] = mem[_1112]
                            s = 0
                            while s < mem[_1112]:
                                mem[_1112 + s + 196] = mem[_1112 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1112]) > mem[_1112]:
                                mem[_1112 + mem[_1112] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(_1100), 128, mem[_1112], mem[_1112 + 196 len ceil32(mem[_1112])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1112 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1112 + ceil32(return_data.size) + 32
                    else:
                        _1054 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 36] = 0
                            mem[_1075 + 68] = _1007
                            mem[_1075 + 100] = this.address
                            mem[_1075 + 132] = 128
                            mem[_1075 + 164] = mem[_1075]
                            s = 0
                            while s < mem[_1075]:
                                mem[_1075 + s + 196] = mem[_1075 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1075]) > mem[_1075]:
                                mem[_1075 + mem[_1075] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(this.address), 128, mem[_1075], mem[_1075 + 196 len ceil32(mem[_1075])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1075 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1075 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1101 = mem[(32 * idx + 1) + 128]
                            _1113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1113 + 36] = 0
                            mem[_1113 + 68] = _1007
                            mem[_1113 + 100] = address(_1101)
                            mem[_1113 + 132] = 128
                            mem[_1113 + 164] = mem[_1113]
                            s = 0
                            while s < mem[_1113]:
                                mem[_1113 + s + 196] = mem[_1113 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1113]) > mem[_1113]:
                                mem[_1113 + mem[_1113] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(_1101), 128, mem[_1113], mem[_1113 + 196 len ceil32(mem[_1113])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1113 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1113 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1023 = mem[_1016]
                    require mem[_1016] == mem[_1016]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == mem[_1040]
                    if mem[_1040] >= _1023:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1127 = mem[_1114]
                    require mem[_1114] == mem[_1114]
                    mem[mem[64] + 4] = mem[_1114]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1127
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1127 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1163 = mem[_1156]
                    require mem[_1156] == mem[_1156]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1163
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1163
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1304] == bool(mem[_1304])
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
        _1028 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1028 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1028 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1088 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1088] == bool(mem[_1088])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _994 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1010 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1020] == mem[_1020 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1020 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1057 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1077 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1077 + 36] = _1010
                                mem[_1077 + 68] = 0
                                mem[_1077 + 100] = this.address
                                mem[_1077 + 132] = 128
                                mem[_1077 + 164] = mem[_1077]
                                s = 0
                                while s < mem[_1077]:
                                    mem[_1077 + s + 196] = mem[_1077 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1077]) > mem[_1077]:
                                    mem[_1077 + mem[_1077] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(this.address), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1077 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1077 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1104 = mem[(32 * idx + 1) + 128]
                                _1115 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1115 + 36] = _1010
                                mem[_1115 + 68] = 0
                                mem[_1115 + 100] = address(_1104)
                                mem[_1115 + 132] = 128
                                mem[_1115 + 164] = mem[_1115]
                                s = 0
                                while s < mem[_1115]:
                                    mem[_1115 + s + 196] = mem[_1115 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1115]) > mem[_1115]:
                                    mem[_1115 + mem[_1115] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(_1104), 128, mem[_1115], mem[_1115 + 196 len ceil32(mem[_1115])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1115 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1115 + ceil32(return_data.size) + 32
                        else:
                            _1059 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1078 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1078 + 36] = 0
                                mem[_1078 + 68] = _1010
                                mem[_1078 + 100] = this.address
                                mem[_1078 + 132] = 128
                                mem[_1078 + 164] = mem[_1078]
                                s = 0
                                while s < mem[_1078]:
                                    mem[_1078 + s + 196] = mem[_1078 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1078]) > mem[_1078]:
                                    mem[_1078 + mem[_1078] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(this.address), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1078 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1078 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1105 = mem[(32 * idx + 1) + 128]
                                _1116 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1116 + 36] = 0
                                mem[_1116 + 68] = _1010
                                mem[_1116 + 100] = address(_1105)
                                mem[_1116 + 132] = 128
                                mem[_1116 + 164] = mem[_1116]
                                s = 0
                                while s < mem[_1116]:
                                    mem[_1116 + s + 196] = mem[_1116 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1116]) > mem[_1116]:
                                    mem[_1116 + mem[_1116] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(_1105), 128, mem[_1116], mem[_1116 + 196 len ceil32(mem[_1116])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1116 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1116 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1017]
                        require mem[_1017] == mem[_1017]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == mem[_1041]
                        if mem[_1041] >= _1025:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1128 = mem[_1117]
                        require mem[_1117] == mem[_1117]
                        mem[mem[64] + 4] = mem[_1117]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1128 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1164 = mem[_1159]
                        require mem[_1159] == mem[_1159]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1164
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1164
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1305] == bool(mem[_1305])
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
            _1030 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1030 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1030 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1089 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1089] == bool(mem[_1089])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _675 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _675
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _675
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
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == mem[_1021 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1021 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1062 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1108 = mem[(32 * idx + 1) + 128]
                                _1118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1118 + 36] = _1013
                                mem[_1118 + 68] = 0
                                mem[_1118 + 100] = address(_1108)
                                mem[_1118 + 132] = 128
                                mem[_1118 + 164] = mem[_1118]
                                s = 0
                                while s < mem[_1118]:
                                    mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1118]) > mem[_1118]:
                                    mem[_1118 + mem[_1118] + 196] = 0
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1013, 0, address(_1108), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
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
                            _1064 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1109 = mem[(32 * idx + 1) + 128]
                                _1119 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1119 + 36] = 0
                                mem[_1119 + 68] = _1013
                                mem[_1119 + 100] = address(_1109)
                                mem[_1119 + 132] = 128
                                mem[_1119 + 164] = mem[_1119]
                                s = 0
                                while s < mem[_1119]:
                                    mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1119]) > mem[_1119]:
                                    mem[_1119 + mem[_1119] + 196] = 0
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1013, address(_1109), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
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
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1018]
                        require mem[_1018] == mem[_1018]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1042] == mem[_1042]
                        if mem[_1042] >= _1027:
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
                        _1129 = mem[_1120]
                        require mem[_1120] == mem[_1120]
                        mem[mem[64] + 4] = mem[_1120]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1129
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1129 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1165 = mem[_1162]
                        require mem[_1162] == mem[_1162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1165
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1165
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1306] == bool(mem[_1306])
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
            _1032 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1032 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1032 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1090 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1090] == bool(mem[_1090])
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
            _991 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1007 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1019] == mem[_1019 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1019 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1052 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1074 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1074 + 36] = _1007
                            mem[_1074 + 68] = 0
                            mem[_1074 + 100] = this.address
                            mem[_1074 + 132] = 128
                            mem[_1074 + 164] = mem[_1074]
                            s = 0
                            while s < mem[_1074]:
                                mem[_1074 + s + 196] = mem[_1074 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1074]) > mem[_1074]:
                                mem[_1074 + mem[_1074] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(this.address), 128, mem[_1074], mem[_1074 + 196 len ceil32(mem[_1074])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1074 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1074 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1100 = mem[(32 * idx + 1) + 128]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1112 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1112 + 36] = _1007
                            mem[_1112 + 68] = 0
                            mem[_1112 + 100] = address(_1100)
                            mem[_1112 + 132] = 128
                            mem[_1112 + 164] = mem[_1112]
                            s = 0
                            while s < mem[_1112]:
                                mem[_1112 + s + 196] = mem[_1112 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1112]) > mem[_1112]:
                                mem[_1112 + mem[_1112] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(_1100), 128, mem[_1112], mem[_1112 + 196 len ceil32(mem[_1112])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1112 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1112 + ceil32(return_data.size) + 32
                    else:
                        _1054 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 36] = 0
                            mem[_1075 + 68] = _1007
                            mem[_1075 + 100] = this.address
                            mem[_1075 + 132] = 128
                            mem[_1075 + 164] = mem[_1075]
                            s = 0
                            while s < mem[_1075]:
                                mem[_1075 + s + 196] = mem[_1075 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1075]) > mem[_1075]:
                                mem[_1075 + mem[_1075] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(this.address), 128, mem[_1075], mem[_1075 + 196 len ceil32(mem[_1075])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1075 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1075 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1101 = mem[(32 * idx + 1) + 128]
                            _1113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1113 + 36] = 0
                            mem[_1113 + 68] = _1007
                            mem[_1113 + 100] = address(_1101)
                            mem[_1113 + 132] = 128
                            mem[_1113 + 164] = mem[_1113]
                            s = 0
                            while s < mem[_1113]:
                                mem[_1113 + s + 196] = mem[_1113 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1113]) > mem[_1113]:
                                mem[_1113 + mem[_1113] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(_1101), 128, mem[_1113], mem[_1113 + 196 len ceil32(mem[_1113])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1113 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1113 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1023 = mem[_1016]
                    require mem[_1016] == mem[_1016]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == mem[_1040]
                    if mem[_1040] >= _1023:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1127 = mem[_1114]
                    require mem[_1114] == mem[_1114]
                    mem[mem[64] + 4] = mem[_1114]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1127
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1127 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1163 = mem[_1156]
                    require mem[_1156] == mem[_1156]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1163
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1163
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1304] == bool(mem[_1304])
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
        _1028 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1028 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1028 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1088 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1088] == bool(mem[_1088])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _994 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1010 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1020] == mem[_1020 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1020 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1057 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1077 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1077 + 36] = _1010
                                mem[_1077 + 68] = 0
                                mem[_1077 + 100] = this.address
                                mem[_1077 + 132] = 128
                                mem[_1077 + 164] = mem[_1077]
                                s = 0
                                while s < mem[_1077]:
                                    mem[_1077 + s + 196] = mem[_1077 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1077]) > mem[_1077]:
                                    mem[_1077 + mem[_1077] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(this.address), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1077 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1077 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1104 = mem[(32 * idx + 1) + 128]
                                _1115 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1115 + 36] = _1010
                                mem[_1115 + 68] = 0
                                mem[_1115 + 100] = address(_1104)
                                mem[_1115 + 132] = 128
                                mem[_1115 + 164] = mem[_1115]
                                s = 0
                                while s < mem[_1115]:
                                    mem[_1115 + s + 196] = mem[_1115 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1115]) > mem[_1115]:
                                    mem[_1115 + mem[_1115] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(_1104), 128, mem[_1115], mem[_1115 + 196 len ceil32(mem[_1115])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1115 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1115 + ceil32(return_data.size) + 32
                        else:
                            _1059 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1078 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1078 + 36] = 0
                                mem[_1078 + 68] = _1010
                                mem[_1078 + 100] = this.address
                                mem[_1078 + 132] = 128
                                mem[_1078 + 164] = mem[_1078]
                                s = 0
                                while s < mem[_1078]:
                                    mem[_1078 + s + 196] = mem[_1078 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1078]) > mem[_1078]:
                                    mem[_1078 + mem[_1078] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(this.address), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1078 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1078 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1105 = mem[(32 * idx + 1) + 128]
                                _1116 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1116 + 36] = 0
                                mem[_1116 + 68] = _1010
                                mem[_1116 + 100] = address(_1105)
                                mem[_1116 + 132] = 128
                                mem[_1116 + 164] = mem[_1116]
                                s = 0
                                while s < mem[_1116]:
                                    mem[_1116 + s + 196] = mem[_1116 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1116]) > mem[_1116]:
                                    mem[_1116 + mem[_1116] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(_1105), 128, mem[_1116], mem[_1116 + 196 len ceil32(mem[_1116])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1116 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1116 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1017]
                        require mem[_1017] == mem[_1017]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == mem[_1041]
                        if mem[_1041] >= _1025:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1128 = mem[_1117]
                        require mem[_1117] == mem[_1117]
                        mem[mem[64] + 4] = mem[_1117]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1128 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1164 = mem[_1159]
                        require mem[_1159] == mem[_1159]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1164
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1164
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1305] == bool(mem[_1305])
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
            _1030 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1030 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1030 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1089 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1089] == bool(mem[_1089])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _675 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _675
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _675
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
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == mem[_1021 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1021 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1062 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1108 = mem[(32 * idx + 1) + 128]
                                _1118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1118 + 36] = _1013
                                mem[_1118 + 68] = 0
                                mem[_1118 + 100] = address(_1108)
                                mem[_1118 + 132] = 128
                                mem[_1118 + 164] = mem[_1118]
                                s = 0
                                while s < mem[_1118]:
                                    mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1118]) > mem[_1118]:
                                    mem[_1118 + mem[_1118] + 196] = 0
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1013, 0, address(_1108), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
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
                            _1064 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1109 = mem[(32 * idx + 1) + 128]
                                _1119 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1119 + 36] = 0
                                mem[_1119 + 68] = _1013
                                mem[_1119 + 100] = address(_1109)
                                mem[_1119 + 132] = 128
                                mem[_1119 + 164] = mem[_1119]
                                s = 0
                                while s < mem[_1119]:
                                    mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1119]) > mem[_1119]:
                                    mem[_1119 + mem[_1119] + 196] = 0
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1013, address(_1109), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
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
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1018]
                        require mem[_1018] == mem[_1018]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1042] == mem[_1042]
                        if mem[_1042] >= _1027:
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
                        _1129 = mem[_1120]
                        require mem[_1120] == mem[_1120]
                        mem[mem[64] + 4] = mem[_1120]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1129
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1129 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1165 = mem[_1162]
                        require mem[_1162] == mem[_1162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1165
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1165
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1306] == bool(mem[_1306])
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
            _1032 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1032 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1032 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1090 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1090] == bool(mem[_1090])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
            _991 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1007 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1019] == mem[_1019 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1019 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1052 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1074 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1074 + 36] = _1007
                            mem[_1074 + 68] = 0
                            mem[_1074 + 100] = this.address
                            mem[_1074 + 132] = 128
                            mem[_1074 + 164] = mem[_1074]
                            s = 0
                            while s < mem[_1074]:
                                mem[_1074 + s + 196] = mem[_1074 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1074]) > mem[_1074]:
                                mem[_1074 + mem[_1074] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(this.address), 128, mem[_1074], mem[_1074 + 196 len ceil32(mem[_1074])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1074 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1074 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1100 = mem[(32 * idx + 1) + 128]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1112 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1112 + 36] = _1007
                            mem[_1112 + 68] = 0
                            mem[_1112 + 100] = address(_1100)
                            mem[_1112 + 132] = 128
                            mem[_1112 + 164] = mem[_1112]
                            s = 0
                            while s < mem[_1112]:
                                mem[_1112 + s + 196] = mem[_1112 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1112]) > mem[_1112]:
                                mem[_1112 + mem[_1112] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(_1100), 128, mem[_1112], mem[_1112 + 196 len ceil32(mem[_1112])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1112 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1112 + ceil32(return_data.size) + 32
                    else:
                        _1054 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 36] = 0
                            mem[_1075 + 68] = _1007
                            mem[_1075 + 100] = this.address
                            mem[_1075 + 132] = 128
                            mem[_1075 + 164] = mem[_1075]
                            s = 0
                            while s < mem[_1075]:
                                mem[_1075 + s + 196] = mem[_1075 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1075]) > mem[_1075]:
                                mem[_1075 + mem[_1075] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(this.address), 128, mem[_1075], mem[_1075 + 196 len ceil32(mem[_1075])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1075 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1075 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1101 = mem[(32 * idx + 1) + 128]
                            _1113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1113 + 36] = 0
                            mem[_1113 + 68] = _1007
                            mem[_1113 + 100] = address(_1101)
                            mem[_1113 + 132] = 128
                            mem[_1113 + 164] = mem[_1113]
                            s = 0
                            while s < mem[_1113]:
                                mem[_1113 + s + 196] = mem[_1113 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1113]) > mem[_1113]:
                                mem[_1113 + mem[_1113] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(_1101), 128, mem[_1113], mem[_1113 + 196 len ceil32(mem[_1113])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1113 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1113 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1023 = mem[_1016]
                    require mem[_1016] == mem[_1016]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == mem[_1040]
                    if mem[_1040] >= _1023:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1127 = mem[_1114]
                    require mem[_1114] == mem[_1114]
                    mem[mem[64] + 4] = mem[_1114]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1127
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1127 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1163 = mem[_1156]
                    require mem[_1156] == mem[_1156]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1163
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1163
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1304] == bool(mem[_1304])
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
        _1028 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1028 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1028 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1088 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1088] == bool(mem[_1088])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _994 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1010 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1020] == mem[_1020 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1020 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1057 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1077 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1077 + 36] = _1010
                                mem[_1077 + 68] = 0
                                mem[_1077 + 100] = this.address
                                mem[_1077 + 132] = 128
                                mem[_1077 + 164] = mem[_1077]
                                s = 0
                                while s < mem[_1077]:
                                    mem[_1077 + s + 196] = mem[_1077 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1077]) > mem[_1077]:
                                    mem[_1077 + mem[_1077] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(this.address), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1077 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1077 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1104 = mem[(32 * idx + 1) + 128]
                                _1115 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1115 + 36] = _1010
                                mem[_1115 + 68] = 0
                                mem[_1115 + 100] = address(_1104)
                                mem[_1115 + 132] = 128
                                mem[_1115 + 164] = mem[_1115]
                                s = 0
                                while s < mem[_1115]:
                                    mem[_1115 + s + 196] = mem[_1115 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1115]) > mem[_1115]:
                                    mem[_1115 + mem[_1115] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(_1104), 128, mem[_1115], mem[_1115 + 196 len ceil32(mem[_1115])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1115 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1115 + ceil32(return_data.size) + 32
                        else:
                            _1059 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1078 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1078 + 36] = 0
                                mem[_1078 + 68] = _1010
                                mem[_1078 + 100] = this.address
                                mem[_1078 + 132] = 128
                                mem[_1078 + 164] = mem[_1078]
                                s = 0
                                while s < mem[_1078]:
                                    mem[_1078 + s + 196] = mem[_1078 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1078]) > mem[_1078]:
                                    mem[_1078 + mem[_1078] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(this.address), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1078 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1078 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1105 = mem[(32 * idx + 1) + 128]
                                _1116 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1116 + 36] = 0
                                mem[_1116 + 68] = _1010
                                mem[_1116 + 100] = address(_1105)
                                mem[_1116 + 132] = 128
                                mem[_1116 + 164] = mem[_1116]
                                s = 0
                                while s < mem[_1116]:
                                    mem[_1116 + s + 196] = mem[_1116 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1116]) > mem[_1116]:
                                    mem[_1116 + mem[_1116] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(_1105), 128, mem[_1116], mem[_1116 + 196 len ceil32(mem[_1116])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1116 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1116 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1017]
                        require mem[_1017] == mem[_1017]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == mem[_1041]
                        if mem[_1041] >= _1025:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1128 = mem[_1117]
                        require mem[_1117] == mem[_1117]
                        mem[mem[64] + 4] = mem[_1117]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1128 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1164 = mem[_1159]
                        require mem[_1159] == mem[_1159]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1164
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1164
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1305] == bool(mem[_1305])
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
            _1030 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1030 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1030 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1089 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1089] == bool(mem[_1089])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _675 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _675
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _675
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
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == mem[_1021 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1021 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1062 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1108 = mem[(32 * idx + 1) + 128]
                                _1118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1118 + 36] = _1013
                                mem[_1118 + 68] = 0
                                mem[_1118 + 100] = address(_1108)
                                mem[_1118 + 132] = 128
                                mem[_1118 + 164] = mem[_1118]
                                s = 0
                                while s < mem[_1118]:
                                    mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1118]) > mem[_1118]:
                                    mem[_1118 + mem[_1118] + 196] = 0
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1013, 0, address(_1108), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
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
                            _1064 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1109 = mem[(32 * idx + 1) + 128]
                                _1119 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1119 + 36] = 0
                                mem[_1119 + 68] = _1013
                                mem[_1119 + 100] = address(_1109)
                                mem[_1119 + 132] = 128
                                mem[_1119 + 164] = mem[_1119]
                                s = 0
                                while s < mem[_1119]:
                                    mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1119]) > mem[_1119]:
                                    mem[_1119 + mem[_1119] + 196] = 0
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1013, address(_1109), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
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
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1018]
                        require mem[_1018] == mem[_1018]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1042] == mem[_1042]
                        if mem[_1042] >= _1027:
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
                        _1129 = mem[_1120]
                        require mem[_1120] == mem[_1120]
                        mem[mem[64] + 4] = mem[_1120]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1129
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1129 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1165 = mem[_1162]
                        require mem[_1162] == mem[_1162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1165
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1165
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1306] == bool(mem[_1306])
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
            _1032 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1032 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1032 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1090 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1090] == bool(mem[_1090])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
            _991 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 140 len 20] != 1:
                if mem[(32 * idx) + 140 len 20]:
                    if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                        revert with 'NH{q', 50
                    _1007 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1019 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1019] == mem[_1019 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[_1019 + 12 len 20] != address(cd[(arg4 + 36)]):
                        _1052 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1074 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1074 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1074 + 36] = _1007
                            mem[_1074 + 68] = 0
                            mem[_1074 + 100] = this.address
                            mem[_1074 + 132] = 128
                            mem[_1074 + 164] = mem[_1074]
                            s = 0
                            while s < mem[_1074]:
                                mem[_1074 + s + 196] = mem[_1074 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1074]) > mem[_1074]:
                                mem[_1074 + mem[_1074] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(this.address), 128, mem[_1074], mem[_1074 + 196 len ceil32(mem[_1074])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1074 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1074 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1100 = mem[(32 * idx + 1) + 128]
                            _1112 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1112 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1112 + 36] = _1007
                            mem[_1112 + 68] = 0
                            mem[_1112 + 100] = address(_1100)
                            mem[_1112 + 132] = 128
                            mem[_1112 + 164] = mem[_1112]
                            s = 0
                            while s < mem[_1112]:
                                mem[_1112 + s + 196] = mem[_1112 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1112]) > mem[_1112]:
                                mem[_1112 + mem[_1112] + 196] = 0
                            require ext_code.size(address(_1052))
                            call address(_1052).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1007, 0, address(_1100), 128, mem[_1112], mem[_1112 + 196 len ceil32(mem[_1112])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token0() with:
                                    gas gas_remaining wei
                            mem[_1112 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1112 + ceil32(return_data.size) + 32
                    else:
                        _1054 = mem[(32 * idx) + 128]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if idx == mem[96] - 1:
                            _1075 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1075 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1075 + 36] = 0
                            mem[_1075 + 68] = _1007
                            mem[_1075 + 100] = this.address
                            mem[_1075 + 132] = 128
                            mem[_1075 + 164] = mem[_1075]
                            s = 0
                            while s < mem[_1075]:
                                mem[_1075 + s + 196] = mem[_1075 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1075]) > mem[_1075]:
                                mem[_1075 + mem[_1075] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(this.address), 128, mem[_1075], mem[_1075 + 196 len ceil32(mem[_1075])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1075 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1075 + ceil32(return_data.size) + 32
                        else:
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _1101 = mem[(32 * idx + 1) + 128]
                            _1113 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1113 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1113 + 36] = 0
                            mem[_1113 + 68] = _1007
                            mem[_1113 + 100] = address(_1101)
                            mem[_1113 + 132] = 128
                            mem[_1113 + 164] = mem[_1113]
                            s = 0
                            while s < mem[_1113]:
                                mem[_1113 + s + 196] = mem[_1113 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1113]) > mem[_1113]:
                                mem[_1113 + mem[_1113] + 196] = 0
                            require ext_code.size(address(_1054))
                            call address(_1054).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1007, address(_1101), 128, mem[_1113], mem[_1113 + 196 len ceil32(mem[_1113])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(_991))
                            staticcall address(_991).token1() with:
                                    gas gas_remaining wei
                            mem[_1113 + 32] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _1113 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                else:
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1016 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1023 = mem[_1016]
                    require mem[_1016] == mem[_1016]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1040 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1040] == mem[_1040]
                    if mem[_1040] >= _1023:
                        revert with 0, 'CCC'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1127 = mem[_1114]
                    require mem[_1114] == mem[_1114]
                    mem[mem[64] + 4] = mem[_1114]
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args _1127
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                       value _1127 wei
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1163 = mem[_1156]
                    require mem[_1156] == mem[_1156]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                    mem[mem[64] + 36] = _1163
                    require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                    call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1163
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1304] == bool(mem[_1304])
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
        _1028 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
        if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[140 len 20]
        mem[mem[64] + 36] = _1028 - cd[(arg4 + 132)]
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _1028 - cd[(arg4 + 132)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1088 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1088] == bool(mem[_1088])
    else:
        if not mem[172 len 20]:
            idx = 1
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _994 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 140 len 20] != 1:
                    if mem[(32 * idx) + 140 len 20]:
                        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97]:
                            revert with 'NH{q', 50
                        _1010 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1020 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1020] == mem[_1020 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1020 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1057 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1077 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1077 + 36] = _1010
                                mem[_1077 + 68] = 0
                                mem[_1077 + 100] = this.address
                                mem[_1077 + 132] = 128
                                mem[_1077 + 164] = mem[_1077]
                                s = 0
                                while s < mem[_1077]:
                                    mem[_1077 + s + 196] = mem[_1077 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1077]) > mem[_1077]:
                                    mem[_1077 + mem[_1077] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(this.address), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1077 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1077 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1104 = mem[(32 * idx + 1) + 128]
                                _1115 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1115 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1115 + 36] = _1010
                                mem[_1115 + 68] = 0
                                mem[_1115 + 100] = address(_1104)
                                mem[_1115 + 132] = 128
                                mem[_1115 + 164] = mem[_1115]
                                s = 0
                                while s < mem[_1115]:
                                    mem[_1115 + s + 196] = mem[_1115 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1115]) > mem[_1115]:
                                    mem[_1115 + mem[_1115] + 196] = 0
                                require ext_code.size(address(_1057))
                                call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1010, 0, address(_1104), 128, mem[_1115], mem[_1115 + 196 len ceil32(mem[_1115])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token0() with:
                                        gas gas_remaining wei
                                mem[_1115 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1115 + ceil32(return_data.size) + 32
                        else:
                            _1059 = mem[(32 * idx) + 128]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if idx == mem[96] - 1:
                                _1078 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1078 + 36] = 0
                                mem[_1078 + 68] = _1010
                                mem[_1078 + 100] = this.address
                                mem[_1078 + 132] = 128
                                mem[_1078 + 164] = mem[_1078]
                                s = 0
                                while s < mem[_1078]:
                                    mem[_1078 + s + 196] = mem[_1078 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1078]) > mem[_1078]:
                                    mem[_1078 + mem[_1078] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(this.address), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1078 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1078 + ceil32(return_data.size) + 32
                            else:
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                _1105 = mem[(32 * idx + 1) + 128]
                                _1116 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1116 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1116 + 36] = 0
                                mem[_1116 + 68] = _1010
                                mem[_1116 + 100] = address(_1105)
                                mem[_1116 + 132] = 128
                                mem[_1116 + 164] = mem[_1116]
                                s = 0
                                while s < mem[_1116]:
                                    mem[_1116 + s + 196] = mem[_1116 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1116]) > mem[_1116]:
                                    mem[_1116 + mem[_1116] + 196] = 0
                                require ext_code.size(address(_1059))
                                call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1010, address(_1105), 128, mem[_1116], mem[_1116 + 196 len ceil32(mem[_1116])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(_994))
                                staticcall address(_994).token1() with:
                                        gas gas_remaining wei
                                mem[_1116 + 32] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1116 + ceil32(return_data.size) + 32
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    else:
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x5cd47487 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1017 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1017]
                        require mem[_1017] == mem[_1017]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1041] == mem[_1041]
                        if mem[_1041] >= _1025:
                            revert with 0, 'CCC'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1117 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1128 = mem[_1117]
                        require mem[_1117] == mem[_1117]
                        mem[mem[64] + 4] = mem[_1117]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1128
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1128 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1164 = mem[_1159]
                        require mem[_1159] == mem[_1159]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1164
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1164
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1305] == bool(mem[_1305])
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
            _1030 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1030 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1030 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1089 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1089] == bool(mem[_1089])
        else:
            if 1 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                revert with 'NH{q', 50
            if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
                revert with 'NH{q', 50
            _675 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102] = mem[172 len 20]
            mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 134] = _675
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 102], _675
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
                        _1021 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1021] == mem[_1021 + 12 len 20]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[_1021 + 12 len 20] != address(cd[(arg4 + 36)]):
                            _1062 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1108 = mem[(32 * idx + 1) + 128]
                                _1118 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1118 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1118 + 36] = _1013
                                mem[_1118 + 68] = 0
                                mem[_1118 + 100] = address(_1108)
                                mem[_1118 + 132] = 128
                                mem[_1118 + 164] = mem[_1118]
                                s = 0
                                while s < mem[_1118]:
                                    mem[_1118 + s + 196] = mem[_1118 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1118]) > mem[_1118]:
                                    mem[_1118 + mem[_1118] + 196] = 0
                                require ext_code.size(address(_1062))
                                call address(_1062).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1013, 0, address(_1108), 128, mem[_1118], mem[_1118 + 196 len ceil32(mem[_1118])]
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
                            _1064 = mem[(32 * idx) + 128]
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
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
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
                                _1109 = mem[(32 * idx + 1) + 128]
                                _1119 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1119 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1119 + 36] = 0
                                mem[_1119 + 68] = _1013
                                mem[_1119 + 100] = address(_1109)
                                mem[_1119 + 132] = 128
                                mem[_1119 + 164] = mem[_1119]
                                s = 0
                                while s < mem[_1119]:
                                    mem[_1119 + s + 196] = mem[_1119 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1119]) > mem[_1119]:
                                    mem[_1119 + mem[_1119] + 196] = 0
                                require ext_code.size(address(_1064))
                                call address(_1064).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1013, address(_1109), 128, mem[_1119], mem[_1119 + 196 len ceil32(mem[_1119])]
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
                        _1018 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1027 = mem[_1018]
                        require mem[_1018] == mem[_1018]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        staticcall 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0x629e8056 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1042] == mem[_1042]
                        if mem[_1042] >= _1027:
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
                        _1129 = mem[_1120]
                        require mem[_1120] == mem[_1120]
                        mem[mem[64] + 4] = mem[_1120]
                        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1129
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.submit() with:
                           value _1129 wei
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1162 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1165 = mem[_1162]
                        require mem[_1162] == mem[_1162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[mem[64] + 4] = mem[(32 * idx + 1) + 140 len 20]
                        mem[mem[64] + 36] = _1165
                        require ext_code.size(0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be)
                        call 0x2b2c81e08f1af8835a78bb2a90ae924ace0ea4be.0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], _1165
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1306 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1306] == bool(mem[_1306])
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
            _1032 = mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
            if mem[(32 * mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129] < cd[(arg4 + 132)]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = _1032 - cd[(arg4 + 132)]
            require ext_code.size(address(cd[(arg4 + 36)]))
            call address(cd[(arg4 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1032 - cd[(arg4 + 132)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1090 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1090] == bool(mem[_1090])
}



}
