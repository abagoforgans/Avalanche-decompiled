contract main {




// =====================  Runtime code  =====================


#
#  - sub_1e48ea06(?)
#  - registerPools(address[] arg1)
#  - sub_3de70a54(?)
#  - sub_641d4a85(?)
#  - sub_9dcb3e12(?)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
uint16 numPools;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function numPools() payable {
    if roleAdmin[address(msg.sender)].field_0:
        return numPools
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
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
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

function sub_1e8b1135(?) payable {
    if roleAdmin[address(msg.sender)].field_0:
        numPools = 0
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
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
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

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[address(msg.sender)].field_0:
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Error: 3'
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
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
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

function sub_df9aee68(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if stor1:
        revert with 0, 'b-b-baka'
    require ('cd', 100).length >= 224
    require ('cd', 100)[0] == address(('cd', 100)[0])
    require ('cd', 100)[1] == address(('cd', 100)[1])
    require ('cd', 100)[2] == address(('cd', 100)[2])
    require ('cd', 100)[3] == uint16(('cd', 100)[3])
    require ('cd', 100)[4] == ('cd', 100)[4]
    require ('cd', 100)[5] == ('cd', 100)[5]
    require ('cd', 100)[6] == ('cd', 100)[6]
    if not Mask(1, 2, ('cd', 100)[3]):
        staticcall address(('cd', 100)[0]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(('cd', 100)[0]).token1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(('cd', 100)[0]), ('cd', 100)[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(('cd', 100)[0]))
    if Mask(1, 2, ('cd', 100)[3]):
        call address(('cd', 100)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 100)[5], 0, address(('cd', 100)[1]), 128, 0
    else:
        call address(('cd', 100)[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 100)[5], address(('cd', 100)[1]), 128, 0
    if not address(('cd', 100)[2]):
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(('cd', 100)[1]))
        if Mask(1, 1, ('cd', 100)[3]):
            call address(('cd', 100)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ('cd', 100)[6], 0, address(('cd', 100)[2]), 128, 0
        else:
            call address(('cd', 100)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ('cd', 100)[6], address(('cd', 100)[2]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1:
        revert with 0, 'b-b-baka'
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == uint16(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == cd[(arg4 + 164)]
    require cd[(arg4 + 196)] == cd[(arg4 + 196)]
    require cd[(arg4 + 228)] == cd[(arg4 + 228)]
    if not Mask(1, 2, cd[(arg4 + 132)]):
        staticcall address(cd[(arg4 + 36)]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(cd[(arg4 + 36)]).token1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 164)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 36)]))
    if Mask(1, 2, cd[(arg4 + 132)]):
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 196)], 0, address(cd[(arg4 + 68)]), 128, 0
    else:
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(arg4 + 196)], address(cd[(arg4 + 68)]), 128, 0
    if not address(cd[(arg4 + 100)]):
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        if Mask(1, 1, cd[(arg4 + 132)]):
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 228)], 0, address(cd[(arg4 + 100)]), 128, 0
        else:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 228)], address(cd[(arg4 + 100)]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if stor1:
        revert with 0, 'b-b-baka'
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == uint16(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == cd[(arg4 + 164)]
    require cd[(arg4 + 196)] == cd[(arg4 + 196)]
    require cd[(arg4 + 228)] == cd[(arg4 + 228)]
    if not Mask(1, 2, cd[(arg4 + 132)]):
        staticcall address(cd[(arg4 + 36)]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(cd[(arg4 + 36)]).token1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 164)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 36)]))
    if Mask(1, 2, cd[(arg4 + 132)]):
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 196)], 0, address(cd[(arg4 + 68)]), 128, 0
    else:
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(arg4 + 196)], address(cd[(arg4 + 68)]), 128, 0
    if not address(cd[(arg4 + 100)]):
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        if Mask(1, 1, cd[(arg4 + 132)]):
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 228)], 0, address(cd[(arg4 + 100)]), 128, 0
        else:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 228)], address(cd[(arg4 + 100)]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if stor1:
        revert with 0, 'b-b-baka'
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == uint16(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == cd[(arg4 + 164)]
    require cd[(arg4 + 196)] == cd[(arg4 + 196)]
    require cd[(arg4 + 228)] == cd[(arg4 + 228)]
    if not Mask(1, 2, cd[(arg4 + 132)]):
        staticcall address(cd[(arg4 + 36)]).token0() with:
                gas gas_remaining wei
    else:
        staticcall address(cd[(arg4 + 36)]).token1() with:
                gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 164)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 36)]))
    if Mask(1, 2, cd[(arg4 + 132)]):
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 196)], 0, address(cd[(arg4 + 68)]), 128, 0
    else:
        call address(cd[(arg4 + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[(arg4 + 196)], address(cd[(arg4 + 68)]), 128, 0
    if not address(cd[(arg4 + 100)]):
    else:
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        if Mask(1, 1, cd[(arg4 + 132)]):
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 228)], 0, address(cd[(arg4 + 100)]), 128, 0
        else:
            call address(cd[(arg4 + 68)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 228)], address(cd[(arg4 + 100)]), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d7079f51(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if var364003 > 253:
        revert with 'NH{q', 17
    idx = var366002 + 2
    s = var366008
    t = var366010
    while uint8(idx) < ('cd', 4).length:
        require cd[((32 * uint8(idx)) + cd[4] + 36)] == address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        if uint8(s) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * uint8(s)) + cd[4] + 36)] == address(cd[((32 * uint8(s)) + cd[4] + 36)])
        if uint8(s) > 254:
            revert with 'NH{q', 17
        if uint8(uint8(s) + 1) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)] == address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)])
        if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
            if uint8(s) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 254:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 1) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 36).length:
                revert with 'NH{q', 50
            _4485 = mem[64]
            staticcall address(cd[((32 * uint8(s)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 160
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if Mask(1, 2, t):
                if 1 >= mem[_4485]:
                    revert with 'NH{q', 50
                if 0 >= mem[_4485]:
                    revert with 'NH{q', 50
                mem[_4485 + 32] = ext_call.return_data[50 len 14]
                mem[_4485 + 64] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4485 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4485 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 96] = ext_call.return_data[50 len 14]
                    mem[_4485 + 128] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * ext_call.return_data[50 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
                else:
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 128] = ext_call.return_data[50 len 14]
                    mem[_4485 + 96] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * ext_call.return_data[18 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
            else:
                if 0 >= mem[_4485]:
                    revert with 'NH{q', 50
                if 1 >= mem[_4485]:
                    revert with 'NH{q', 50
                mem[_4485 + 64] = ext_call.return_data[50 len 14]
                mem[_4485 + 32] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4485 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4485 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 96] = ext_call.return_data[50 len 14]
                    mem[_4485 + 128] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * ext_call.return_data[50 len 14] > (-1000 * ext_call.return_data[50 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
                else:
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 128] = ext_call.return_data[50 len 14]
                    mem[_4485 + 96] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * ext_call.return_data[50 len 14] > (-1000 * ext_call.return_data[18 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
        else:
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)] == address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)])
            if uint8(s) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 254:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 1) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 36).length:
                revert with 'NH{q', 50
            _4496 = mem[64]
            mem[mem[64] + 32 len 224] = call.data[calldata.size len 224]
            staticcall address(cd[((32 * uint8(s)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 256
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if Mask(1, 2, t):
                if 1 >= mem[_4496]:
                    revert with 'NH{q', 50
                if 0 >= mem[_4496]:
                    revert with 'NH{q', 50
                mem[_4496 + 32] = ext_call.return_data[50 len 14]
                mem[_4496 + 64] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4496 + ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4496 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 96] = ext_call.return_data[50 len 14]
                    mem[_4496 + 128] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                else:
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 128] = ext_call.return_data[50 len 14]
                    mem[_4496 + 96] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
            else:
                if 0 >= mem[_4496]:
                    revert with 'NH{q', 50
                if 1 >= mem[_4496]:
                    revert with 'NH{q', 50
                mem[_4496 + 64] = ext_call.return_data[50 len 14]
                mem[_4496 + 32] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4496 + ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4496 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 96] = ext_call.return_data[50 len 14]
                    mem[_4496 + 128] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                else:
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 128] = ext_call.return_data[50 len 14]
                    mem[_4496 + 96] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
    revert with 'NH{q', 50
}

function sub_d86ff631(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    if var363003 > 253:
        revert with 'NH{q', 17
    idx = var365002 + 2
    s = var365008
    t = var365010
    while uint8(idx) < ('cd', 4).length:
        require cd[((32 * uint8(idx)) + cd[4] + 36)] == address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        if uint8(s) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * uint8(s)) + cd[4] + 36)] == address(cd[((32 * uint8(s)) + cd[4] + 36)])
        if uint8(s) > 254:
            revert with 'NH{q', 17
        if uint8(uint8(s) + 1) >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)] == address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)])
        if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
            if uint8(s) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 254:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 1) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 36).length:
                revert with 'NH{q', 50
            _4485 = mem[64]
            staticcall address(cd[((32 * uint8(s)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 160
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if Mask(1, 2, t):
                if 1 >= mem[_4485]:
                    revert with 'NH{q', 50
                if 0 >= mem[_4485]:
                    revert with 'NH{q', 50
                mem[_4485 + 32] = ext_call.return_data[50 len 14]
                mem[_4485 + 64] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4485 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4485 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 96] = ext_call.return_data[50 len 14]
                    mem[_4485 + 128] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * ext_call.return_data[50 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
                else:
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 128] = ext_call.return_data[50 len 14]
                    mem[_4485 + 96] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * Mask(112, 0, ext_call.return_data[0]) > (-1000 * ext_call.return_data[18 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
            else:
                if 0 >= mem[_4485]:
                    revert with 'NH{q', 50
                if 1 >= mem[_4485]:
                    revert with 'NH{q', 50
                mem[_4485 + 64] = ext_call.return_data[50 len 14]
                mem[_4485 + 32] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4485 + ceil32(return_data.size) + 160 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4485 + (2 * ceil32(return_data.size)) + 160
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 96] = ext_call.return_data[50 len 14]
                    mem[_4485 + 128] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * ext_call.return_data[50 len 14] > (-1000 * ext_call.return_data[50 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
                else:
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    mem[_4485 + 128] = ext_call.return_data[50 len 14]
                    mem[_4485 + 96] = ext_call.return_data[18 len 14]
                    if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                        revert with 'NH{q', 17
                    if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                        revert with 'NH{q', 18
                    if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                        if uint8(s) > 252:
                            revert with 'NH{q', 17
                        if uint8(uint8(s) + 3) >= ('cd', 4).length:
                        if uint8(uint8(s) + 3) > 253:
                            revert with 'NH{q', 17
                        idx = uint8(uint8(s) + 3) + 2
                        s = uint8(s) + 3
                        t = Mask(253, 0, t) * 0.125
                        continue 
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 0 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 3 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                        revert with 'NH{q', 17
                    if 2 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if 1 >= mem[_4485]:
                        revert with 'NH{q', 50
                    if ext_call.return_data[50 len 14] > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                        revert with 'NH{q', 17
                    if 997 * ext_call.return_data[50 len 14] > (-1000 * ext_call.return_data[18 len 14]) - 1:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                        revert with 'NH{q', 17
                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not var314002:
                        revert with 'NH{q', 18
                    # nil
        else:
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)] == address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)])
            if uint8(s) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 254:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 1) >= ('cd', 36).length:
                revert with 'NH{q', 50
            if uint8(s) > 253:
                revert with 'NH{q', 17
            if uint8(uint8(s) + 2) >= ('cd', 36).length:
                revert with 'NH{q', 50
            _4496 = mem[64]
            mem[mem[64] + 32 len 224] = call.data[calldata.size len 224]
            staticcall address(cd[((32 * uint8(s)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 256 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 256
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if Mask(1, 2, t):
                if 1 >= mem[_4496]:
                    revert with 'NH{q', 50
                if 0 >= mem[_4496]:
                    revert with 'NH{q', 50
                mem[_4496 + 32] = ext_call.return_data[50 len 14]
                mem[_4496 + 64] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4496 + ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4496 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 96] = ext_call.return_data[50 len 14]
                    mem[_4496 + 128] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0])) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                else:
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 128] = ext_call.return_data[50 len 14]
                    mem[_4496 + 96] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * ext_call.return_data[50 len 14]) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 997000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 994009 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > (-997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) + (997000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
            else:
                if 0 >= mem[_4496]:
                    revert with 'NH{q', 50
                if 1 >= mem[_4496]:
                    revert with 'NH{q', 50
                mem[_4496 + 64] = ext_call.return_data[50 len 14]
                mem[_4496 + 32] = ext_call.return_data[18 len 14]
                staticcall address(cd[((32 * uint8(uint8(s) + 1)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[_4496 + ceil32(return_data.size) + 256 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _4496 + (2 * ceil32(return_data.size)) + 256
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if Mask(1, 1, t):
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 96] = ext_call.return_data[50 len 14]
                    mem[_4496 + 128] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 10^6 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and Mask(112, 0, ext_call.return_data[0]) > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) > (-1 * 10^6 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                else:
                    if 2 >= mem[_4496]:
                        revert with 'NH{q', 50
                    if 3 >= mem[_4496]:
                        revert with 'NH{q', 50
                    mem[_4496 + 128] = ext_call.return_data[50 len 14]
                    mem[_4496 + 96] = ext_call.return_data[18 len 14]
                    staticcall address(cd[((32 * uint8(uint8(s) + 2)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[_4496 + (2 * ceil32(return_data.size)) + 256 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4496 + (4 * ceil32(return_data.size)) + 256
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    if bool(t):
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 160] = ext_call.return_data[50 len 14]
                        mem[_4496 + 192] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[50 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[18 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[50 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                    else:
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        mem[_4496 + 192] = ext_call.return_data[50 len 14]
                        mem[_4496 + 160] = ext_call.return_data[18 len 14]
                        if cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[((32 * uint8(s)) + cd[36] + 36)]) - 1:
                            revert with 'NH{q', 17
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and cd[((32 * uint8(s)) + cd[36] + 36)] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] and 997 > -1 / ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)]:
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) - 1:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]):
                            revert with 'NH{q', 17
                        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[18 len 14] > (-997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) - 1:
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) and 997 > -1 / ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])):
                            revert with 'NH{q', 17
                        if not (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))):
                            revert with 'NH{q', 18
                        if 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)])) / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * ext_call.return_data[50 len 14] * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[50 len 14] * cd[((32 * uint8(s)) + cd[36] + 36)] / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[((32 * uint8(s)) + cd[36] + 36)]))) <= cd[((32 * uint8(s)) + cd[36] + 36)]:
                            if uint8(s) > 252:
                                revert with 'NH{q', 17
                            if uint8(uint8(s) + 3) >= ('cd', 4).length:
                            if uint8(uint8(s) + 3) > 253:
                                revert with 'NH{q', 17
                            idx = uint8(uint8(s) + 3) + 2
                            s = uint8(s) + 3
                            t = Mask(253, 0, t) * 0.125
                            continue 
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[0]) > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 5 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 2 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, ext_call.return_data[0]) > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                            revert with 'NH{q', 17
                        if 10^6 * Mask(112, 0, ext_call.return_data[0]) and ext_call.return_data[18 len 14] > -1 / 10^6 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if 4 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10d3e41689cc1dafcf4242d8b7df4803452d9361476ac4ea87207d9dbba4:
                            revert with 'NH{q', 17
                        if 997000 * ext_call.return_data[50 len 14] and ext_call.return_data[18 len 14] > -1 / 997000 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 3 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_4496]:
                            revert with 'NH{q', 50
                        if ext_call.return_data[50 len 14] > 0x10e0da80e8b41488484ec914f0ea3956378545822e77edd253aa795f4c82:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] > -1 / 994009 * ext_call.return_data[50 len 14]:
                            revert with 'NH{q', 17
                        if 994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] > (-997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if (994009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (997000 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) > (-1 * 10^6 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]) - 1:
                            revert with 'NH{q', 17
                        if not Mask(21, 235, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                            if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                    revert with 'NH{q', 17
                                if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                    revert with 'NH{q', 17
                                if not var466002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                        else:
                            if Mask(21, 235, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                if not var455002:
                                    revert with 'NH{q', 18
                                # nil
                            else:
                                if not Mask(68, 188, Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]):
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                        revert with 'NH{q', 17
                                    if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                        revert with 'NH{q', 17
                                    if not var467002:
                                        revert with 'NH{q', 18
                                    # nil
                                else:
                                    if not Mask(68, 188, ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 100000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffffac1d29dc725c3dee78183f91e646f156191148fd9fd36f7e3d1cc100e6b0:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
                                    else:
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] > 0) and 1000 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14]:
                                            revert with 'NH{q', 17
                                        if bool(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0) and Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[18 len 14] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                                            revert with 'NH{q', 17
                                        if not var468002:
                                            revert with 'NH{q', 18
                                        # nil
    revert with 'NH{q', 50
}



}
