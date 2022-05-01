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

function sub_ebd270b4(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
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
            _132 = mem[192 len 4], Mask(224, 32, arg6) >> 32
            require mem[192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
            require mem[192 len 4], Mask(224, 32, arg6) >> 32 + 223 < return_data.size + 192
            _140 = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
            if mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224 > test266151307() or (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg6) >> 32 + 192]
            require _132 + (32 * _140) + 32 <= return_data.size
            idx = 0
            s = _132 + 224
            t = ceil32(return_data.size) + 224
            while idx < _140:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
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
            _131 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
            _139 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 224 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 32 < 0:
                revert with 'NH{q', 65
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
                _136 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                _144 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                require _136 + (32 * _144) + 32 <= return_data.size
                idx = 0
                s = _136 + 256
                t = ceil32(return_data.size) + 256
                while idx < _144:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
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
                _135 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _143 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
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
                _134 = mem[224 len 4], Mask(224, 32, arg6) >> 32
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg6) >> 32 + 255 < return_data.size + 224
                _142 = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256 > test266151307() or (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg6) >> 32 + 224]
                require _134 + (32 * _142) + 32 <= return_data.size
                idx = 0
                s = _134 + 256
                t = ceil32(return_data.size) + 256
                while idx < _142:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
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
                _133 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32
                require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
                _141 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 256 > test266151307() or (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg5) >> 32 + 224]) + 32 < 0:
                    revert with 'NH{q', 65
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
}

function sub_ec052482(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
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
        mem[96] = 3
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



}
