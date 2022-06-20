contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address stor1;
address stor2;
address stor4;
address stor5;
address stor6;
address stor7;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _20 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _21 = mem[_20]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _21
            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _21
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == bool(mem[_25])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        selfdestruct(msg.sender)
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_83d3e920(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        call address(arg1) with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send eth'
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_645c126c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e][address(msg.sender)].field_0:
        if not address(arg2):
            revert with 0, 'to shouldn't be zero'
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_03ae8914(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor7.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] and arg1 > -1 / ext_call.return_data[50 len 14]:
        revert with 0, 17
    if ext_call.return_data[50 len 14] * arg1 and 1000 > -1 / ext_call.return_data[50 len 14] * arg1:
        revert with 0, 17
    if ext_call.return_data[18 len 14] < arg1:
        revert with 0, 17
    if ext_call.return_data[18 len 14] - arg1 and 997 > -1 / ext_call.return_data[18 len 14] - arg1:
        revert with 0, 17
    if not (997 * ext_call.return_data[18 len 14]) - (997 * arg1):
        revert with 0, 18
    if 1000 * ext_call.return_data[50 len 14] * arg1 / (997 * ext_call.return_data[18 len 14]) - (997 * arg1) > -2:
        revert with 0, 17
    require ext_code.size(stor7)
    call stor7.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg1, 0, address(this.address), 128, 64, stor7, (1000 * Mask(112, 0, ext_call.return_data[32]) * arg1 / (997 * ext_call.return_data[18 len 14]) - (997 * arg1)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eae86062(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor6.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] and arg1 > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * arg1 and 1000 > -1 / ext_call.return_data[18 len 14] * arg1:
        revert with 0, 17
    if ext_call.return_data[50 len 14] < arg1:
        revert with 0, 17
    if ext_call.return_data[50 len 14] - arg1 and 997 > -1 / ext_call.return_data[50 len 14] - arg1:
        revert with 0, 17
    if not (997 * ext_call.return_data[50 len 14]) - (997 * arg1):
        revert with 0, 18
    if 1000 * ext_call.return_data[18 len 14] * arg1 / (997 * ext_call.return_data[50 len 14]) - (997 * arg1) > -2:
        revert with 0, 17
    require ext_code.size(stor6)
    call stor6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg1, address(this.address), 128, 64, stor6, (1000 * ext_call.return_data[18 len 14] * arg1 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg1)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_602c7853(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor6.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg1 and 997 > -1 / arg1:
        revert with 0, 17
    if 997 * arg1 and ext_call.return_data[50 len 14] > -1 / 997 * arg1:
        revert with 0, 17
    if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if 1000 * ext_call.return_data[18 len 14] > !(997 * arg1):
        revert with 0, 17
    if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg1):
        revert with 0, 18
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(return_data.size) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor6.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] and 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) > -1 / ext_call.return_data[18 len 14]:
        revert with 0, 17
    if ext_call.return_data[18 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) and 1000 > -1 / ext_call.return_data[18 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
        revert with 0, 17
    if ext_call.return_data[50 len 14] < 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
        revert with 0, 17
    if ext_call.return_data[50 len 14] - (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) and 997 > -1 / ext_call.return_data[50 len 14] - (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
        revert with 0, 17
    if not (997 * ext_call.return_data[50 len 14]) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)):
        revert with 0, 18
    if 1000 * ext_call.return_data[18 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) / (997 * ext_call.return_data[50 len 14]) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1)) > -2:
        revert with 0, 17
    require ext_code.size(stor6)
    call stor6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1), address(this.address), 128, 64, stor6, (1000 * ext_call.return_data[18 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa77f104(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor7.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg1 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if arg1 and 997 > -1 / arg1:
        revert with 0, 17
    if 997 * arg1 and ext_call.return_data[18 len 14] > -1 / 997 * arg1:
        revert with 0, 17
    if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
        revert with 0, 17
    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg1):
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg1):
        revert with 0, 18
    if not roleAdmin[0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(return_data.size) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    staticcall stor7.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] and 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) > -1 / ext_call.return_data[50 len 14]:
        revert with 0, 17
    if ext_call.return_data[50 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) and 1000 > -1 / ext_call.return_data[50 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
        revert with 0, 17
    if ext_call.return_data[18 len 14] < 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
        revert with 0, 17
    if ext_call.return_data[18 len 14] - (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) and 997 > -1 / ext_call.return_data[18 len 14] - (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
        revert with 0, 17
    if not (997 * ext_call.return_data[18 len 14]) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)):
        revert with 0, 18
    if 1000 * ext_call.return_data[50 len 14] * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) / (997 * ext_call.return_data[18 len 14]) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1)) > -2:
        revert with 0, 17
    require ext_code.size(stor7)
    call stor7.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1), 0, address(this.address), 128, 64, stor7, (1000 * Mask(112, 0, ext_call.return_data[32]) * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) / (997 * ext_call.return_data[18 len 14]) - (997 * 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'fo'
    require arg4.length >= 64
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, ext_call.return_data[0], 10, 'mim_before', 0
    if stor7 == address(cd[(arg4 + 36)]):
        mem[ceil32(return_data.size) + 328] = arg2
        staticcall stor4.wMEMOToMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 324] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        staticcall stor6.getReserves() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 328 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 324 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 43
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_I'
            mem[(4 * ceil32(return_data.size)) + 424] = 0x4e5055545f414d4f554e54000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[50 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 40
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 424] = 'IQUIDITY' << 192
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[18 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 40
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 424] = 'IQUIDITY' << 192
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[18 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[50 len 14] and 1000 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if 1000 * ext_call.return_data[50 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if not (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < cd[(arg4 + 68)]:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 2
            mem[(4 * ceil32(return_data.size)) + 392] = 0x6531000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 328] = arg2
        call stor4.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 328 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor5)
        call stor5.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[(6 * ceil32(return_data.size)) + 392 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 392 len 9 * ceil32(return_data.size)]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor6)
        call stor6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(this.address), 128, 0
    else:
        if stor6 != address(cd[(arg4 + 36)]):
            revert with 0, 'e3'
        mem[ceil32(return_data.size) + 328] = arg3
        staticcall stor4.MEMOTowMEMO(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
        mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 324] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        staticcall stor7.getReserves() with:
                gas gas_remaining wei
               args mem[(2 * ceil32(return_data.size)) + 328 len ceil32(return_data.size)]
        mem[(2 * ceil32(return_data.size)) + 324 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 43
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_I'
            mem[(4 * ceil32(return_data.size)) + 424] = 0x4e5055545f414d4f554e54000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[18 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 40
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 424] = 'IQUIDITY' << 192
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[50 len 14] <= 0:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 40
            mem[(4 * ceil32(return_data.size)) + 392] = 'UniswapV2Library: INSUFFICIENT_L'
            mem[(4 * ceil32(return_data.size)) + 424] = 'IQUIDITY' << 192
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 132
        if ext_call.return_data[0] and 997 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 997 * ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 997 * ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[18 len 14] and 1000 > -1 / ext_call.return_data[18 len 14]:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * ext_call.return_data[0]):
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
            revert with 0, 18
        if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < cd[(arg4 + 68)]:
            mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 328] = 32
            mem[(4 * ceil32(return_data.size)) + 360] = 2
            mem[(4 * ceil32(return_data.size)) + 392] = 0x6532000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 324
               len (5 * ceil32(return_data.size)) + 100
        mem[(4 * ceil32(return_data.size)) + 328] = arg3
        mem[(4 * ceil32(return_data.size)) + 360] = this.address
        call stor5.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 328 len (5 * ceil32(return_data.size)) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor5)
        call stor5.claim(address arg1) with:
             gas gas_remaining wei
            args this.address, mem[(6 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor4.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args arg3, mem[(6 * ceil32(return_data.size)) + 360 len 9 * ceil32(return_data.size)]
        require return_data.size >= 32
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args stor7, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor7)
        call stor7.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 64, ext_call.return_data[0], 9, 0, 0
    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
        if cd[(arg4 + 68)] < ext_call.return_data[0]:
            revert with 0, 17
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, cd[(arg4 + 68)] - ext_call.return_data[0], 4, 0, 0
    else:
        if ext_call.return_data[0] < cd[(arg4 + 68)]:
            revert with 0, 17
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args 0, 64, ext_call.return_data[0] - cd[(arg4 + 68)], 6, 0, 0
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'e4'
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
