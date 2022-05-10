contract main {




// =====================  Runtime code  =====================


const sub_b7fd9684(?) = 0xff3317e1e0e8c784290b957ee9b65ea8fe96420c4819db463283b95ecbe4a3fe

const DEFAULT_ADMIN_ROLE = 0

const TRADER_ROLE = 0xfacaf2747a7486cf5730e9265973fb54447d3ace6e7e4711f6360826b0731941


mapping of struct roleAdmin;
address stor1;
address stor2;
address stor3;
address stor4;

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

function cashOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0xff3317e1e0e8c784290b957ee9b65ea8fe96420c4819db463283b95ecbe4a3fe][address(msg.sender)].field_0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return arg2
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
    s = 0xff3317e1e0e8c784290b957ee9b65ea8fe96420c4819db463283b95ecbe4a3fe
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
}

function sub_ffd65334(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    mem[0] = msg.sender
    mem[32] = sha3(0xfacaf2747a7486cf5730e9265973fb54447d3ace6e7e4711f6360826b0731941, 0)
    if not roleAdmin[0xfacaf2747a7486cf5730e9265973fb54447d3ace6e7e4711f6360826b0731941][address(msg.sender)].field_0:
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
        s = 0xfacaf2747a7486cf5730e9265973fb54447d3ace6e7e4711f6360826b0731941
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
    if ('cd', 36).length <= 0:
        revert with 0, 'Steps can not be empty'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] < calldata.size + -cd[36] - 99
    require cd[(cd[36] + ('cd', 36)[0] + 68)] < calldata.size + -cd[36] + -('cd', 36)[0] - 67
    require cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 36)] <= test266151307()
    require cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 36)])
    if 0 >= cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 36)]:
        revert with 'NH{q', 50
    require cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68)] == address(cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68)])
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] < calldata.size + -cd[36] - 99
    require cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] - 67
    require cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] <= test266151307()
    require cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)])
    require cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] - 67
    require cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] <= test266151307()
    require cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)])
    if cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] < 1:
        revert with 'NH{q', 17
    if cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] - 1 >= cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)]:
        revert with 'NH{q', 50
    require cd[((32 * cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] - 1) + cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 68)] == address(cd[((32 * cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] - 1) + cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 68)])
    if address(cd[((32 * cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 36)] - 1) + cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * ('cd', 36).length - 1) + 36)] + 68)] + 68)]) != address(cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start and end coins need to be the same'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(address(cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68)]))
    call address(cd[(cd[36] + ('cd', 36)[0] + cd[(cd[36] + ('cd', 36)[0] + 68)] + 68)]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] < 2
        if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] > 1:
            revert with 'NH{q', 33
        if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] == 1:
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * idx) + 36)] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)])
            if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]:
                revert with 'NH{q', 50
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)])
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = s
            require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]))
            call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == bool(mem[_101])
            if not mem[_101]:
                revert with 0, 'approve failed.'
            _113 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]
            s = 0
            t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68
            u = mem[64] + 196
            while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_113 + 100] = this.address
            mem[_113 + 132] = cd[68]
            require ext_code.size(stor2)
            call stor2.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len u + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _155 = mem[_152]
            require mem[_152] <= test266151307()
            require _152 + mem[_152] + 31 < _152 + return_data.size
            _158 = mem[_152 + mem[_152]]
            if mem[_152 + mem[_152]] > test266151307():
                revert with 'NH{q', 65
            if _152 + ceil32(return_data.size) + (32 * mem[_152 + mem[_152]]) + 32 > test266151307() or (32 * mem[_152 + mem[_152]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _152 + ceil32(return_data.size) + (32 * mem[_152 + mem[_152]]) + 32
            mem[_152 + ceil32(return_data.size)] = _158
            require _155 + (32 * _158) + 32 <= return_data.size
            s = 0
            t = _152 + _155 + 32
            u = _152 + ceil32(return_data.size) + 32
            while s < _158:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 4] = stor1
            mem[mem[64] + 36] = 0
            require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]))
            call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor1, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == bool(mem[_226])
            if _158 < 1:
                revert with 'NH{q', 17
            if _158 - 1 >= _158:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[(32 * _158 - 1) + _152 + ceil32(return_data.size) + 32]
            continue 
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] < 2
        if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] > 1:
            revert with 'NH{q', 33
        if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 'No valid exchange'
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] < calldata.size + -cd[36] + -cd[(cd[36] + (32 * idx) + 36)] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)])
        if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]:
            revert with 'NH{q', 50
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)])
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = s
        require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]))
        call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_112] == bool(mem[_112])
        if not mem[_112]:
            revert with 0, 'approve failed.'
        _117 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]
        s = 0
        t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68
        u = mem[64] + 196
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_117 + 100] = this.address
        mem[_117 + 132] = cd[68]
        require ext_code.size(stor4)
        call stor4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _154 = mem[_151]
        require mem[_151] <= test266151307()
        require _151 + mem[_151] + 31 < _151 + return_data.size
        _157 = mem[_151 + mem[_151]]
        if mem[_151 + mem[_151]] > test266151307():
            revert with 'NH{q', 65
        if _151 + ceil32(return_data.size) + (32 * mem[_151 + mem[_151]]) + 32 > test266151307() or (32 * mem[_151 + mem[_151]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _151 + ceil32(return_data.size) + (32 * mem[_151 + mem[_151]]) + 32
        mem[_151 + ceil32(return_data.size)] = _157
        require _154 + (32 * _157) + 32 <= return_data.size
        s = 0
        t = _151 + _154 + 32
        u = _151 + ceil32(return_data.size) + 32
        while s < _157:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = 0
        require ext_code.size(address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]))
        call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_225] == bool(mem[_225])
        if _157 < 1:
            revert with 'NH{q', 17
        if _157 - 1 >= _157:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * _157 - 1) + _151 + ceil32(return_data.size) + 32]
        continue 
    if s < cd[4]:
        revert with 'NH{q', 17
    if s - cd[4] <= 0:
        revert with 0, 'End balance must exceed Start balance.'
    return (s - cd[4])
}



}
