contract main {




// =====================  Runtime code  =====================


const sub_1fa42d09(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const ROLE_TRADER = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce

const ROLE_OWNER = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b

const DEFAULT_ADMIN_ROLE = 0

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9


mapping of struct roleAdmin;

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
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
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
    if arg1 == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= arg2:
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
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
    if arg1 == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce, 0)
    if not roleAdmin[0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce][address(msg.sender)].field_0:
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
        s = 0x872340a532bdd7bb02bea115c1b0f1ba87eac982f5b79b51ac189ffaac1b6fce
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
    if 0 >= arg3.length:
        revert with 'NH{q', 50
    require cd[(arg3 + 36)] == address(cd[(arg3 + 36)])
    if address(cd[(arg3 + 36)]) != 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = 160
        mem[260] = arg3.length
        idx = 0
        s = arg3 + 36
        t = 292
        while idx < arg3.length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=arg3.length, data=mem[292 len 32 * arg3.length]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _72 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 127 < return_data.size + 96
        _76 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _76
        require _72 + (32 * _76) + 32 <= return_data.size
        idx = 0
        s = _72 + 128
        t = ceil32(return_data.size) + 128
        while idx < _76:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if arg3.length < 1:
            revert with 'NH{q', 17
        if arg3.length - 1 >= arg3.length:
            revert with 'NH{q', 50
        require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
        if address(cd[((32 * arg3.length - 1) + arg3 + 36)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * arg3.length - 1) + arg3 + 36)]))
            staticcall address(cd[((32 * arg3.length - 1) + arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] == mem[_135]
            mem[mem[64] + 4] = mem[_135]
            mem[mem[64] + 36] = this.address
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 rg1, address rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_173] == bool(mem[_173])
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address rg1) with:
                 gas gas_remaining wei
                args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg1:
            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = arg3.length
            idx = 0
            s = arg3 + 36
            t = ceil32(return_data.size) + 292
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = this.address
            mem[ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg3.length]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _73 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
            _77 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
            require _73 + (32 * _77) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _73 + 128
            t = (2 * ceil32(return_data.size)) + 128
            while idx < _77:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if arg3.length < 1:
                revert with 'NH{q', 17
            if arg3.length - 1 >= arg3.length:
                revert with 'NH{q', 50
            require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
            if address(cd[((32 * arg3.length - 1) + arg3 + 36)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * arg3.length - 1) + arg3 + 36)]))
                staticcall address(cd[((32 * arg3.length - 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_136] == mem[_136]
                mem[mem[64] + 4] = mem[_136]
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
                call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_174] == bool(mem[_174])
                require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
                call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
            call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 rg1, bool rg2) with:
                 gas gas_remaining wei
                args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg1
            mem[ceil32(return_data.size) + 132] = arg2
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = arg3.length
            idx = 0
            s = arg3 + 36
            t = ceil32(return_data.size) + 292
            while idx < arg3.length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = this.address
            mem[ceil32(return_data.size) + 228] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg1, arg2, Array(len=arg3.length, data=mem[ceil32(return_data.size) + 292 len 32 * arg3.length]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _74 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
            _78 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
            require _74 + (32 * _78) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _74 + 128
            t = (2 * ceil32(return_data.size)) + 128
            while idx < _78:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if arg3.length < 1:
                revert with 'NH{q', 17
            if arg3.length - 1 >= arg3.length:
                revert with 'NH{q', 50
            require cd[((32 * arg3.length - 1) + arg3 + 36)] == address(cd[((32 * arg3.length - 1) + arg3 + 36)])
            if address(cd[((32 * arg3.length - 1) + arg3 + 36)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * arg3.length - 1) + arg3 + 36)]))
                staticcall address(cd[((32 * arg3.length - 1) + arg3 + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_137] == mem[_137]
                mem[mem[64] + 4] = mem[_137]
                mem[mem[64] + 36] = this.address
                require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
                call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 rg1, address rg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_175] == bool(mem[_175])
                require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
                call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
