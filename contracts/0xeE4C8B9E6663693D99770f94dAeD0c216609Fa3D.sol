contract main {




// =====================  Runtime code  =====================


const ROLE_TRADER = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce

const ROLE_OWNER = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of address stakingContractAddr;
mapping of address stakingSTokenAddr;
address vaultAddress;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function stakingSTokenAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakingSTokenAddr[arg1]
}

function stakingContractAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakingContractAddr[arg1]
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

function swap(uint256 arg1, uint256 arg2, address arg3, address[] arg4, uint8[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg4.length) + 97 > test266151307() or floor32(arg4.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = 128
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg4.length) + floor32(arg5.length) + 98 > test266151307() or floor32(arg5.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg4.length) + 97] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = floor32(arg4.length) + 129
    while idx < arg5.length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce, 0)
    if not roleAdmin[0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce][address(msg.sender)].field_0:
        mem[floor32(arg4.length) + floor32(arg5.length) + 130 len 42] = call.data[calldata.size len 42]
        mem[floor32(arg4.length) + floor32(arg5.length) + 131 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + floor32(arg4.length) + floor32(arg5.length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[floor32(arg4.length) + floor32(arg5.length) + 226 len 66] = call.data[calldata.size len 66]
        mem[floor32(arg4.length) + floor32(arg5.length) + 227 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + floor32(arg4.length) + floor32(arg5.length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[floor32(arg4.length) + floor32(arg5.length) + 354] = 'AccessControl: account '
        mem[floor32(arg4.length) + floor32(arg5.length) + 377 len 64] = 0, mem[floor32(arg4.length) + floor32(arg5.length) + 131 len 63]
        mem[floor32(arg4.length) + floor32(arg5.length) + 419] = ' is missing role '
        mem[floor32(arg4.length) + floor32(arg5.length) + 436 len 96] = 0, mem[floor32(arg4.length) + floor32(arg5.length) + 227 len 95]
        mem[floor32(arg4.length) + floor32(arg5.length) + 502] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[floor32(arg4.length) + floor32(arg5.length) + 506] = 32
        mem[floor32(arg4.length) + floor32(arg5.length) + 538] = mem[floor32(arg4.length) + floor32(arg5.length) + 322]
        mem[floor32(arg4.length) + floor32(arg5.length) + 570 len ceil32(mem[floor32(arg4.length) + floor32(arg5.length) + 322])] = mem[floor32(arg4.length) + floor32(arg5.length) + 354 len ceil32(mem[floor32(arg4.length) + floor32(arg5.length) + 322])]
        if ceil32(mem[floor32(arg4.length) + floor32(arg5.length) + 322]) > mem[floor32(arg4.length) + floor32(arg5.length) + 322]:
            mem[floor32(arg4.length) + floor32(arg5.length) + mem[floor32(arg4.length) + floor32(arg5.length) + 322] + 570] = 0
        revert with 0, 
                    32,
                    mem[floor32(arg4.length) + floor32(arg5.length) + 322],
                    mem[floor32(arg4.length) + floor32(arg5.length) + 570 len ceil32(mem[floor32(arg4.length) + floor32(arg5.length) + 322])]
    if arg4.length < 1:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg4.length) + floor32(arg5.length) + 98] = arg4.length
    mem[64] = floor32(arg4.length) + floor32(arg5.length) + (32 * arg4.length) + 130
    if not arg4.length:
        idx = 0
        s = arg3
        t = arg1
        while idx < arg4.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _842 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _851 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_851] == mem[_851 + 12 len 20]
            require ext_code.size(address(_842))
            staticcall address(_842).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_851 + 12 len 20] != address(s):
                _877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _884 = mem[_877]
                require mem[_877] == mem[_877 + 18 len 14]
                _889 = mem[_877 + 32]
                require mem[_877 + 32] == mem[_877 + 50 len 14]
                require mem[_877 + 64] == mem[_877 + 92 len 4]
                require ext_code.size(address(_842))
                staticcall address(_842).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _915 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _930 = mem[_915]
                require mem[_915] == mem[_915 + 12 len 20]
                if idx >= mem[floor32(arg4.length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _889) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _884) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(arg4.length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) and Mask(112, 0, _884) > -1 / t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _889) and 10000 > -1 / Mask(112, 0, _889):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _889) > (-1 * t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _889)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130] = t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) * Mask(112, 0, _884) / (10000 * Mask(112, 0, _889)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000))
                if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _930
                t = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
                continue 
            _878 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _885 = mem[_878]
            require mem[_878] == mem[_878 + 18 len 14]
            _890 = mem[_878 + 32]
            require mem[_878 + 32] == mem[_878 + 50 len 14]
            require mem[_878 + 64] == mem[_878 + 92 len 4]
            require ext_code.size(address(_842))
            staticcall address(_842).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_916]
            require mem[_916] == mem[_916 + 12 len 20]
            if idx >= mem[floor32(arg4.length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _885) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _890) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(arg4.length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) and Mask(112, 0, _890) > -1 / t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _885) and 10000 > -1 / Mask(112, 0, _885):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _885) > (-1 * t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _885)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130] = t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) * Mask(112, 0, _890) / (10000 * Mask(112, 0, _885)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000))
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _931
            t = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
            continue 
        if mem[floor32(arg4.length) + floor32(arg5.length) + 98] < 1:
            revert with 'NH{q', 17
        if mem[floor32(arg4.length) + floor32(arg5.length) + 98] - 1 >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
            revert with 'NH{q', 50
        if mem[(32 * mem[floor32(arg4.length) + floor32(arg5.length) + 98] - 1) + floor32(arg4.length) + floor32(arg5.length) + 130] < arg2:
            revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _864 = mem[128]
        mem[mem[64] + 4] = vaultAddress
        mem[mem[64] + 36] = address(_864)
        mem[mem[64] + 68] = arg1
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args vaultAddress, address(_864), arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _895 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_895] == bool(mem[_895])
        _1114 = mem[96]
        idx = 0
        s = arg3
        while idx < _1114:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1118 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            _1124 = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1131] == mem[_1131 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1131 + 12 len 20] != address(s):
                _1142 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1150 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1150 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1150 + 36] = _1124
                    mem[_1150 + 68] = 0
                    mem[_1150 + 100] = vaultAddress
                    mem[_1150 + 132] = 128
                    mem[_1150 + 164] = mem[_1150]
                    s = 0
                    while s < mem[_1150]:
                        mem[_1150 + s + 196] = mem[_1150 + s + 32]
                        _1114 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1150]) > mem[_1150]:
                        mem[_1150 + mem[_1150] + 196] = 0
                    require ext_code.size(address(_1142))
                    call address(_1142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1124, 0, vaultAddress, 128, mem[_1150], mem[_1150 + 196 len ceil32(mem[_1150])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1118))
                    staticcall address(_1118).token0() with:
                            gas gas_remaining wei
                    mem[_1150 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1150 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1164 = mem[(32 * idx + 1) + 128]
                    _1170 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1170 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1170 + 36] = _1124
                    mem[_1170 + 68] = 0
                    mem[_1170 + 100] = address(_1164)
                    mem[_1170 + 132] = 128
                    mem[_1170 + 164] = mem[_1170]
                    s = 0
                    while s < mem[_1170]:
                        mem[_1170 + s + 196] = mem[_1170 + s + 32]
                        _1114 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1170]) > mem[_1170]:
                        mem[_1170 + mem[_1170] + 196] = 0
                    require ext_code.size(address(_1142))
                    call address(_1142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1124, 0, address(_1164), 128, mem[_1170], mem[_1170 + 196 len ceil32(mem[_1170])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1118))
                    staticcall address(_1118).token0() with:
                            gas gas_remaining wei
                    mem[_1170 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1170 + ceil32(return_data.size) + 32
            else:
                _1144 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1151 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1151 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1151 + 36] = 0
                    mem[_1151 + 68] = _1124
                    mem[_1151 + 100] = vaultAddress
                    mem[_1151 + 132] = 128
                    mem[_1151 + 164] = mem[_1151]
                    s = 0
                    while s < mem[_1151]:
                        mem[_1151 + s + 196] = mem[_1151 + s + 32]
                        _1114 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1151]) > mem[_1151]:
                        mem[_1151 + mem[_1151] + 196] = 0
                    require ext_code.size(address(_1144))
                    call address(_1144).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1124, vaultAddress, 128, mem[_1151], mem[_1151 + 196 len ceil32(mem[_1151])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1118))
                    staticcall address(_1118).token1() with:
                            gas gas_remaining wei
                    mem[_1151 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1151 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1165 = mem[(32 * idx + 1) + 128]
                    _1171 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1171 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1171 + 36] = 0
                    mem[_1171 + 68] = _1124
                    mem[_1171 + 100] = address(_1165)
                    mem[_1171 + 132] = 128
                    mem[_1171 + 164] = mem[_1171]
                    s = 0
                    while s < mem[_1171]:
                        mem[_1171 + s + 196] = mem[_1171 + s + 32]
                        _1114 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1171]) > mem[_1171]:
                        mem[_1171 + mem[_1171] + 196] = 0
                    require ext_code.size(address(_1144))
                    call address(_1144).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1124, address(_1165), 128, mem[_1171], mem[_1171 + 196 len ceil32(mem[_1171])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1118))
                    staticcall address(_1118).token1() with:
                            gas gas_remaining wei
                    mem[_1171 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1171 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1114 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
    else:
        mem[floor32(arg4.length) + floor32(arg5.length) + 130 len 32 * arg4.length] = call.data[calldata.size len 32 * arg4.length]
        idx = 0
        s = arg3
        t = arg1
        while idx < arg4.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _846 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _852 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_852] == mem[_852 + 12 len 20]
            require ext_code.size(address(_846))
            staticcall address(_846).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_852 + 12 len 20] != address(s):
                _880 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _886 = mem[_880]
                require mem[_880] == mem[_880 + 18 len 14]
                _891 = mem[_880 + 32]
                require mem[_880 + 32] == mem[_880 + 50 len 14]
                require mem[_880 + 64] == mem[_880 + 92 len 4]
                require ext_code.size(address(_846))
                staticcall address(_846).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _932 = mem[_918]
                require mem[_918] == mem[_918 + 12 len 20]
                if idx >= mem[floor32(arg4.length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _891) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _886) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(arg4.length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) and Mask(112, 0, _886) > -1 / t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _891) and 10000 > -1 / Mask(112, 0, _891):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _891) > (-1 * t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _891)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130] = t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) * Mask(112, 0, _886) / (10000 * Mask(112, 0, _891)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000))
                if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _932
                t = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
                continue 
            _881 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _887 = mem[_881]
            require mem[_881] == mem[_881 + 18 len 14]
            _892 = mem[_881 + 32]
            require mem[_881 + 32] == mem[_881 + 50 len 14]
            require mem[_881 + 64] == mem[_881 + 92 len 4]
            require ext_code.size(address(_846))
            staticcall address(_846).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _919 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _933 = mem[_919]
            require mem[_919] == mem[_919 + 12 len 20]
            if idx >= mem[floor32(arg4.length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _887) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _892) <= 0:
                revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(arg4.length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) and Mask(112, 0, _892) > -1 / t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _887) and 10000 > -1 / Mask(112, 0, _887):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _887) > (-1 * t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _887)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130] = t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000) * Mask(112, 0, _892) / (10000 * Mask(112, 0, _887)) + (t * uint16(-mem[(32 * idx) + floor32(arg4.length) + 160 len 1] + 10000))
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _933
            t = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
            continue 
        if mem[floor32(arg4.length) + floor32(arg5.length) + 98] < 1:
            revert with 'NH{q', 17
        if mem[floor32(arg4.length) + floor32(arg5.length) + 98] - 1 >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
            revert with 'NH{q', 50
        if mem[(32 * mem[floor32(arg4.length) + floor32(arg5.length) + 98] - 1) + floor32(arg4.length) + floor32(arg5.length) + 130] < arg2:
            revert with 0, 'UniswapV2Router: INSUFFICIENT_OUTPUT_AMOUNT'
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _866 = mem[128]
        mem[mem[64] + 4] = vaultAddress
        mem[mem[64] + 36] = address(_866)
        mem[mem[64] + 68] = arg1
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args vaultAddress, address(_866), arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _896 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_896] == bool(mem[_896])
        _1115 = mem[96]
        idx = 0
        s = arg3
        while idx < _1115:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1120 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(arg4.length) + floor32(arg5.length) + 98]:
                revert with 'NH{q', 50
            _1127 = mem[(32 * idx) + floor32(arg4.length) + floor32(arg5.length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1132] == mem[_1132 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1132 + 12 len 20] != address(s):
                _1146 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1152 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1152 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1152 + 36] = _1127
                    mem[_1152 + 68] = 0
                    mem[_1152 + 100] = vaultAddress
                    mem[_1152 + 132] = 128
                    mem[_1152 + 164] = mem[_1152]
                    s = 0
                    while s < mem[_1152]:
                        mem[_1152 + s + 196] = mem[_1152 + s + 32]
                        _1115 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1152]) > mem[_1152]:
                        mem[_1152 + mem[_1152] + 196] = 0
                    require ext_code.size(address(_1146))
                    call address(_1146).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1127, 0, vaultAddress, 128, mem[_1152], mem[_1152 + 196 len ceil32(mem[_1152])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1120))
                    staticcall address(_1120).token0() with:
                            gas gas_remaining wei
                    mem[_1152 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1152 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1166 = mem[(32 * idx + 1) + 128]
                    _1172 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1172 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1172 + 36] = _1127
                    mem[_1172 + 68] = 0
                    mem[_1172 + 100] = address(_1166)
                    mem[_1172 + 132] = 128
                    mem[_1172 + 164] = mem[_1172]
                    s = 0
                    while s < mem[_1172]:
                        mem[_1172 + s + 196] = mem[_1172 + s + 32]
                        _1115 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1172]) > mem[_1172]:
                        mem[_1172 + mem[_1172] + 196] = 0
                    require ext_code.size(address(_1146))
                    call address(_1146).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1127, 0, address(_1166), 128, mem[_1172], mem[_1172 + 196 len ceil32(mem[_1172])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1120))
                    staticcall address(_1120).token0() with:
                            gas gas_remaining wei
                    mem[_1172 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1172 + ceil32(return_data.size) + 32
            else:
                _1148 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1153 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1153 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1153 + 36] = 0
                    mem[_1153 + 68] = _1127
                    mem[_1153 + 100] = vaultAddress
                    mem[_1153 + 132] = 128
                    mem[_1153 + 164] = mem[_1153]
                    s = 0
                    while s < mem[_1153]:
                        mem[_1153 + s + 196] = mem[_1153 + s + 32]
                        _1115 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1153]) > mem[_1153]:
                        mem[_1153 + mem[_1153] + 196] = 0
                    require ext_code.size(address(_1148))
                    call address(_1148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1127, vaultAddress, 128, mem[_1153], mem[_1153 + 196 len ceil32(mem[_1153])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1120))
                    staticcall address(_1120).token1() with:
                            gas gas_remaining wei
                    mem[_1153 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1153 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1167 = mem[(32 * idx + 1) + 128]
                    _1173 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1173 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1173 + 36] = 0
                    mem[_1173 + 68] = _1127
                    mem[_1173 + 100] = address(_1167)
                    mem[_1173 + 132] = 128
                    mem[_1173 + 164] = mem[_1173]
                    s = 0
                    while s < mem[_1173]:
                        mem[_1173 + s + 196] = mem[_1173 + s + 32]
                        _1115 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1173]) > mem[_1173]:
                        mem[_1173 + mem[_1173] + 196] = 0
                    require ext_code.size(address(_1148))
                    call address(_1148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1127, address(_1167), 128, mem[_1173], mem[_1173 + 196 len ceil32(mem[_1173])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1120))
                    staticcall address(_1120).token1() with:
                            gas gas_remaining wei
                    mem[_1173 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1173 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1115 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
}



}
