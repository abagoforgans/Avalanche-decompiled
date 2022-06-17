contract main {




// =====================  Runtime code  =====================


#
#  - sub_3943e736(?)
#
const sub_b22cf6ee(?) = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CONTROLLER_ROLE = 0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address sub_b9d54cd5Address;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_b9d54cd5(?) {
    return sub_b9d54cd5Address
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_fa442d61(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, '403'
    sub_b9d54cd5Address = address(arg1)
}

function sub_d9dd08ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, '403'
    call sub_b9d54cd5Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_47e86599(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
    else:
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'delegate.return_code')
}

function sub_6a5475e7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
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
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
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

function sub_ec052482(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    if not address(arg4):
        if address(arg4):
            revert with 'NH{q', 50
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        mem[196] = address(arg1)
        mem[228] = arg5
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg5
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if address(arg3) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg5
            mem[ceil32(return_data.size) + 228] = arg6
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = sub_b9d54cd5Address
            mem[ceil32(return_data.size) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), sub_b9d54cd5Address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _131 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _139 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
            require _131 + (32 * _139) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _131 + 224
            t = (2 * ceil32(return_data.size)) + 224
            while idx < _139:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[ceil32(return_data.size) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg5
            mem[ceil32(return_data.size) + 228] = arg6
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = sub_b9d54cd5Address
            mem[ceil32(return_data.size) + 324] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), sub_b9d54cd5Address, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _132 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _140 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
            mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
            require _132 + (32 * _140) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _132 + 224
            t = (2 * ceil32(return_data.size)) + 224
            while idx < _140:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[128 len 96] = call.data[calldata.size len 96]
        mem[128] = address(arg2)
        if not address(arg4):
            mem[160] = address(arg3)
            mem[228] = address(arg1)
            mem[260] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg5
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if address(arg3) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = arg5
                mem[ceil32(return_data.size) + 260] = arg6
                mem[ceil32(return_data.size) + 292] = 160
                mem[ceil32(return_data.size) + 388] = 3
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = sub_b9d54cd5Address
                mem[ceil32(return_data.size) + 356] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), sub_b9d54cd5Address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _135 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _143 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                require _135 + (32 * _143) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _135 + 256
                t = (2 * ceil32(return_data.size)) + 256
                while idx < _143:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[ceil32(return_data.size) + 224] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = arg5
                mem[ceil32(return_data.size) + 260] = arg6
                mem[ceil32(return_data.size) + 292] = 160
                mem[ceil32(return_data.size) + 388] = 3
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = sub_b9d54cd5Address
                mem[ceil32(return_data.size) + 356] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), sub_b9d54cd5Address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _136 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _144 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                require _136 + (32 * _144) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _136 + 256
                t = (2 * ceil32(return_data.size)) + 256
                while idx < _144:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[160] = address(arg4)
            mem[192] = address(arg3)
            mem[228] = address(arg1)
            mem[260] = arg5
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg5
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if address(arg3) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = arg5
                mem[ceil32(return_data.size) + 260] = arg6
                mem[ceil32(return_data.size) + 292] = 160
                mem[ceil32(return_data.size) + 388] = 3
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = sub_b9d54cd5Address
                mem[ceil32(return_data.size) + 356] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), sub_b9d54cd5Address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _133 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _141 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                require _133 + (32 * _141) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _133 + 256
                t = (2 * ceil32(return_data.size)) + 256
                while idx < _141:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[ceil32(return_data.size) + 224] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = arg5
                mem[ceil32(return_data.size) + 260] = arg6
                mem[ceil32(return_data.size) + 292] = 160
                mem[ceil32(return_data.size) + 388] = 3
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 420
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = sub_b9d54cd5Address
                mem[ceil32(return_data.size) + 356] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), sub_b9d54cd5Address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _134 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _142 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                require _134 + (32 * _142) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _134 + 256
                t = (2 * ceil32(return_data.size)) + 256
                while idx < _142:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}

function sub_0279dae2(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == bool(arg7)
    mem[0] = msg.sender
    mem[32] = sha3(0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357, 0)
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    if not address(arg4):
        mem[96] = 2
        if address(arg4):
            revert with 'NH{q', 50
        mem[128] = address(arg2)
        mem[160] = address(arg3)
        if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[196] = arg6
            mem[228] = 128
            mem[324] = 2
            idx = 0
            s = 128
            t = 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[260] = this.address
            mem[292] = block.timestamp
            require ext_code.size(address(arg1))
            call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg5 wei
                 gas gas_remaining wei
                args arg6, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _266 = mem[192 len 4], Mask(224, 32, arg6) >> 32
            require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
            _278 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
            require _266 + (32 * _278) + 32 <= return_data.size
            idx = 0
            s = _266 + 224
            t = ceil32(return_data.size) + 224
            while idx < _278:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if arg7:
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg6
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args arg6, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
                if ext_call.success:
                    _484 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _492 = mem[_484]
                    require mem[_484] <= test266151307()
                    require _484 + mem[_484] + 31 < _484 + return_data.size
                    _500 = mem[_484 + mem[_484]]
                    if mem[_484 + mem[_484]] > test266151307():
                        revert with 'NH{q', 65
                    if _484 + ceil32(return_data.size) + (32 * mem[_484 + mem[_484]]) + 32 > test266151307() or (32 * mem[_484 + mem[_484]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _484 + ceil32(return_data.size) + (32 * mem[_484 + mem[_484]]) + 32
                    mem[_484 + ceil32(return_data.size)] = _500
                    require _492 + (32 * _500) + 32 <= return_data.size
                    idx = 0
                    s = _484 + _492 + 32
                    t = _484 + ceil32(return_data.size) + 32
                    while idx < _500:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            if not arg7:
                mem[196] = address(arg1)
                mem[228] = arg5
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), arg5
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = arg5
                mem[ceil32(return_data.size) + 228] = arg6
                mem[ceil32(return_data.size) + 260] = 160
                mem[ceil32(return_data.size) + 356] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 292] = this.address
                mem[ceil32(return_data.size) + 324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _264 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                _276 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                require _264 + (32 * _276) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _264 + 224
                t = (2 * ceil32(return_data.size)) + 224
                while idx < _276:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if arg5 and 2 > -1 / arg5:
                    revert with 'NH{q', 17
                mem[196] = address(arg1)
                mem[228] = 2 * arg5
                require ext_code.size(address(arg2))
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), 2 * arg5
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = arg5
                mem[ceil32(return_data.size) + 228] = arg6
                mem[ceil32(return_data.size) + 260] = 160
                mem[ceil32(return_data.size) + 356] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 292] = this.address
                mem[ceil32(return_data.size) + 324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _265 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                _277 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                require _265 + (32 * _277) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _265 + 224
                t = (2 * ceil32(return_data.size)) + 224
                while idx < _277:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg5
                mem[mem[64] + 36] = arg6
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg5, arg6, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                if ext_call.success:
                    _483 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _491 = mem[_483]
                    require mem[_483] <= test266151307()
                    require _483 + mem[_483] + 31 < _483 + return_data.size
                    _499 = mem[_483 + mem[_483]]
                    if mem[_483 + mem[_483]] > test266151307():
                        revert with 'NH{q', 65
                    if _483 + ceil32(return_data.size) + (32 * mem[_483 + mem[_483]]) + 32 > test266151307() or (32 * mem[_483 + mem[_483]]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _483 + ceil32(return_data.size) + (32 * mem[_483 + mem[_483]]) + 32
                    mem[_483 + ceil32(return_data.size)] = _499
                    require _491 + (32 * _499) + 32 <= return_data.size
                    idx = 0
                    s = _483 + _491 + 32
                    t = _483 + ceil32(return_data.size) + 32
                    while idx < _499:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    else:
        mem[96] = 3
        mem[128 len 96] = call.data[calldata.size len 96]
        mem[128] = address(arg2)
        if not address(arg4):
            mem[160] = address(arg3)
            if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = arg6
                mem[260] = 128
                mem[356] = 3
                idx = 0
                s = 128
                t = 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = this.address
                mem[324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _272 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                _284 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                require _272 + (32 * _284) + 32 <= return_data.size
                idx = 0
                s = _272 + 256
                t = ceil32(return_data.size) + 256
                while idx < _284:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if arg7:
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = 3
                    idx = 0
                    s = 128
                    t = mem[64] + 164
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                    if ext_call.success:
                        _488 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _496 = mem[_488]
                        require mem[_488] <= test266151307()
                        require _488 + mem[_488] + 31 < _488 + return_data.size
                        _504 = mem[_488 + mem[_488]]
                        if mem[_488 + mem[_488]] > test266151307():
                            revert with 'NH{q', 65
                        if _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32 > test266151307() or (32 * mem[_488 + mem[_488]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _488 + ceil32(return_data.size) + (32 * mem[_488 + mem[_488]]) + 32
                        mem[_488 + ceil32(return_data.size)] = _504
                        require _496 + (32 * _504) + 32 <= return_data.size
                        idx = 0
                        s = _488 + _496 + 32
                        t = _488 + ceil32(return_data.size) + 32
                        while idx < _504:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if not arg7:
                    mem[228] = address(arg1)
                    mem[260] = arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg5
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg5
                    mem[ceil32(return_data.size) + 260] = arg6
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 3
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 420
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _270 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                    _282 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    require _270 + (32 * _282) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _270 + 256
                    t = (2 * ceil32(return_data.size)) + 256
                    while idx < _282:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 and 2 > -1 / arg5:
                        revert with 'NH{q', 17
                    mem[228] = address(arg1)
                    mem[260] = 2 * arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg5
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg5
                    mem[ceil32(return_data.size) + 260] = arg6
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 3
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 420
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _271 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                    _283 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    require _271 + (32 * _283) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _271 + 256
                    t = (2 * ceil32(return_data.size)) + 256
                    while idx < _283:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = arg6
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if ext_call.success:
                        _487 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _495 = mem[_487]
                        require mem[_487] <= test266151307()
                        require _487 + mem[_487] + 31 < _487 + return_data.size
                        _503 = mem[_487 + mem[_487]]
                        if mem[_487 + mem[_487]] > test266151307():
                            revert with 'NH{q', 65
                        if _487 + ceil32(return_data.size) + (32 * mem[_487 + mem[_487]]) + 32 > test266151307() or (32 * mem[_487 + mem[_487]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _487 + ceil32(return_data.size) + (32 * mem[_487 + mem[_487]]) + 32
                        mem[_487 + ceil32(return_data.size)] = _503
                        require _495 + (32 * _503) + 32 <= return_data.size
                        idx = 0
                        s = _487 + _495 + 32
                        t = _487 + ceil32(return_data.size) + 32
                        while idx < _503:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[160] = address(arg4)
            mem[192] = address(arg3)
            if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = arg6
                mem[260] = 128
                mem[356] = 3
                idx = 0
                s = 128
                t = 388
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = this.address
                mem[324] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _269 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                _281 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                require _269 + (32 * _281) + 32 <= return_data.size
                idx = 0
                s = _269 + 256
                t = ceil32(return_data.size) + 256
                while idx < _281:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if arg7:
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = 3
                    idx = 0
                    s = 128
                    t = mem[64] + 164
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                    if ext_call.success:
                        _486 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _494 = mem[_486]
                        require mem[_486] <= test266151307()
                        require _486 + mem[_486] + 31 < _486 + return_data.size
                        _502 = mem[_486 + mem[_486]]
                        if mem[_486 + mem[_486]] > test266151307():
                            revert with 'NH{q', 65
                        if _486 + ceil32(return_data.size) + (32 * mem[_486 + mem[_486]]) + 32 > test266151307() or (32 * mem[_486 + mem[_486]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _486 + ceil32(return_data.size) + (32 * mem[_486 + mem[_486]]) + 32
                        mem[_486 + ceil32(return_data.size)] = _502
                        require _494 + (32 * _502) + 32 <= return_data.size
                        idx = 0
                        s = _486 + _494 + 32
                        t = _486 + ceil32(return_data.size) + 32
                        while idx < _502:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if not arg7:
                    mem[228] = address(arg1)
                    mem[260] = arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg5
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg5
                    mem[ceil32(return_data.size) + 260] = arg6
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 3
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 420
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _267 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                    _279 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    require _267 + (32 * _279) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _267 + 256
                    t = (2 * ceil32(return_data.size)) + 256
                    while idx < _279:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 and 2 > -1 / arg5:
                        revert with 'NH{q', 17
                    mem[228] = address(arg1)
                    mem[260] = 2 * arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg5
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = arg5
                    mem[ceil32(return_data.size) + 260] = arg6
                    mem[ceil32(return_data.size) + 292] = 160
                    mem[ceil32(return_data.size) + 388] = 3
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 420
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _268 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                    _280 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                    require _268 + (32 * _280) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _268 + 256
                    t = (2 * ceil32(return_data.size)) + 256
                    while idx < _280:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = arg6
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 3
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                    if ext_call.success:
                        _485 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _493 = mem[_485]
                        require mem[_485] <= test266151307()
                        require _485 + mem[_485] + 31 < _485 + return_data.size
                        _501 = mem[_485 + mem[_485]]
                        if mem[_485 + mem[_485]] > test266151307():
                            revert with 'NH{q', 65
                        if _485 + ceil32(return_data.size) + (32 * mem[_485 + mem[_485]]) + 32 > test266151307() or (32 * mem[_485 + mem[_485]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _485 + ceil32(return_data.size) + (32 * mem[_485 + mem[_485]]) + 32
                        mem[_485 + ceil32(return_data.size)] = _501
                        require _493 + (32 * _501) + 32 <= return_data.size
                        idx = 0
                        s = _485 + _493 + 32
                        t = _485 + ceil32(return_data.size) + 32
                        while idx < _501:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
}

function sub_83295f21(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == bool(arg7)
    require arg8 == address(arg8)
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    require ext_code.size(address(arg8))
    call address(arg8).createPair() with:
         gas gas_remaining wei
    mem[0] = msg.sender
    mem[32] = sha3(0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357, 0)
    if not roleAdmin[0x7b765e0e932d348852a6f810bfa1ab891e259123f02db8cdcde614c570223357][address(msg.sender)].field_0:
        revert with 0, '403'
    if not ext_call.success:
        if not address(arg4):
            mem[96] = 2
            if address(arg4):
                revert with 'NH{q', 50
            mem[128] = address(arg2)
            mem[160] = address(arg3)
            if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = arg6
                mem[228] = 128
                mem[324] = 2
                idx = 0
                s = 128
                t = 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[260] = this.address
                mem[292] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args arg6, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _492 = mem[192 len 4], Mask(224, 32, arg6) >> 32
                require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
                _516 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                require _492 + (32 * _516) + 32 <= return_data.size
                idx = 0
                s = _492 + 224
                t = ceil32(return_data.size) + 224
                while idx < _516:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if arg7:
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 164
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
                    if ext_call.success:
                        _930 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _946 = mem[_930]
                        require mem[_930] <= test266151307()
                        require _930 + mem[_930] + 31 < _930 + return_data.size
                        _962 = mem[_930 + mem[_930]]
                        if mem[_930 + mem[_930]] > test266151307():
                            revert with 'NH{q', 65
                        if _930 + ceil32(return_data.size) + (32 * mem[_930 + mem[_930]]) + 32 > test266151307() or (32 * mem[_930 + mem[_930]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _930 + ceil32(return_data.size) + (32 * mem[_930 + mem[_930]]) + 32
                        mem[_930 + ceil32(return_data.size)] = _962
                        require _946 + (32 * _962) + 32 <= return_data.size
                        idx = 0
                        s = _930 + _946 + 32
                        t = _930 + ceil32(return_data.size) + 32
                        while idx < _962:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if not arg7:
                    mem[196] = address(arg1)
                    mem[228] = arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg5
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg5
                    mem[ceil32(return_data.size) + 228] = arg6
                    mem[ceil32(return_data.size) + 260] = 160
                    mem[ceil32(return_data.size) + 356] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 292] = this.address
                    mem[ceil32(return_data.size) + 324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _490 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                    _514 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    require _490 + (32 * _514) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _490 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _514:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 and 2 > -1 / arg5:
                        revert with 'NH{q', 17
                    mem[196] = address(arg1)
                    mem[228] = 2 * arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg5
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg5
                    mem[ceil32(return_data.size) + 228] = arg6
                    mem[ceil32(return_data.size) + 260] = 160
                    mem[ceil32(return_data.size) + 356] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 292] = this.address
                    mem[ceil32(return_data.size) + 324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _491 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                    _515 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    require _491 + (32 * _515) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _491 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _515:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = arg6
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
                    if ext_call.success:
                        _929 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _945 = mem[_929]
                        require mem[_929] <= test266151307()
                        require _929 + mem[_929] + 31 < _929 + return_data.size
                        _961 = mem[_929 + mem[_929]]
                        if mem[_929 + mem[_929]] > test266151307():
                            revert with 'NH{q', 65
                        if _929 + ceil32(return_data.size) + (32 * mem[_929 + mem[_929]]) + 32 > test266151307() or (32 * mem[_929 + mem[_929]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _929 + ceil32(return_data.size) + (32 * mem[_929 + mem[_929]]) + 32
                        mem[_929 + ceil32(return_data.size)] = _961
                        require _945 + (32 * _961) + 32 <= return_data.size
                        idx = 0
                        s = _929 + _945 + 32
                        t = _929 + ceil32(return_data.size) + 32
                        while idx < _961:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = address(arg2)
            if not address(arg4):
                mem[160] = address(arg3)
                if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = arg6
                    mem[260] = 128
                    mem[356] = 3
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _498 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                    _522 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    require _498 + (32 * _522) + 32 <= return_data.size
                    idx = 0
                    s = _498 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _522:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if arg7:
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg6
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 164
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg5 wei
                             gas gas_remaining wei
                            args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _934 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _950 = mem[_934]
                            require mem[_934] <= test266151307()
                            require _934 + mem[_934] + 31 < _934 + return_data.size
                            _966 = mem[_934 + mem[_934]]
                            if mem[_934 + mem[_934]] > test266151307():
                                revert with 'NH{q', 65
                            if _934 + ceil32(return_data.size) + (32 * mem[_934 + mem[_934]]) + 32 > test266151307() or (32 * mem[_934 + mem[_934]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _934 + ceil32(return_data.size) + (32 * mem[_934 + mem[_934]]) + 32
                            mem[_934 + ceil32(return_data.size)] = _966
                            require _950 + (32 * _966) + 32 <= return_data.size
                            idx = 0
                            s = _934 + _950 + 32
                            t = _934 + ceil32(return_data.size) + 32
                            while idx < _966:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if not arg7:
                        mem[228] = address(arg1)
                        mem[260] = arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _496 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _520 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _496 + (32 * _520) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _496 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _520:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if arg5 and 2 > -1 / arg5:
                            revert with 'NH{q', 17
                        mem[228] = address(arg1)
                        mem[260] = 2 * arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _497 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _521 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _497 + (32 * _521) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _497 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _521:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg5
                        mem[mem[64] + 36] = arg6
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _933 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _949 = mem[_933]
                            require mem[_933] <= test266151307()
                            require _933 + mem[_933] + 31 < _933 + return_data.size
                            _965 = mem[_933 + mem[_933]]
                            if mem[_933 + mem[_933]] > test266151307():
                                revert with 'NH{q', 65
                            if _933 + ceil32(return_data.size) + (32 * mem[_933 + mem[_933]]) + 32 > test266151307() or (32 * mem[_933 + mem[_933]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _933 + ceil32(return_data.size) + (32 * mem[_933 + mem[_933]]) + 32
                            mem[_933 + ceil32(return_data.size)] = _965
                            require _949 + (32 * _965) + 32 <= return_data.size
                            idx = 0
                            s = _933 + _949 + 32
                            t = _933 + ceil32(return_data.size) + 32
                            while idx < _965:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                mem[160] = address(arg4)
                mem[192] = address(arg3)
                if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = arg6
                    mem[260] = 128
                    mem[356] = 3
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _495 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                    _519 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    require _495 + (32 * _519) + 32 <= return_data.size
                    idx = 0
                    s = _495 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _519:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if arg7:
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg6
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 164
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg5 wei
                             gas gas_remaining wei
                            args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _932 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _948 = mem[_932]
                            require mem[_932] <= test266151307()
                            require _932 + mem[_932] + 31 < _932 + return_data.size
                            _964 = mem[_932 + mem[_932]]
                            if mem[_932 + mem[_932]] > test266151307():
                                revert with 'NH{q', 65
                            if _932 + ceil32(return_data.size) + (32 * mem[_932 + mem[_932]]) + 32 > test266151307() or (32 * mem[_932 + mem[_932]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _932 + ceil32(return_data.size) + (32 * mem[_932 + mem[_932]]) + 32
                            mem[_932 + ceil32(return_data.size)] = _964
                            require _948 + (32 * _964) + 32 <= return_data.size
                            idx = 0
                            s = _932 + _948 + 32
                            t = _932 + ceil32(return_data.size) + 32
                            while idx < _964:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if not arg7:
                        mem[228] = address(arg1)
                        mem[260] = arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _493 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _517 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _493 + (32 * _517) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _493 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _517:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if arg5 and 2 > -1 / arg5:
                            revert with 'NH{q', 17
                        mem[228] = address(arg1)
                        mem[260] = 2 * arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _494 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _518 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _494 + (32 * _518) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _494 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _518:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg5
                        mem[mem[64] + 36] = arg6
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _931 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _947 = mem[_931]
                            require mem[_931] <= test266151307()
                            require _931 + mem[_931] + 31 < _931 + return_data.size
                            _963 = mem[_931 + mem[_931]]
                            if mem[_931 + mem[_931]] > test266151307():
                                revert with 'NH{q', 65
                            if _931 + ceil32(return_data.size) + (32 * mem[_931 + mem[_931]]) + 32 > test266151307() or (32 * mem[_931 + mem[_931]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _931 + ceil32(return_data.size) + (32 * mem[_931 + mem[_931]]) + 32
                            mem[_931 + ceil32(return_data.size)] = _963
                            require _947 + (32 * _963) + 32 <= return_data.size
                            idx = 0
                            s = _931 + _947 + 32
                            t = _931 + ceil32(return_data.size) + 32
                            while idx < _963:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    else:
        if not address(arg4):
            mem[96] = 2
            if address(arg4):
                revert with 'NH{q', 50
            mem[128] = address(arg2)
            mem[160] = address(arg3)
            if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = arg6
                mem[228] = 128
                mem[324] = 2
                idx = 0
                s = 128
                t = 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[260] = this.address
                mem[292] = block.timestamp
                require ext_code.size(address(arg1))
                call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value arg5 wei
                     gas gas_remaining wei
                    args arg6, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _504 = mem[192 len 4], Mask(224, 32, arg6) >> 32
                require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
                _528 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
                require _504 + (32 * _528) + 32 <= return_data.size
                idx = 0
                s = _504 + 224
                t = ceil32(return_data.size) + 224
                while idx < _528:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if arg7:
                    _764 = mem[64]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg6
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 164
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[_764 + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                       value arg5 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _764 + -mem[64] + 224]
                    if ext_call.success:
                        _938 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _954 = mem[_938]
                        require mem[_938] <= test266151307()
                        require _938 + mem[_938] + 31 < _938 + return_data.size
                        _970 = mem[_938 + mem[_938]]
                        if mem[_938 + mem[_938]] > test266151307():
                            revert with 'NH{q', 65
                        if _938 + ceil32(return_data.size) + (32 * mem[_938 + mem[_938]]) + 32 > test266151307() or (32 * mem[_938 + mem[_938]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _938 + ceil32(return_data.size) + (32 * mem[_938 + mem[_938]]) + 32
                        mem[_938 + ceil32(return_data.size)] = _970
                        require _954 + (32 * _970) + 32 <= return_data.size
                        idx = 0
                        s = _938 + _954 + 32
                        t = _938 + ceil32(return_data.size) + 32
                        while idx < _970:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                if not arg7:
                    mem[196] = address(arg1)
                    mem[228] = arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg5
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg5
                    mem[ceil32(return_data.size) + 228] = arg6
                    mem[ceil32(return_data.size) + 260] = 160
                    mem[ceil32(return_data.size) + 356] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 292] = this.address
                    mem[ceil32(return_data.size) + 324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _502 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                    _526 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    require _502 + (32 * _526) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _502 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _526:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 and 2 > -1 / arg5:
                        revert with 'NH{q', 17
                    mem[196] = address(arg1)
                    mem[228] = 2 * arg5
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), 2 * arg5
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = arg5
                    mem[ceil32(return_data.size) + 228] = arg6
                    mem[ceil32(return_data.size) + 260] = 160
                    mem[ceil32(return_data.size) + 356] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 292] = this.address
                    mem[ceil32(return_data.size) + 324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg5, arg6, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _503 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
                    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
                    _527 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
                    require _503 + (32 * _527) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _503 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _527:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = arg6
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
                    if ext_call.success:
                        _937 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _953 = mem[_937]
                        require mem[_937] <= test266151307()
                        require _937 + mem[_937] + 31 < _937 + return_data.size
                        _969 = mem[_937 + mem[_937]]
                        if mem[_937 + mem[_937]] > test266151307():
                            revert with 'NH{q', 65
                        if _937 + ceil32(return_data.size) + (32 * mem[_937 + mem[_937]]) + 32 > test266151307() or (32 * mem[_937 + mem[_937]]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _937 + ceil32(return_data.size) + (32 * mem[_937 + mem[_937]]) + 32
                        mem[_937 + ceil32(return_data.size)] = _969
                        require _953 + (32 * _969) + 32 <= return_data.size
                        idx = 0
                        s = _937 + _953 + 32
                        t = _937 + ceil32(return_data.size) + 32
                        while idx < _969:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = address(arg2)
            if not address(arg4):
                mem[160] = address(arg3)
                if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = arg6
                    mem[260] = 128
                    mem[356] = 3
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _510 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                    _534 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    require _510 + (32 * _534) + 32 <= return_data.size
                    idx = 0
                    s = _510 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _534:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if arg7:
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg6
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 164
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg5 wei
                             gas gas_remaining wei
                            args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _942 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _958 = mem[_942]
                            require mem[_942] <= test266151307()
                            require _942 + mem[_942] + 31 < _942 + return_data.size
                            _974 = mem[_942 + mem[_942]]
                            if mem[_942 + mem[_942]] > test266151307():
                                revert with 'NH{q', 65
                            if _942 + ceil32(return_data.size) + (32 * mem[_942 + mem[_942]]) + 32 > test266151307() or (32 * mem[_942 + mem[_942]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _942 + ceil32(return_data.size) + (32 * mem[_942 + mem[_942]]) + 32
                            mem[_942 + ceil32(return_data.size)] = _974
                            require _958 + (32 * _974) + 32 <= return_data.size
                            idx = 0
                            s = _942 + _958 + 32
                            t = _942 + ceil32(return_data.size) + 32
                            while idx < _974:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if not arg7:
                        mem[228] = address(arg1)
                        mem[260] = arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _508 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _532 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _508 + (32 * _532) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _508 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _532:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if arg5 and 2 > -1 / arg5:
                            revert with 'NH{q', 17
                        mem[228] = address(arg1)
                        mem[260] = 2 * arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _509 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _533 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _509 + (32 * _533) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _509 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _533:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg5
                        mem[mem[64] + 36] = arg6
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _941 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _957 = mem[_941]
                            require mem[_941] <= test266151307()
                            require _941 + mem[_941] + 31 < _941 + return_data.size
                            _973 = mem[_941 + mem[_941]]
                            if mem[_941 + mem[_941]] > test266151307():
                                revert with 'NH{q', 65
                            if _941 + ceil32(return_data.size) + (32 * mem[_941 + mem[_941]]) + 32 > test266151307() or (32 * mem[_941 + mem[_941]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _941 + ceil32(return_data.size) + (32 * mem[_941 + mem[_941]]) + 32
                            mem[_941 + ceil32(return_data.size)] = _973
                            require _957 + (32 * _973) + 32 <= return_data.size
                            idx = 0
                            s = _941 + _957 + 32
                            t = _941 + ceil32(return_data.size) + 32
                            while idx < _973:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                mem[160] = address(arg4)
                mem[192] = address(arg3)
                if address(arg2) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = arg6
                    mem[260] = 128
                    mem[356] = 3
                    idx = 0
                    s = 128
                    t = 388
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg5 wei
                         gas gas_remaining wei
                        args arg6, Array(len=3, data=mem[388 len 96]), address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _507 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                    require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                    _531 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                        revert with 'NH{q', 65
                    mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                    require _507 + (32 * _531) + 32 <= return_data.size
                    idx = 0
                    s = _507 + 256
                    t = ceil32(return_data.size) + 256
                    while idx < _531:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if arg7:
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg6
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 164
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg5 wei
                             gas gas_remaining wei
                            args arg6, Array(len=3, data=mem[mem[64] + 164 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _940 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _956 = mem[_940]
                            require mem[_940] <= test266151307()
                            require _940 + mem[_940] + 31 < _940 + return_data.size
                            _972 = mem[_940 + mem[_940]]
                            if mem[_940 + mem[_940]] > test266151307():
                                revert with 'NH{q', 65
                            if _940 + ceil32(return_data.size) + (32 * mem[_940 + mem[_940]]) + 32 > test266151307() or (32 * mem[_940 + mem[_940]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _940 + ceil32(return_data.size) + (32 * mem[_940 + mem[_940]]) + 32
                            mem[_940 + ceil32(return_data.size)] = _972
                            require _956 + (32 * _972) + 32 <= return_data.size
                            idx = 0
                            s = _940 + _956 + 32
                            t = _940 + ceil32(return_data.size) + 32
                            while idx < _972:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    if not arg7:
                        mem[228] = address(arg1)
                        mem[260] = arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _505 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _529 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _505 + (32 * _529) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _505 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _529:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if arg5 and 2 > -1 / arg5:
                            revert with 'NH{q', 17
                        mem[228] = address(arg1)
                        mem[260] = 2 * arg5
                        require ext_code.size(address(arg2))
                        call address(arg2).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 2 * arg5
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = arg5
                        mem[ceil32(return_data.size) + 260] = arg6
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 3
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 420
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _506 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                        require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                        _530 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                            revert with 'NH{q', 65
                        if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                            revert with 'NH{q', 65
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256
                        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                        require _506 + (32 * _530) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _506 + 256
                        t = (2 * ceil32(return_data.size)) + 256
                        while idx < _530:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg5
                        mem[mem[64] + 36] = arg6
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 3
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp
                        require ext_code.size(address(arg1))
                        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg5, arg6, Array(len=3, data=mem[mem[64] + 196 len 96]), address(this.address), block.timestamp
                        if ext_call.success:
                            _939 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _955 = mem[_939]
                            require mem[_939] <= test266151307()
                            require _939 + mem[_939] + 31 < _939 + return_data.size
                            _971 = mem[_939 + mem[_939]]
                            if mem[_939 + mem[_939]] > test266151307():
                                revert with 'NH{q', 65
                            if _939 + ceil32(return_data.size) + (32 * mem[_939 + mem[_939]]) + 32 > test266151307() or (32 * mem[_939 + mem[_939]]) + 32 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _939 + ceil32(return_data.size) + (32 * mem[_939 + mem[_939]]) + 32
                            mem[_939 + ceil32(return_data.size)] = _971
                            require _955 + (32 * _971) + 32 <= return_data.size
                            idx = 0
                            s = _939 + _955 + 32
                            t = _939 + ceil32(return_data.size) + 32
                            while idx < _971:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
}



}
