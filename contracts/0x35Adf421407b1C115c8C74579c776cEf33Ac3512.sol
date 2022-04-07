contract main {




// =====================  Runtime code  =====================


#
#  - sub_0548f398(?)
#
const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929


address owner;
mapping of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function destroy(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_72]
        require mem[_72] == mem[_72]
        if mem[_72] > 0:
            _74 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _73
            _75 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_75 + 32] = mem[_75 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = _74 + 164
            mem[_74 + 100] = 32
            mem[_74 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(address(cd[((32 * idx) + arg1 + 36)])) <= 0:
                revert with 0, 'Address: call to non-contract'
            _81 = mem[_75]
            s = 0
            while s < _81:
                mem[_74 + s + 164] = mem[_75 + s + 32]
                s = s + 32
                continue 
            if ceil32(_81) > _81:
                mem[_74 + _81 + 164] = 0
            call address(cd[((32 * idx) + arg1 + 36)]).mem[_74 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_74 + 168 len _81 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_74 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_74 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[_74 + idx + 232] = mem[_74 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_74 + 232]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _74 + ceil32(return_data.size) + 165
                mem[_74 + 164] = return_data.size
                mem[_74 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_74 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_74 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_74 + ceil32(return_data.size) + idx + 233] = mem[_74 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_74 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_74 + 196] == bool(mem[_74 + 196])
                    if not mem[_74 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_adb574d4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, 1)
        if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, 1)
            roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
            emit RoleGranted(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'NOT_ENOUGH_BALANCE'
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_491637b4(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 68).length) + 128 > test266151307() or (32 * ('cd', 68).length) + 128 < 96:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 68).length) + 128
    mem[96] = ('cd', 68).length
    require cd[68] + (96 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require calldata.size - s >= 96
        _247 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[s] < 2
        mem[_247] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_247 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_247 + 64] = cd[(s + 64)]
        mem[t] = _247
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _248 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _249 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _248) + 32
    if not _248:
        _492 = mem[96]
        idx = 0
        s = cd[4]
        t = cd[36]
        while uint32(idx) < _492:
            if uint32(idx) >= mem[96]:
                revert with 'NH{q', 50
            _498 = mem[mem[(32 * uint32(idx)) + 128]]
            if uint32(idx) >= mem[96]:
                revert with 'NH{q', 50
            _505 = mem[mem[(32 * uint32(idx)) + 128] + 32]
            require ext_code.size(mem[mem[(32 * uint32(idx)) + 128] + 44 len 20])
            staticcall mem[mem[(32 * uint32(idx)) + 128] + 44 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_514] == mem[_514 + 12 len 20]
            require ext_code.size(address(_505))
            if address(s) == mem[_514 + 12 len 20]:
                staticcall address(_505).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _532 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _536 = mem[_532]
                require mem[_532] == mem[_532 + 18 len 14]
                _538 = mem[_532 + 32]
                require mem[_532 + 32] == mem[_532 + 50 len 14]
                require mem[_532 + 64] == mem[_532 + 92 len 4]
                if mem[_532 + 18 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                if mem[_532 + 50 len 14] <= 0:
                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                require ext_code.size(address(_505))
                staticcall address(_505).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _564 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_564] == mem[_564 + 12 len 20]
                if _498 > 1:
                    revert with 'NH{q', 33
                if _498:
                    if _498 > 1:
                        revert with 'NH{q', 33
                if t and 9970 > -1 / t:
                    revert with 'NH{q', 17
                if address(s) == mem[_564 + 12 len 20]:
                    if 9970 * t and Mask(112, 0, _538) > -1 / 9970 * t:
                        revert with 'NH{q', 17
                    if Mask(112, 0, _536) and 10000 > -1 / Mask(112, 0, _536):
                        revert with 'NH{q', 17
                    if 10000 * Mask(112, 0, _536) > (-9970 * t) - 1:
                        revert with 'NH{q', 17
                    if not (10000 * Mask(112, 0, _536)) + (9970 * t):
                        revert with 'NH{q', 18
                    if uint32(idx) >= mem[_249]:
                        revert with 'NH{q', 50
                    mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _538) / (10000 * Mask(112, 0, _536)) + (9970 * t)
                    if uint32(idx) >= mem[_249]:
                        revert with 'NH{q', 50
                    if uint32(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    if uint32(idx) == test266151307():
                        revert with 'NH{q', 17
                    _492 = mem[96]
                    idx = uint32(idx) + 1
                    s = mem[mem[(32 * uint32(idx)) + 128] + 64]
                    t = 9970 * t * Mask(112, 0, _538) / (10000 * Mask(112, 0, _536)) + (9970 * t)
                    continue 
                if 9970 * t and Mask(112, 0, _536) > -1 / 9970 * t:
                    revert with 'NH{q', 17
                if Mask(112, 0, _538) and 10000 > -1 / Mask(112, 0, _538):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _538) > (-9970 * t) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _538)) + (9970 * t):
                    revert with 'NH{q', 18
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _536) / (10000 * Mask(112, 0, _538)) + (9970 * t)
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                if uint32(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if uint32(idx) == test266151307():
                    revert with 'NH{q', 17
                _492 = mem[96]
                idx = uint32(idx) + 1
                s = mem[mem[(32 * uint32(idx)) + 128] + 64]
                t = 9970 * t * Mask(112, 0, _536) / (10000 * Mask(112, 0, _538)) + (9970 * t)
                continue 
            staticcall address(_505).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _530 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_530] == mem[_530 + 12 len 20]
            if address(s) != mem[_530 + 12 len 20]:
                revert with 0, 'IVALID_TOKENIN'
            require ext_code.size(address(_505))
            staticcall address(_505).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _550 = mem[_546]
            require mem[_546] == mem[_546 + 18 len 14]
            _554 = mem[_546 + 32]
            require mem[_546 + 32] == mem[_546 + 50 len 14]
            require mem[_546 + 64] == mem[_546 + 92 len 4]
            if mem[_546 + 18 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if mem[_546 + 50 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            require ext_code.size(address(_505))
            staticcall address(_505).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_582] == mem[_582 + 12 len 20]
            if _498 > 1:
                revert with 'NH{q', 33
            if _498:
                if _498 > 1:
                    revert with 'NH{q', 33
            if t and 9970 > -1 / t:
                revert with 'NH{q', 17
            if address(s) == mem[_582 + 12 len 20]:
                if 9970 * t and Mask(112, 0, _554) > -1 / 9970 * t:
                    revert with 'NH{q', 17
                if Mask(112, 0, _550) and 10000 > -1 / Mask(112, 0, _550):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _550) > (-9970 * t) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _550)) + (9970 * t):
                    revert with 'NH{q', 18
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _554) / (10000 * Mask(112, 0, _550)) + (9970 * t)
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                if uint32(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if uint32(idx) == test266151307():
                    revert with 'NH{q', 17
                _492 = mem[96]
                idx = uint32(idx) + 1
                s = mem[mem[(32 * uint32(idx)) + 128] + 64]
                t = 9970 * t * Mask(112, 0, _554) / (10000 * Mask(112, 0, _550)) + (9970 * t)
                continue 
            if 9970 * t and Mask(112, 0, _550) > -1 / 9970 * t:
                revert with 'NH{q', 17
            if Mask(112, 0, _554) and 10000 > -1 / Mask(112, 0, _554):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _554) > (-9970 * t) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _554)) + (9970 * t):
                revert with 'NH{q', 18
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _550) / (10000 * Mask(112, 0, _554)) + (9970 * t)
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            if uint32(idx) >= mem[96]:
                revert with 'NH{q', 50
            if uint32(idx) == test266151307():
                revert with 'NH{q', 17
            _492 = mem[96]
            idx = uint32(idx) + 1
            s = mem[mem[(32 * uint32(idx)) + 128] + 64]
            t = 9970 * t * Mask(112, 0, _550) / (10000 * Mask(112, 0, _554)) + (9970 * t)
            continue 
        mem[mem[64]] = 32
        _512 = mem[_249]
        mem[mem[64] + 32] = mem[_249]
        s = 0
        s = _249 + 32
        s = mem[64] + 64
        while ('cd', 68).length < _512:
            mem[s] = mem[cd[68] + (96 * ('cd', 68).length) + 36]
            s = ('cd', 68).length + 1
            s = cd[68] + (96 * ('cd', 68).length) + 68
            s = s + 32
            continue 
        return memory
          from mem[64]
           len s - mem[64]
    mem[_249 + 32 len 32 * _248] = call.data[calldata.size len 32 * _248]
    _493 = mem[96]
    idx = 0
    s = cd[4]
    t = cd[36]
    while uint32(idx) < _493:
        if uint32(idx) >= mem[96]:
            revert with 'NH{q', 50
        _502 = mem[mem[(32 * uint32(idx)) + 128]]
        if uint32(idx) >= mem[96]:
            revert with 'NH{q', 50
        _507 = mem[mem[(32 * uint32(idx)) + 128] + 32]
        require ext_code.size(mem[mem[(32 * uint32(idx)) + 128] + 44 len 20])
        staticcall mem[mem[(32 * uint32(idx)) + 128] + 44 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _515 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_515] == mem[_515 + 12 len 20]
        require ext_code.size(address(_507))
        if address(s) == mem[_515 + 12 len 20]:
            staticcall address(_507).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _533 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _537 = mem[_533]
            require mem[_533] == mem[_533 + 18 len 14]
            _539 = mem[_533 + 32]
            require mem[_533 + 32] == mem[_533 + 50 len 14]
            require mem[_533 + 64] == mem[_533 + 92 len 4]
            if mem[_533 + 18 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            if mem[_533 + 50 len 14] <= 0:
                revert with 0, 'INSUFFICIENT_LIQUIDITY'
            require ext_code.size(address(_507))
            staticcall address(_507).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_565] == mem[_565 + 12 len 20]
            if _502 > 1:
                revert with 'NH{q', 33
            if _502:
                if _502 > 1:
                    revert with 'NH{q', 33
            if t and 9970 > -1 / t:
                revert with 'NH{q', 17
            if address(s) == mem[_565 + 12 len 20]:
                if 9970 * t and Mask(112, 0, _539) > -1 / 9970 * t:
                    revert with 'NH{q', 17
                if Mask(112, 0, _537) and 10000 > -1 / Mask(112, 0, _537):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _537) > (-9970 * t) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _537)) + (9970 * t):
                    revert with 'NH{q', 18
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _539) / (10000 * Mask(112, 0, _537)) + (9970 * t)
                if uint32(idx) >= mem[_249]:
                    revert with 'NH{q', 50
                if uint32(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if uint32(idx) == test266151307():
                    revert with 'NH{q', 17
                _493 = mem[96]
                idx = uint32(idx) + 1
                s = mem[mem[(32 * uint32(idx)) + 128] + 64]
                t = 9970 * t * Mask(112, 0, _539) / (10000 * Mask(112, 0, _537)) + (9970 * t)
                continue 
            if 9970 * t and Mask(112, 0, _537) > -1 / 9970 * t:
                revert with 'NH{q', 17
            if Mask(112, 0, _539) and 10000 > -1 / Mask(112, 0, _539):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _539) > (-9970 * t) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _539)) + (9970 * t):
                revert with 'NH{q', 18
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _537) / (10000 * Mask(112, 0, _539)) + (9970 * t)
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            if uint32(idx) >= mem[96]:
                revert with 'NH{q', 50
            if uint32(idx) == test266151307():
                revert with 'NH{q', 17
            _493 = mem[96]
            idx = uint32(idx) + 1
            s = mem[mem[(32 * uint32(idx)) + 128] + 64]
            t = 9970 * t * Mask(112, 0, _537) / (10000 * Mask(112, 0, _539)) + (9970 * t)
            continue 
        staticcall address(_507).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _531 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_531] == mem[_531 + 12 len 20]
        if address(s) != mem[_531 + 12 len 20]:
            revert with 0, 'IVALID_TOKENIN'
        require ext_code.size(address(_507))
        staticcall address(_507).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _547 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _551 = mem[_547]
        require mem[_547] == mem[_547 + 18 len 14]
        _555 = mem[_547 + 32]
        require mem[_547 + 32] == mem[_547 + 50 len 14]
        require mem[_547 + 64] == mem[_547 + 92 len 4]
        if mem[_547 + 18 len 14] <= 0:
            revert with 0, 'INSUFFICIENT_LIQUIDITY'
        if mem[_547 + 50 len 14] <= 0:
            revert with 0, 'INSUFFICIENT_LIQUIDITY'
        require ext_code.size(address(_507))
        staticcall address(_507).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _583 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_583] == mem[_583 + 12 len 20]
        if _502 > 1:
            revert with 'NH{q', 33
        if _502:
            if _502 > 1:
                revert with 'NH{q', 33
        if t and 9970 > -1 / t:
            revert with 'NH{q', 17
        if address(s) == mem[_583 + 12 len 20]:
            if 9970 * t and Mask(112, 0, _555) > -1 / 9970 * t:
                revert with 'NH{q', 17
            if Mask(112, 0, _551) and 10000 > -1 / Mask(112, 0, _551):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _551) > (-9970 * t) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _551)) + (9970 * t):
                revert with 'NH{q', 18
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _555) / (10000 * Mask(112, 0, _551)) + (9970 * t)
            if uint32(idx) >= mem[_249]:
                revert with 'NH{q', 50
            if uint32(idx) >= mem[96]:
                revert with 'NH{q', 50
            if uint32(idx) == test266151307():
                revert with 'NH{q', 17
            _493 = mem[96]
            idx = uint32(idx) + 1
            s = mem[mem[(32 * uint32(idx)) + 128] + 64]
            t = 9970 * t * Mask(112, 0, _555) / (10000 * Mask(112, 0, _551)) + (9970 * t)
            continue 
        if 9970 * t and Mask(112, 0, _551) > -1 / 9970 * t:
            revert with 'NH{q', 17
        if Mask(112, 0, _555) and 10000 > -1 / Mask(112, 0, _555):
            revert with 'NH{q', 17
        if 10000 * Mask(112, 0, _555) > (-9970 * t) - 1:
            revert with 'NH{q', 17
        if not (10000 * Mask(112, 0, _555)) + (9970 * t):
            revert with 'NH{q', 18
        if uint32(idx) >= mem[_249]:
            revert with 'NH{q', 50
        mem[(32 * uint32(idx)) + _249 + 32] = 9970 * t * Mask(112, 0, _551) / (10000 * Mask(112, 0, _555)) + (9970 * t)
        if uint32(idx) >= mem[_249]:
            revert with 'NH{q', 50
        if uint32(idx) >= mem[96]:
            revert with 'NH{q', 50
        if uint32(idx) == test266151307():
            revert with 'NH{q', 17
        _493 = mem[96]
        idx = uint32(idx) + 1
        s = mem[mem[(32 * uint32(idx)) + 128] + 64]
        t = 9970 * t * Mask(112, 0, _551) / (10000 * Mask(112, 0, _555)) + (9970 * t)
        continue 
    mem[mem[64]] = 32
    _513 = mem[_249]
    mem[mem[64] + 32] = mem[_249]
    mem[mem[64] + 64 len 32 * _513] = mem[_249 + 32 len 32 * _513]
    return 32, mem[mem[64] + 32 len (32 * _513) + 32]
}

function sub_5f6babb6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] < 2
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            _85 = mem[64]
            mem[64] = mem[64] + 128
            mem[_85] = 0
            mem[_85 + 32] = 0
            mem[_85 + 64] = 96
            mem[_85 + 96] = 96
            _86 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[_86 + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[_86 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _86 + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_86]:
                revert with 'NH{q', 50
            mem[_86 + 32] = ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token1() with:
                    gas gas_remaining wei
            mem[_86 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _86 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_86]:
                revert with 'NH{q', 50
            mem[_86 + 64] = ext_call.return_data[12 len 20]
            if 0 >= mem[_86 + 96]:
                revert with 'NH{q', 50
            mem[_86 + 128] = Mask(112, 0, ext_call.return_data[0])
            if 1 >= mem[_86 + 96]:
                revert with 'NH{q', 50
            mem[_86 + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[64] = _86 + (4 * ceil32(return_data.size)) + 320
            if cd[((96 * idx) + cd[4] + 36)] > 1:
                revert with 'NH{q', 33
            mem[_86 + (4 * ceil32(return_data.size)) + 192] = cd[((96 * idx) + cd[4] + 36)]
            mem[_86 + (4 * ceil32(return_data.size)) + 224] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[_86 + (4 * ceil32(return_data.size)) + 256] = _86
            mem[_86 + (4 * ceil32(return_data.size)) + 288] = _86 + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _86 + (4 * ceil32(return_data.size)) + 192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _74 = mem[64]
        mem[mem[64]] = 32
        _75 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _75:
            mem[u] = t + -_74 - 64
            _145 = mem[s]
            if mem[mem[s]] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_145 + 44 len 20]
            _153 = mem[_145 + 64]
            mem[t + 64] = 128
            _156 = mem[_153]
            mem[t + 128] = mem[_153]
            v = 0
            w = _153 + 32
            x = t + 160
            while v < _156:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _192 = mem[_145 + 96]
            mem[t + 96] = (32 * _156) + 160
            _194 = mem[_192]
            mem[t + (32 * _156) + 160] = mem[_192]
            v = 0
            w = _192 + 32
            x = t + (32 * _156) + 192
            while v < _194:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _156) + (32 * _194) + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[var23002] = 0
    mem[var23002 + 32] = 0
    mem[var23002 + 64] = 96
    mem[var23002 + 96] = 96
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] < 2
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            _315 = mem[64]
            mem[64] = mem[64] + 128
            mem[_315] = 0
            mem[_315 + 32] = 0
            mem[_315 + 64] = 96
            mem[_315 + 96] = 96
            _316 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[_316 + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[_316 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _316 + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_316]:
                revert with 'NH{q', 50
            mem[_316 + 32] = ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token1() with:
                    gas gas_remaining wei
            mem[_316 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _316 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_316]:
                revert with 'NH{q', 50
            mem[_316 + 64] = ext_call.return_data[12 len 20]
            if 0 >= mem[_316 + 96]:
                revert with 'NH{q', 50
            mem[_316 + 128] = Mask(112, 0, ext_call.return_data[0])
            if 1 >= mem[_316 + 96]:
                revert with 'NH{q', 50
            mem[_316 + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[64] = _316 + (4 * ceil32(return_data.size)) + 320
            if cd[((96 * idx) + cd[4] + 36)] > 1:
                revert with 'NH{q', 33
            mem[_316 + (4 * ceil32(return_data.size)) + 192] = cd[((96 * idx) + cd[4] + 36)]
            mem[_316 + (4 * ceil32(return_data.size)) + 224] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[_316 + (4 * ceil32(return_data.size)) + 256] = _316
            mem[_316 + (4 * ceil32(return_data.size)) + 288] = _316 + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _316 + (4 * ceil32(return_data.size)) + 192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _304 = mem[64]
        mem[mem[64]] = 32
        _305 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _305:
            mem[u] = t + -_304 - 64
            _375 = mem[s]
            if mem[mem[s]] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_375 + 44 len 20]
            _383 = mem[_375 + 64]
            mem[t + 64] = 128
            _386 = mem[_383]
            mem[t + 128] = mem[_383]
            v = 0
            w = _383 + 32
            x = t + 160
            while v < _386:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _422 = mem[_375 + 96]
            mem[t + 96] = (32 * _386) + 160
            _424 = mem[_422]
            mem[t + (32 * _386) + 160] = mem[_422]
            v = 0
            w = _422 + 32
            x = t + (32 * _386) + 192
            while v < _424:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _386) + (32 * _424) + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * ('cd', 4).length) + 384
    mem[var31002] = 0
    mem[var31002 + 32] = 0
    mem[var31002 + 64] = 96
    mem[var31002 + 96] = 96
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] < 2
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            _545 = mem[64]
            mem[64] = mem[64] + 128
            mem[_545] = 0
            mem[_545 + 32] = 0
            mem[_545 + 64] = 96
            mem[_545 + 96] = 96
            _546 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[_546 + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[_546 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _546 + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_546]:
                revert with 'NH{q', 50
            mem[_546 + 32] = ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token1() with:
                    gas gas_remaining wei
            mem[_546 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _546 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_546]:
                revert with 'NH{q', 50
            mem[_546 + 64] = ext_call.return_data[12 len 20]
            if 0 >= mem[_546 + 96]:
                revert with 'NH{q', 50
            mem[_546 + 128] = Mask(112, 0, ext_call.return_data[0])
            if 1 >= mem[_546 + 96]:
                revert with 'NH{q', 50
            mem[_546 + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[64] = _546 + (4 * ceil32(return_data.size)) + 320
            if cd[((96 * idx) + cd[4] + 36)] > 1:
                revert with 'NH{q', 33
            mem[_546 + (4 * ceil32(return_data.size)) + 192] = cd[((96 * idx) + cd[4] + 36)]
            mem[_546 + (4 * ceil32(return_data.size)) + 224] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[_546 + (4 * ceil32(return_data.size)) + 256] = _546
            mem[_546 + (4 * ceil32(return_data.size)) + 288] = _546 + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _546 + (4 * ceil32(return_data.size)) + 192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _534 = mem[64]
        mem[mem[64]] = 32
        _535 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _535:
            mem[u] = t + -_534 - 64
            _605 = mem[s]
            if mem[mem[s]] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_605 + 44 len 20]
            _613 = mem[_605 + 64]
            mem[t + 64] = 128
            _616 = mem[_613]
            mem[t + 128] = mem[_613]
            v = 0
            w = _613 + 32
            x = t + 160
            while v < _616:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _652 = mem[_605 + 96]
            mem[t + 96] = (32 * _616) + 160
            _654 = mem[_652]
            mem[t + (32 * _616) + 160] = mem[_652]
            v = 0
            w = _652 + 32
            x = t + (32 * _616) + 192
            while v < _654:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _616) + (32 * _654) + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * ('cd', 4).length) + 512
    mem[var39002] = 0
    mem[var39002 + 32] = 0
    mem[var39002 + 64] = 96
    mem[var39002 + 96] = 96
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] < 2
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            _775 = mem[64]
            mem[64] = mem[64] + 128
            mem[_775] = 0
            mem[_775 + 32] = 0
            mem[_775 + 64] = 96
            mem[_775 + 96] = 96
            _776 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[_776 + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[_776 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _776 + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_776]:
                revert with 'NH{q', 50
            mem[_776 + 32] = ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token1() with:
                    gas gas_remaining wei
            mem[_776 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _776 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_776]:
                revert with 'NH{q', 50
            mem[_776 + 64] = ext_call.return_data[12 len 20]
            if 0 >= mem[_776 + 96]:
                revert with 'NH{q', 50
            mem[_776 + 128] = Mask(112, 0, ext_call.return_data[0])
            if 1 >= mem[_776 + 96]:
                revert with 'NH{q', 50
            mem[_776 + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[64] = _776 + (4 * ceil32(return_data.size)) + 320
            if cd[((96 * idx) + cd[4] + 36)] > 1:
                revert with 'NH{q', 33
            mem[_776 + (4 * ceil32(return_data.size)) + 192] = cd[((96 * idx) + cd[4] + 36)]
            mem[_776 + (4 * ceil32(return_data.size)) + 224] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[_776 + (4 * ceil32(return_data.size)) + 256] = _776
            mem[_776 + (4 * ceil32(return_data.size)) + 288] = _776 + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _776 + (4 * ceil32(return_data.size)) + 192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _764 = mem[64]
        mem[mem[64]] = 32
        _765 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _765:
            mem[u] = t + -_764 - 64
            _835 = mem[s]
            if mem[mem[s]] >= 2:
                revert with 'NH{q', 33
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_835 + 44 len 20]
            _843 = mem[_835 + 64]
            mem[t + 64] = 128
            _846 = mem[_843]
            mem[t + 128] = mem[_843]
            v = 0
            w = _843 + 32
            x = t + 160
            while v < _846:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _882 = mem[_835 + 96]
            mem[t + 96] = (32 * _846) + 160
            _884 = mem[_882]
            mem[t + (32 * _846) + 160] = mem[_882]
            v = 0
            w = _882 + 32
            x = t + (32 * _846) + 192
            while v < _884:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _846) + (32 * _884) + 192
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * ('cd', 4).length) + 640
    mem[var47002] = 0
    mem[var47002 + 32] = 0
    mem[var47002 + 64] = 96
    mem[var47002 + 96] = 96
    mem[var49002] = var49001
    if var49003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((96 * idx) + cd[4] + 36)] < 2
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
            _1005 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1005] = 0
            mem[_1005 + 32] = 0
            mem[_1005 + 64] = 96
            mem[_1005 + 96] = 96
            _1006 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 96] = 2
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).getReserves() with:
                    gas gas_remaining wei
            mem[_1006 + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token0() with:
                    gas gas_remaining wei
            mem[_1006 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1006 + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_1006]:
                revert with 'NH{q', 50
            mem[_1006 + 32] = ext_call.return_data[12 len 20]
            require ext_code.size(address(cd[((96 * idx) + cd[4] + 68)]))
            staticcall address(cd[((96 * idx) + cd[4] + 68)]).token1() with:
                    gas gas_remaining wei
            mem[_1006 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1006 + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= mem[_1006]:
                revert with 'NH{q', 50
            mem[_1006 + 64] = ext_call.return_data[12 len 20]
            if 0 >= mem[_1006 + 96]:
                revert with 'NH{q', 50
            mem[_1006 + 128] = Mask(112, 0, ext_call.return_data[0])
            if 1 >= mem[_1006 + 96]:
                revert with 'NH{q', 50
            mem[_1006 + 160] = Mask(112, 0, ext_call.return_data[32])
            mem[64] = _1006 + (4 * ceil32(return_data.size)) + 320
            if cd[((96 * idx) + cd[4] + 36)] > 1:
                revert with 'NH{q', 33
            mem[_1006 + (4 * ceil32(return_data.size)) + 192] = cd[((96 * idx) + cd[4] + 36)]
            mem[_1006 + (4 * ceil32(return_data.size)) + 224] = address(cd[((96 * idx) + cd[4] + 68)])
            mem[_1006 + (4 * ceil32(return_data.size)) + 256] = _1006
            mem[_1006 + (4 * ceil32(return_data.size)) + 288] = _1006 + 96
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1006 + (4 * ceil32(return_data.size)) + 192
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        if var104001 >= mem[96]:
            return memory
              from mem[64]
               len var104004 - mem[64]
        mem[var104009] = var104004 + -mem[64] - 64
        _1065 = mem[var104002]
        if mem[mem[var104002]] >= 2:
            revert with 'NH{q', 33
        mem[var104004] = mem[mem[var104002]]
        mem[var104004 + 32] = mem[_1065 + 44 len 20]
        _1073 = mem[_1065 + 64]
        mem[var104004 + 64] = 128
        _1076 = mem[_1073]
        mem[var104004 + 128] = mem[_1073]
        idx = 0
        s = _1073 + 32
        t = var104004 + 160
        while idx < _1076:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        # nil
}



}
