contract main {




// =====================  Runtime code  =====================


const sub_16ee0b06(?) = 0xbd79c01140cee7040f8f5e935b72e13540a801b6

const sub_538daac4(?) = 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0

const sub_d4de8e74(?) = 0x2482ec3928adf1718caa5956608684f5a54e14d0

const ROLE_TRADER = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce

const ROLE_OWNER = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of address bonds;
address swapAddress;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function bonds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < bonds.length
    return bonds[arg1]
}

function swap() payable {
    return swapAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function setSwap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        swapAddress = arg1
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

function addBondContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        require arg1
        bonds.length++
        bonds[bonds.length] = arg1
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

function removeBondContract(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        if arg1 >= bonds.length:
            revert with 'NH{q', 50
        bonds[arg1] = 0
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

function sub_2d2cf3b4(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    if ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = eth.balance(mem[(32 * idx) + 128])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length])
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

function sub_9e90aa9d(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(_59))
            staticcall address(_59).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_69]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[floor32(('cd', 36).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[4])
        require ext_code.size(address(_62))
        staticcall address(_62).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_71]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _65] = mem[floor32(('cd', 36).length) + 129 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function sub_bea50577(?) payable {
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_69]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _64] = mem[floor32(('cd', 36).length) + 129 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(_62)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = mem[_71]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _65] = mem[floor32(('cd', 36).length) + 129 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _56 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _61 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _63 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_63 + 32] = Mask(112, 0, _56)
            mem[_61] = Mask(112, 0, _49)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _101 = mem[_100]
            require mem[_100] == mem[_100 + 18 len 14]
            _103 = mem[_100 + 32]
            require mem[_100 + 32] == mem[_100 + 50 len 14]
            require mem[_100 + 64] == mem[_100 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _106 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _108 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_100 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _101)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _94:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_301f36c2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
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
    mem[0] = msg.sender
    mem[32] = sha3(0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b, 0)
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 36).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + floor32(('cd', 36).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    idx = 0
    while idx < bonds.length:
        _168 = mem[96]
        s = 0
        t = 0
        while s < _168:
            if idx >= bonds.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if s >= mem[96]:
                revert with 'NH{q', 50
            _173 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(bonds[idx])
            staticcall bonds[idx].pendingPayoutFor(address arg1) with:
                    gas gas_remaining wei
                   args address(_173)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_179] == mem[_179]
            if mem[_179] <= 0:
                if s == -1:
                    revert with 'NH{q', 17
                _168 = mem[96]
                s = s + 1
                t = t
                continue 
            if idx >= bonds.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            mem[mem[64] + 36] = 0
            require ext_code.size(bonds[idx])
            call bonds[idx].redeem(address arg1, bool arg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_193] == mem[_193]
            if s >= mem[96]:
                revert with 'NH{q', 50
            _210 = mem[(32 * s) + 128]
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
            staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_210)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _222 = mem[_221]
            require mem[_221] == mem[_221]
            if s >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * s) + 140 len 20] == msg.sender:
                if s == -1:
                    revert with 'NH{q', 17
                _168 = mem[96]
                s = s + 1
                t = t
                continue 
            if s >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _222
            require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
            call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x23b872dd with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.sender, _222
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_229] == bool(mem[_229])
            if not mem[_229]:
                if s == -1:
                    revert with 'NH{q', 17
                _168 = mem[96]
                s = s + 1
                t = t
                continue 
            if t > -_222 - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            _168 = mem[96]
            s = s + 1
            t = t + _222
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit Claimed(0, this.address, msg.sender);
    if cd[4]:
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _129 = mem[_126]
        require mem[_126] == mem[_126]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _129
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _129
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_142] == bool(mem[_142])
        mem[mem[64] + 4] = 0xbd79c01140cee7040f8f5e935b72e13540a801b6
        mem[mem[64] + 36] = _129
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xbd79c01140cee7040f8f5e935b72e13540a801b6, _129
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _152 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_152] == bool(mem[_152])
        mem[mem[64] + 4] = _129
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(0xbd79c01140cee7040f8f5e935b72e13540a801b6)
        call 0xbd79c01140cee7040f8f5e935b72e13540a801b6.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args _129, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == bool(mem[_163])
        require ext_code.size(0xbd79c01140cee7040f8f5e935b72e13540a801b6)
        call 0xbd79c01140cee7040f8f5e935b72e13540a801b6.claim(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_baed11da(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98 > test266151307() or floor32(('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b, 0)
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 102] = msg.sender
    require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
    staticcall 0x2482ec3928adf1718caa5956608684f5a54e14d0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 102] = this.address
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 102] = swapAddress
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 134] = ext_call.return_data[0]
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args swapAddress, ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 98] = 0x68bbc000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 102] = ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 134] = 0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 166] = 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 198] = 160
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 230] = (32 * ('cd', 100).length) + 192
        _174 = mem[floor32(('cd', 100).length) + 97]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 294] = mem[floor32(('cd', 100).length) + 97]
        idx = 0
        s = floor32(('cd', 100).length) + 129
        t = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 326
        while idx < mem[floor32(('cd', 100).length) + 97]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapAddress)
        call swapAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * _174) + -mem[64] + 322]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _228 = mem[_226]
        require mem[_226] == mem[_226 + 12 len 20]
        _232 = mem[_226 + 32]
        require mem[_226 + 32] == mem[_226 + 32]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _232
        require ext_code.size(address(_228))
        call address(_228).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), _232
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _243 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_243] == bool(mem[_243])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _266 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _269 = mem[_266]
        require mem[_266] == mem[_266]
        mem[mem[64] + 4] = _232
        mem[mem[64] + 36] = _269
        mem[mem[64] + 68] = address(cd[36])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _232, _269, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _283 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_283] == mem[_283]
        if mem[_283] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if mem[_283] - ext_call.return_data[0] <= cd[68]:
            revert with 0, 'RedeemAndRebond: payout assert'
    else:
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 102] = msg.sender
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 134] = this.address
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 166] = ext_call.return_data[0]
        require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
        call 0x2482ec3928adf1718caa5956608684f5a54e14d0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 102] = 0xbd79c01140cee7040f8f5e935b72e13540a801b6
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 134] = ext_call.return_data[0]
        require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
        call 0x2482ec3928adf1718caa5956608684f5a54e14d0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xbd79c01140cee7040f8f5e935b72e13540a801b6, ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 134] = 1
        require ext_code.size(0xbd79c01140cee7040f8f5e935b72e13540a801b6)
        call 0xbd79c01140cee7040f8f5e935b72e13540a801b6.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 102] = this.address
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 102] = swapAddress
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 134] = ext_call.return_data[0]
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args swapAddress, ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 98] = 0x68bbc000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 102] = ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 134] = 0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 166] = 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 198] = 160
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 230] = (32 * ('cd', 100).length) + 192
        _175 = mem[floor32(('cd', 100).length) + 97]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 294] = mem[floor32(('cd', 100).length) + 97]
        idx = 0
        s = floor32(('cd', 100).length) + 129
        t = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 326
        while idx < mem[floor32(('cd', 100).length) + 97]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapAddress)
        call swapAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * _175) + -mem[64] + 322]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _229 = mem[_227]
        require mem[_227] == mem[_227 + 12 len 20]
        _233 = mem[_227 + 32]
        require mem[_227 + 32] == mem[_227 + 32]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _233
        require ext_code.size(address(_229))
        call address(_229).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), _233
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_244] == bool(mem[_244])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _267 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _270 = mem[_267]
        require mem[_267] == mem[_267]
        mem[mem[64] + 4] = _233
        mem[mem[64] + 36] = _270
        mem[mem[64] + 68] = address(cd[36])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _233, _270, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_284] == mem[_284]
        if mem[_284] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if mem[_284] - ext_call.return_data[0] <= cd[68]:
            revert with 0, 'RedeemAndRebond: payout assert'
}

function sub_0c7667f3(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98 > test266151307() or floor32(('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b, 0)
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                mem[idx + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 102] = msg.sender
    require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
    staticcall 0x2482ec3928adf1718caa5956608684f5a54e14d0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 102] = this.address
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).principle() with:
                gas gas_remaining wei
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 102] = swapAddress
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 134] = ext_call.return_data[0] / 2
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args swapAddress, ext_call.return_data[0] / 2
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 98] = 0x68bbc000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 102] = ext_call.return_data[0] / 2
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 134] = 0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 166] = 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 198] = 160
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 230] = (32 * ('cd', 100).length) + 192
        _167 = mem[floor32(('cd', 100).length) + 97]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 294] = mem[floor32(('cd', 100).length) + 97]
        idx = 0
        s = floor32(('cd', 100).length) + 129
        t = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 326
        while idx < mem[floor32(('cd', 100).length) + 97]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapAddress)
        call swapAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * _167) + -mem[64] + 322]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _247 = mem[_246]
        require mem[_246] == mem[_246 + 12 len 20]
        _253 = mem[_246 + 32]
        require mem[_246 + 32] == mem[_246 + 32]
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = ext_call.return_data[0] / 2
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] / 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_276] == bool(mem[_276])
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _253
        require ext_code.size(address(_247))
        call address(_247).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _253
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_296] == bool(mem[_296])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _303 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _305 = mem[_303]
        require mem[_303] == mem[_303]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).skim(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _305
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), _305
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_316] == bool(mem[_316])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _324 = mem[_322]
        require mem[_322] == mem[_322]
        mem[mem[64] + 4] = _305
        mem[mem[64] + 36] = _324
        mem[mem[64] + 68] = address(cd[36])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _305, _324, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] == mem[_332]
        if mem[_332] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if mem[_332] - ext_call.return_data[0] <= cd[68]:
            revert with 0, 'RedeemAndRebond: payout assert'
    else:
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 102] = msg.sender
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 134] = this.address
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 166] = ext_call.return_data[0]
        require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
        call 0x2482ec3928adf1718caa5956608684f5a54e14d0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 102] = 0xbd79c01140cee7040f8f5e935b72e13540a801b6
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 134] = ext_call.return_data[0]
        require ext_code.size(0x2482ec3928adf1718caa5956608684f5a54e14d0)
        call 0x2482ec3928adf1718caa5956608684f5a54e14d0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xbd79c01140cee7040f8f5e935b72e13540a801b6, ext_call.return_data[0]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 134] = 1
        require ext_code.size(0xbd79c01140cee7040f8f5e935b72e13540a801b6)
        call 0xbd79c01140cee7040f8f5e935b72e13540a801b6.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 102] = this.address
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        staticcall 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).principle() with:
                gas gas_remaining wei
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (6 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 102] = swapAddress
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 134] = ext_call.return_data[0] / 2
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args swapAddress, ext_call.return_data[0] / 2
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (7 * ceil32(return_data.size)) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 98] = 0x68bbc000000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 102] = ext_call.return_data[0] / 2
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 134] = 0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 166] = 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 198] = 160
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + 230] = (32 * ('cd', 100).length) + 192
        _245 = mem[floor32(('cd', 100).length) + 97]
        mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 294] = mem[floor32(('cd', 100).length) + 97]
        idx = 0
        s = floor32(('cd', 100).length) + 129
        t = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 326
        while idx < mem[floor32(('cd', 100).length) + 97]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(swapAddress)
        call swapAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len floor32(('cd', 100).length) + floor32(('cd', 132).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * _245) + -mem[64] + 322]
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _345 = mem[_344]
        require mem[_344] == mem[_344 + 12 len 20]
        _348 = mem[_344 + 32]
        require mem[_344 + 32] == mem[_344 + 32]
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = ext_call.return_data[0] / 2
        require ext_code.size(0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0)
        call 0xf2f7ce610a091b94d41d69f4ff1129434a82e2f0.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0] / 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _377 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_377] == bool(mem[_377])
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = _348
        require ext_code.size(address(_345))
        call address(_345).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _348
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_381] == bool(mem[_381])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _386 = mem[_385]
        require mem[_385] == mem[_385]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).skim(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _386
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), _386
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _391 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_391] == bool(mem[_391])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _395 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_395]
        require mem[_395] == mem[_395]
        mem[mem[64] + 4] = _386
        mem[mem[64] + 36] = _396
        mem[mem[64] + 68] = address(cd[36])
        require ext_code.size(address(cd[4]))
        call address(cd[4]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _386, _396, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _399 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_399] == mem[_399]
        if mem[_399] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if mem[_399] - ext_call.return_data[0] <= cd[68]:
            revert with 0, 'RedeemAndRebond: payout assert'
}



}
