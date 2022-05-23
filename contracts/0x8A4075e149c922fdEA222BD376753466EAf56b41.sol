contract main {




// =====================  Runtime code  =====================


#
#  - sub_80819af4(?)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address stor1;

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

function sub_89519af6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e, 0)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            require mem[_23] == mem[_23]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _24
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _24
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        selfdestruct(msg.sender)
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
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
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

function sub_7fb074cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        stor1 = address(arg1)
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
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
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

function sub_83d3e920(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        call address(arg1) with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send eth'
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
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
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

function sub_645c126c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not address(arg2):
            revert with 0, 'to shouldn't be zero'
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
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

function sub_5c16daba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d][address(msg.sender)].field_0:
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
            s = 0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg2):
        if ext_call.return_data[12 len 20] != address(arg2):
            revert with 0, 'ns0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] < ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x969cdd03 with:
            gas gas_remaining wei
           args 0, 96, Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 2, '%d', 0
    if address(ext_call.return_data[0]) == address(arg2):
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'ns2'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 424] = 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 456] = this.address
            mem[(8 * ceil32(return_data.size)) + 488] = 128
            mem[(8 * ceil32(return_data.size)) + 520] = 0
            mem[(8 * ceil32(return_data.size)) + 552 len 0] = None
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 424] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 456] = this.address
            mem[(8 * ceil32(return_data.size)) + 488] = 128
            mem[(8 * ceil32(return_data.size)) + 520] = 0
            mem[(8 * ceil32(return_data.size)) + 552 len 0] = None
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    else:
        if Mask(144, 112, ext_call.return_data[0]) <= 0:
            revert with 0, 'ns1'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(144, 112, ext_call.return_data[0]) and 997 > -1 / Mask(144, 112, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 424] = 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 456] = this.address
            mem[(8 * ceil32(return_data.size)) + 488] = 128
            mem[(8 * ceil32(return_data.size)) + 520] = 0
            mem[(8 * ceil32(return_data.size)) + 552 len 0] = None
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 424] = (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 456] = this.address
            mem[(8 * ceil32(return_data.size)) + 488] = 128
            mem[(8 * ceil32(return_data.size)) + 520] = 0
            mem[(8 * ceil32(return_data.size)) + 552 len 0] = None
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 392] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    return 0, mem[(10 * ceil32(return_data.size)) + 420 len 17 * ceil32(return_data.size)]
}

function sub_10051b33(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d, 0)
    if roleAdmin[0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _70 = mem[_68]
            require mem[_68] == mem[_68 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_75]
            require mem[_75] == mem[_75 + 12 len 20]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_70))
            staticcall address(_70).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _81 = mem[_80]
            require mem[_80] == mem[_80]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_76))
            staticcall address(_76).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _85 = mem[_84]
            require mem[_84] == mem[_84]
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _88 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _89 = mem[_88]
            require mem[_88] == mem[_88 + 18 len 14]
            _90 = mem[_88 + 32]
            require mem[_88 + 32] == mem[_88 + 50 len 14]
            require mem[_88 + 64] == mem[_88 + 92 len 4]
            if _81 >= mem[_88 + 18 len 14]:
                if _85 >= mem[_88 + 50 len 14]:
                    _92 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_92] = 2
                    mem[_92 + 32] = '%d'
                    _93 = mem[64]
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 2
                    s = 0
                    while s < 2:
                        mem[mem[64] + s + 164] = mem[_92 + s + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 166] = 0
                    mem[mem[64] + 68] = _81 - Mask(112, 0, _89)
                    mem[mem[64] + 100] = _85 - Mask(112, 0, _90)
                    _141 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_141 + 32] = mem[_141 + 36 len 28] or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.mem[_141 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_141 + 36 len mem[_141] - 4]
                    if address(_70) == stor1:
                        if _85 - Mask(112, 0, _90) <= 0:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if Mask(112, 0, _90) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _89) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if not _85 - Mask(112, 0, _90) or 997 <= -1 / _85 - Mask(112, 0, _90):
                            if (997 * _85) - (997 * Mask(112, 0, _90)) / 997 != _85 - Mask(112, 0, _90):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, _89):
                                if not Mask(112, 0, _90) or 1000 <= -1 / Mask(112, 0, _90):
                                    if 1000 * Mask(112, 0, _90) / 1000 != Mask(112, 0, _90):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, _90) <= (-997 * _85) + (997 * Mask(112, 0, _90)) - 1:
                                        if (3 * Mask(112, 0, _90)) + (997 * _85) < 1000 * Mask(112, 0, _90):
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (3 * Mask(112, 0, _90)) + (997 * _85):
                                            revert with 'NH{q', 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[_93 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_93 + ceil32(return_data.size) + 232] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_93 + ceil32(return_data.size) + s + 392] = mem[_93 + ceil32(return_data.size) + s + 228]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, _90)) + (997 * _85), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if not (997 * _85) - (997 * Mask(112, 0, _90)) or Mask(112, 0, _89) <= -1 / (997 * _85) - (997 * Mask(112, 0, _90)):
                                    if not Mask(112, 0, _89):
                                        revert with 'NH{q', 18
                                    if (997 * _85 * Mask(112, 0, _89)) - (997 * Mask(112, 0, _90) * Mask(112, 0, _89)) / Mask(112, 0, _89) != (997 * _85) - (997 * Mask(112, 0, _90)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not Mask(112, 0, _90) or 1000 <= -1 / Mask(112, 0, _90):
                                        if 1000 * Mask(112, 0, _90) / 1000 != Mask(112, 0, _90):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * Mask(112, 0, _90) <= (-997 * _85) + (997 * Mask(112, 0, _90)) - 1:
                                            if (3 * Mask(112, 0, _90)) + (997 * _85) < 1000 * Mask(112, 0, _90):
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (3 * Mask(112, 0, _90)) + (997 * _85):
                                                revert with 'NH{q', 18
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[_93 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_93 + ceil32(return_data.size) + 232] = 0
                                            s = 0
                                            while s < 0:
                                                mem[_93 + ceil32(return_data.size) + s + 392] = mem[_93 + ceil32(return_data.size) + s + 228]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * _85 * Mask(112, 0, _89)) - (997 * Mask(112, 0, _90) * Mask(112, 0, _89)) / (3 * Mask(112, 0, _90)) + (997 * _85), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if _81 - Mask(112, 0, _89) <= 0:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if Mask(112, 0, _89) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _90) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if not _81 - Mask(112, 0, _89) or 997 <= -1 / _81 - Mask(112, 0, _89):
                            if (997 * _81) - (997 * Mask(112, 0, _89)) / 997 != _81 - Mask(112, 0, _89):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, _90):
                                if not Mask(112, 0, _89) or 1000 <= -1 / Mask(112, 0, _89):
                                    if 1000 * Mask(112, 0, _89) / 1000 != Mask(112, 0, _89):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, _89) <= (-997 * _81) + (997 * Mask(112, 0, _89)) - 1:
                                        if (3 * Mask(112, 0, _89)) + (997 * _81) < 1000 * Mask(112, 0, _89):
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (3 * Mask(112, 0, _89)) + (997 * _81):
                                            revert with 'NH{q', 18
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[_93 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_93 + ceil32(return_data.size) + 232] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_93 + ceil32(return_data.size) + s + 392] = mem[_93 + ceil32(return_data.size) + s + 228]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, _89)) + (997 * _81), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(stor1)
                                        staticcall stor1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if not (997 * _81) - (997 * Mask(112, 0, _89)) or Mask(112, 0, _90) <= -1 / (997 * _81) - (997 * Mask(112, 0, _89)):
                                    if not Mask(112, 0, _90):
                                        revert with 'NH{q', 18
                                    if (997 * _81 * Mask(112, 0, _90)) - (997 * Mask(112, 0, _89) * Mask(112, 0, _90)) / Mask(112, 0, _90) != (997 * _81) - (997 * Mask(112, 0, _89)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not Mask(112, 0, _89) or 1000 <= -1 / Mask(112, 0, _89):
                                        if 1000 * Mask(112, 0, _89) / 1000 != Mask(112, 0, _89):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * Mask(112, 0, _89) <= (-997 * _81) + (997 * Mask(112, 0, _89)) - 1:
                                            if (3 * Mask(112, 0, _89)) + (997 * _81) < 1000 * Mask(112, 0, _89):
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (3 * Mask(112, 0, _89)) + (997 * _81):
                                                revert with 'NH{q', 18
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[_93 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_93 + ceil32(return_data.size) + 232] = 0
                                            s = 0
                                            while s < 0:
                                                mem[_93 + ceil32(return_data.size) + s + 392] = mem[_93 + ceil32(return_data.size) + s + 228]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * _81 * Mask(112, 0, _90)) - (997 * Mask(112, 0, _89) * Mask(112, 0, _90)) / (3 * Mask(112, 0, _89)) + (997 * _81), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
            revert with 'NH{q', 17
        return 0
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
        s = 0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d
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

function sub_60d28883(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d, 0)
    if roleAdmin[0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _284 = mem[_282]
            require mem[_282] == mem[_282 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _300 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_300]
            require mem[_300] == mem[_300 + 12 len 20]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_284))
            staticcall address(_284).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _318 = mem[_317]
            require mem[_317] == mem[_317]
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_302))
            staticcall address(_302).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _322 = mem[_321]
            require mem[_321] == mem[_321]
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _326 = mem[_325]
            require mem[_325] == mem[_325 + 18 len 14]
            _327 = mem[_325 + 32]
            require mem[_325 + 32] == mem[_325 + 50 len 14]
            require mem[_325 + 64] == mem[_325 + 92 len 4]
            if _318 >= mem[_325 + 18 len 14]:
                if _322 >= mem[_325 + 50 len 14]:
                    _329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_329] = 2
                    mem[_329 + 32] = '%d'
                    _330 = mem[64]
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 2
                    s = 0
                    while s < 2:
                        mem[mem[64] + s + 164] = mem[_329 + s + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 166] = 0
                    mem[mem[64] + 68] = _318 - Mask(112, 0, _326)
                    mem[mem[64] + 100] = _322 - Mask(112, 0, _327)
                    _370 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_370 + 32] = mem[_370 + 36 len 28] or 0x969cdd0300000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.mem[_370 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_370 + 36 len mem[_370] - 4]
                    if address(_284) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if _322 - Mask(112, 0, _327) <= 0:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if Mask(112, 0, _327) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _326) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if not _322 - Mask(112, 0, _327) or 997 <= -1 / _322 - Mask(112, 0, _327):
                            if (997 * _322) - (997 * Mask(112, 0, _327)) / 997 != _322 - Mask(112, 0, _327):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, _326):
                                if not Mask(112, 0, _327) or 1000 <= -1 / Mask(112, 0, _327):
                                    if 1000 * Mask(112, 0, _327) / 1000 != Mask(112, 0, _327):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, _327) <= (-997 * _322) + (997 * Mask(112, 0, _327)) - 1:
                                        if (3 * Mask(112, 0, _327)) + (997 * _322) < 1000 * Mask(112, 0, _327):
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (3 * Mask(112, 0, _327)) + (997 * _322):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[_330 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_330 + ceil32(return_data.size) + 232] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_330 + ceil32(return_data.size) + s + 392] = mem[_330 + ceil32(return_data.size) + s + 228]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, _327)) + (997 * _322), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if not (997 * _322) - (997 * Mask(112, 0, _327)) or Mask(112, 0, _326) <= -1 / (997 * _322) - (997 * Mask(112, 0, _327)):
                                    if not Mask(112, 0, _326):
                                        revert with 'NH{q', 18
                                    if (997 * _322 * Mask(112, 0, _326)) - (997 * Mask(112, 0, _327) * Mask(112, 0, _326)) / Mask(112, 0, _326) != (997 * _322) - (997 * Mask(112, 0, _327)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not Mask(112, 0, _327) or 1000 <= -1 / Mask(112, 0, _327):
                                        if 1000 * Mask(112, 0, _327) / 1000 != Mask(112, 0, _327):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * Mask(112, 0, _327) <= (-997 * _322) + (997 * Mask(112, 0, _327)) - 1:
                                            if (3 * Mask(112, 0, _327)) + (997 * _322) < 1000 * Mask(112, 0, _327):
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (3 * Mask(112, 0, _327)) + (997 * _322):
                                                revert with 'NH{q', 18
                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[_330 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_330 + ceil32(return_data.size) + 232] = 0
                                            s = 0
                                            while s < 0:
                                                mem[_330 + ceil32(return_data.size) + s + 392] = mem[_330 + ceil32(return_data.size) + s + 228]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * _322 * Mask(112, 0, _326)) - (997 * Mask(112, 0, _327) * Mask(112, 0, _326)) / (3 * Mask(112, 0, _327)) + (997 * _322), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if _318 - Mask(112, 0, _326) <= 0:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if Mask(112, 0, _326) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if Mask(112, 0, _327) <= 0:
                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                        if not _318 - Mask(112, 0, _326) or 997 <= -1 / _318 - Mask(112, 0, _326):
                            if (997 * _318) - (997 * Mask(112, 0, _326)) / 997 != _318 - Mask(112, 0, _326):
                                revert with 0, 'ds-math-mul-overflow'
                            if not Mask(112, 0, _327):
                                if not Mask(112, 0, _326) or 1000 <= -1 / Mask(112, 0, _326):
                                    if 1000 * Mask(112, 0, _326) / 1000 != Mask(112, 0, _326):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 1000 * Mask(112, 0, _326) <= (-997 * _318) + (997 * Mask(112, 0, _326)) - 1:
                                        if (3 * Mask(112, 0, _326)) + (997 * _318) < 1000 * Mask(112, 0, _326):
                                            revert with 0, 'ds-math-add-overflow'
                                        if not (3 * Mask(112, 0, _326)) + (997 * _318):
                                            revert with 'NH{q', 18
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                                        mem[_330 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_330 + ceil32(return_data.size) + 232] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_330 + ceil32(return_data.size) + s + 392] = mem[_330 + ceil32(return_data.size) + s + 228]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                        call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (3 * Mask(112, 0, _326)) + (997 * _318), address(this.address), 128, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if not (997 * _318) - (997 * Mask(112, 0, _326)) or Mask(112, 0, _327) <= -1 / (997 * _318) - (997 * Mask(112, 0, _326)):
                                    if not Mask(112, 0, _327):
                                        revert with 'NH{q', 18
                                    if (997 * _318 * Mask(112, 0, _327)) - (997 * Mask(112, 0, _326) * Mask(112, 0, _327)) / Mask(112, 0, _327) != (997 * _318) - (997 * Mask(112, 0, _326)):
                                        revert with 0, 'ds-math-mul-overflow'
                                    if not Mask(112, 0, _326) or 1000 <= -1 / Mask(112, 0, _326):
                                        if 1000 * Mask(112, 0, _326) / 1000 != Mask(112, 0, _326):
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 1000 * Mask(112, 0, _326) <= (-997 * _318) + (997 * Mask(112, 0, _326)) - 1:
                                            if (3 * Mask(112, 0, _326)) + (997 * _318) < 1000 * Mask(112, 0, _326):
                                                revert with 0, 'ds-math-add-overflow'
                                            if not (3 * Mask(112, 0, _326)) + (997 * _318):
                                                revert with 'NH{q', 18
                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
                                            mem[_330 + ceil32(return_data.size) + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_330 + ceil32(return_data.size) + 232] = 0
                                            s = 0
                                            while s < 0:
                                                mem[_330 + ceil32(return_data.size) + s + 392] = mem[_330 + ceil32(return_data.size) + s + 228]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args 0, (997 * _318 * Mask(112, 0, _327)) - (997 * Mask(112, 0, _326) * Mask(112, 0, _327)) / (3 * Mask(112, 0, _326)) + (997 * _318), address(this.address), 128, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[0]
            revert with 'NH{q', 17
        return 0
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
        s = 0x4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf5d
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



}
