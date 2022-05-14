contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const SWAPPER_ROLE = 0x724f6a44d576143e18c60911798b2b15551ca96bd8f7cb7524b8fa36253a26d8


mapping of struct roleAdmin;
array of address stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
mapping of struct sub_f9468713;
mapping of address stor99;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(roleAdmin[arg1].field_256)
}

function routerAddress() payable {
    return address(stor3.length)
}

function usdc() payable {
    return stor2.length
}

function routerContract() payable {
    return address(stor5.length)
}

function owner() payable {
    return stor1.length
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_f9468713(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_f9468713[arg1[all]].field_0, 
           sub_f9468713[arg1[all]].field_256,
           sub_f9468713[arg1[all]].field_512,
           uint256(sub_f9468713[arg1[all]].field_768),
           uint256(sub_f9468713[arg1[all]].field_1024),
           uint256(sub_f9468713[arg1[all]].field_1280)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if stor1.length != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length = 0
    emit OwnershipTransferred(stor1.length, 0);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1.length != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    stor1.length = arg1
    emit OwnershipTransferred(stor1.length, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_833d438c(?) payable {
    require ext_code.size(address(stor4.length))
    staticcall address(stor4.length).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function emergencyWithdrawFunds() payable {
    if stor1.length != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2.length)
    staticcall stor2.length.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2.length)
    call stor2.length.0xa9059cbb with:
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
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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

function sub_ca21f970(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg2 == address(arg2)
    require arg3 == arg3
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 0
    mem[0] = msg.sender
    mem[32] = sha3(0x724f6a44d576143e18c60911798b2b15551ca96bd8f7cb7524b8fa36253a26d8, 0)
    if not uint8(roleAdmin[0x724f6a44d576143e18c60911798b2b15551ca96bd8f7cb7524b8fa36253a26d8][address(msg.sender)].field_0):
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg1.length)) + 321 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x724f6a44d576143e18c60911798b2b15551ca96bd8f7cb7524b8fa36253a26d8
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + ceil32(ceil32(arg1.length)) + 417 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 289 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 289] = 6
    if uint256(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]):
        revert with 0, 'Payment already exists'
    mem[ceil32(ceil32(arg1.length)) + 289] = 2
    mem[ceil32(ceil32(arg1.length)) + 321] = stor2.length
    require ext_code.size(address(stor5.length))
    staticcall address(stor5.length).0x73b295c2 with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 385] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg1.length)) + 353] = ext_call.return_data[12 len 20]
    require ext_code.size(address(stor4.length))
    staticcall address(stor4.length).latestRoundData() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 385 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 385] = stor2.length
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 417] = mem[ceil32(ceil32(arg1.length)) + 365 len 20]
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 449] = address(arg2)
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481] = arg3
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513] = arg3 / ext_call.return_data[32]
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545] = block.timestamp
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + arg1.length + 577] = 6
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 6)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256] = stor2.length
    stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 429 len 20]
    stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))] = uint64(arg2) << 96
    uint256(stor3[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]) = arg3
    uint256(stor4[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]) = arg3 / ext_call.return_data[32]
    uint256(stor5[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', ('mul', 8, ('add', ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))))), ('add', 256, ('mul', -1, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))))))))), ('add', -256, ('mul', 8, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', -1, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))))), 0))), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 6))]) = block.timestamp
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 581] = arg3
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 613] = arg3 / ext_call.return_data[32]
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 645] = 160
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 741] = 2
    idx = 0
    s = ceil32(ceil32(arg1.length)) + 321
    t = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 677] = address(arg2)
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 709] = block.timestamp
    require ext_code.size(address(stor5.length))
    call address(stor5.length).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg3 / ext_call.return_data[32], Array(len=2, data=mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 773 len 64]), address(arg2), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577
    require return_data.size >= 32
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg1.length) <= arg1.length:
            _443 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 608 < ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + return_data.size + 577
            _449 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]
            if mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = _449
            require _443 + (32 * _449) + 32 <= return_data.size
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + _443 + 609
            t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
            while idx < _449:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _444 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 608 < ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + return_data.size + 577
            _450 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]
            if mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = _450
            require _444 + (32 * _450) + 32 <= return_data.size
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + _444 + 609
            t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
            while idx < _450:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        if ceil32(arg1.length) <= arg1.length:
            _445 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 608 < ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + return_data.size + 577
            _451 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]
            if mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = _451
            require _445 + (32 * _451) + 32 <= return_data.size
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + _445 + 609
            t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
            while idx < _451:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _446 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 608 < ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + return_data.size + 577
            _452 = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]
            if mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578 > test266151307() or floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + floor32(mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 577 len 4], Mask(224, 32, arg3) >> 32 + 577]) + 578
            mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 577] = _452
            require _446 + (32 * _452) + 32 <= return_data.size
            idx = 0
            s = ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + _446 + 609
            t = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 609
            while idx < _452:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    mem[mem[64]] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 397 len 20]
    mem[mem[64] + 32] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 429 len 20]
    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 461 len 20]
    mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 481]
    mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 513]
    mem[mem[64] + 160] = mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 545]
    return memory
      from mem[64]
       len 192
}



}
