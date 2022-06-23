contract main {




// =====================  Runtime code  =====================


#
#  - sub_d55a4046(?)
#  - _fallback()
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
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 230] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 262
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.0xd55a4046 with:
            gas gas_remaining wei
           args address(cd[4]), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0, ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 134] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 166] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 230] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 262
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 198] = (32 * ('cd', 36).length) + 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 262] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 294
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.0x1e6e949c with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(cd[4]), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 262 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    _174 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98]
    require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] <= test266151307()
    require floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 129 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + return_data.size + 98
    _175 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]) + 99 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]
    require _174 + (32 * _175) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + _174 + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130
    while idx < _175:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _175 < 1:
        revert with 'NH{q', 17
    if _175 - 1 >= _175:
        revert with 'NH{q', 50
    if mem[(32 * _175 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] <= ext_call.return_data[0]:
        return 0, ext_call.return_data[0]
    if ext_call.return_data[0] > -2:
        revert with 'NH{q', 17
    if _175 < 1:
        revert with 'NH{q', 17
    if _175 - 1 >= _175:
        revert with 'NH{q', 50
    if mem[(32 * _175 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] < ext_call.return_data[0] + 1:
        revert with 'NH{q', 17
    return mem[(32 * _175 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + -ext_call.return_data[0] - 1, 
           ext_call.return_data[0]
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
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 230] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (32 * ('cd', 36).length) + 262
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.0xd55a4046 with:
            gas gas_remaining wei
           args address(cd[4]), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 230 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'AAA'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = 0x1e6e949c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = ext_call.return_data[0]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 134] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 166] = 128
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 230] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 262
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 198] = (32 * ('cd', 36).length) + 160
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 262] = ('cd', 68).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 294
    while idx < mem[floor32(('cd', 36).length) + 97]:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(this.address)
    staticcall this.address.0x1e6e949c with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(cd[4]), Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 262 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 32]), (32 * ('cd', 36).length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    _449 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98]
    require mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] <= test266151307()
    require floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 129 < floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + return_data.size + 98
    _454 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]
    if mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]) + 99 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] + 98]) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98] = _454
    require _449 + (32 * _454) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + _449 + 130
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130
    while idx < _454:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ext_call.return_data[0] > -2:
        revert with 'NH{q', 17
    if _454 < 1:
        revert with 'NH{q', 17
    if _454 - 1 >= _454:
        revert with 'NH{q', 50
    _537 = mem[(32 * _454 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
    if mem[(32 * _454 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] < ext_call.return_data[0] + 1:
        revert with 'NH{q', 17
    if mem[(32 * _454 - 1) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + -ext_call.return_data[0] - 1 <= cd[100]:
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
        _564 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
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
        mem[mem[64] + 96] = (32 * mem[96]) + 160
        _590 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _590] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130 len 32 * _590]
        mem[mem[64] + 128] = _537 + -ext_call.return_data[0] - 1
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
        staticcall mem[140 len 20].0xd21220a7 with:
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
        _566 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
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
        mem[mem[64] + 96] = (32 * mem[96]) + 160
        _591 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _591] = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 130 len 32 * _591]
        mem[mem[64] + 128] = _537 + -ext_call.return_data[0] - 1
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
                        staticcall address(_426).0xd21220a7 with:
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
                    staticcall address(_428).0xd21220a7 with:
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



}
