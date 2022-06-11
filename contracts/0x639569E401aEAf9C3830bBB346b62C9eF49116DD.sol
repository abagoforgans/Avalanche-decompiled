contract main {




// =====================  Runtime code  =====================


#
#  - sub_06cfc272(?)
#  - sub_60b1b767(?)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_89519af6(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021, 0)
    if roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
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
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _23 = mem[_22]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _23
            call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _23
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        selfdestruct(msg.sender)
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
        s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_01c72045(?) {
    require calldata.size - 4 >= 64
    if roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
        stor4 = arg1
        stor5 = arg2
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
        s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
}

function setWithdrawTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
        stor3 = arg1
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
        s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
}

function sub_1674d941(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
        stor2 = address(arg1)
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
        s = 0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
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
}

function sub_83d3e920(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
        call address(arg1) with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send eth'
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
        s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
}

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function sub_645c126c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
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
            s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
    if not address(arg2):
        revert with 0, 'to shouldn't be zero'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021][address(msg.sender)].field_0:
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
            s = 0xfeb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c2622462021
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
    require arg1
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_6ecfda38(?) {
    require calldata.size - 4 >= 96
    if not arg3:
        if not stor6:
            if stor4:
                if False and stor4 > 0:
                    revert with 0, 17
                if stor4:
                    if 0 / stor4:
                        revert with 0, 'BoringMath: Mul Overflow'
        else:
            if arg1 and stor6 > -1 / arg1:
                revert with 0, 17
            if stor6:
                if arg1 * stor6 / stor6 != arg1:
                    revert with 0, 'BoringMath: Mul Overflow'
                if stor4:
                    if arg1 * stor6 and stor4 > -1 / arg1 * stor6:
                        revert with 0, 17
                    if stor4:
                        if arg1 * stor6 * stor4 / stor4 != arg1 * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
        revert with 0, 18
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    if arg2 * arg3 / arg3 != arg2:
        revert with 0, 'BoringMath: Mul Overflow'
    if not stor6:
        if stor4:
            if False and stor4 > 0:
                revert with 0, 17
            if not stor4:
                revert with 0, 18
            if 0 / stor4:
                revert with 0, 'BoringMath: Mul Overflow'
        if not arg2 * arg3:
            revert with 0, 18
        return (0 / arg2 * arg3)
    if arg1 and stor6 > -1 / arg1:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if arg1 * stor6 / stor6 != arg1:
        revert with 0, 'BoringMath: Mul Overflow'
    if not stor4:
        if not arg2 * arg3:
            revert with 0, 18
        return (0 / arg2 * arg3)
    if arg1 * stor6 and stor4 > -1 / arg1 * stor6:
        revert with 0, 17
    if not stor4:
        revert with 0, 18
    if arg1 * stor6 * stor4 / stor4 != arg1 * stor6:
        revert with 0, 'BoringMath: Mul Overflow'
    if not arg2 * arg3:
        revert with 0, 18
    return (arg1 * stor6 * stor4 / arg2 * arg3)
}

function sub_f360118c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
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
            s = 0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
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
    staticcall address(arg1).bentoBox() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).masterContract() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b02b5409(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not roleAdmin[0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
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
            s = 0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
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
    mem[0] = address(cd[4])
    mem[32] = 1
    if not stor1[address(cd[4])]:
        revert with 0, 'f1'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
        staticcall address(cd[4]).userBorrowPart(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_29]:
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            staticcall address(cd[4]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0, 'f2'
}

function sub_effca705(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
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
            s = 0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
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
    stor1[address(arg1)] = address(arg2)
    if not roleAdmin[0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf][address(msg.sender)].field_0:
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
            s = 0x4e4a0c3698e72495f6d49f6ef074f2b34cac5b153c817a7cc37789cccbb873cf
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
    staticcall address(arg1).bentoBox() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(arg1).masterContract() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa7790d6(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if not ('cd', 36).length:
        staticcall address(cd[4]).bentoBox() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(cd[4]).collateral() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).totals(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool(ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 193 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 161] = ext_call.return_data[32]
        staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 193] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 193
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _885 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            staticcall address(cd[4]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(_885)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _892 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _896 = mem[_892]
            if 0 == mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                if not cd[68]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if mem[_892] and stor6 > -1 / mem[_892]:
                            revert with 0, 17
                        if stor6:
                            if mem[_892] * stor6 / stor6 != mem[_892]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if mem[_892] * stor6 and stor4 > -1 / mem[_892] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if mem[_892] * stor6 * stor4 / stor4 != mem[_892] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not cd[68]:
                    revert with 0, 18
                if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _935 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_935] = 13
                        mem[_935 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _935 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_885)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1346 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1346 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1346 + 36 len 28]
                        staticcall 'console.log'.mem[_1346 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1346 + 36 len mem[_1346] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_966] = 13
                        mem[_966 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _966 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_885)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1350 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1350 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1350 + 36 len 28]
                        staticcall 'console.log'.mem[_1350 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1350 + 36 len mem[_1350] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                else:
                    if mem[_892] and stor6 > -1 / mem[_892]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if mem[_892] * stor6 / stor6 != mem[_892]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_967] = 13
                        mem[_967 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _967 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_885)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1354 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1354 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1354 + 36 len 28]
                        staticcall 'console.log'.mem[_1354 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1354 + 36 len mem[_1354] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                    else:
                        if mem[_892] * stor6 and stor4 > -1 / mem[_892] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if mem[_892] * stor6 * stor4 / stor4 != mem[_892] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1026] = 13
                        mem[_1026 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1026 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_885)
                        mem[mem[64] + 100] = _896 * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                        _1358 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1358 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1358 + 36 len 28]
                        staticcall 'console.log'.mem[_1358 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1358 + 36 len mem[_1358] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _896 * stor6 * stor4 / ext_call.return_data[0] * cd[68]
            else:
                _903 = mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 161]
                _904 = mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129]
                if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16]:
                    if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 18
                    if not cd[68]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not cd[68]:
                        revert with 0, 18
                    if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_972] = 13
                            mem[_972 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _972 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1314 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1314 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1314 + 36 len 28]
                            staticcall 'console.log'.mem[_1314 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1314 + 36 len mem[_1314] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1030] = 13
                            mem[_1030 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1030 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1318 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1318 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1318 + 36 len 28]
                            staticcall 'console.log'.mem[_1318 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1318 + 36 len mem[_1318] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1031] = 13
                            mem[_1031 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1031 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1322 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1322 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1322 + 36 len 28]
                            staticcall 'console.log'.mem[_1322 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1322 + 36 len mem[_1322] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1120 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1120] = 13
                            mem[_1120 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1120 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / uint128(_903) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                            _1326 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1326 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1326 + 36 len 28]
                            staticcall 'console.log'.mem[_1326 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1326 + 36 len mem[_1326] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / uint128(_903) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                else:
                    if mem[_892] and mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] > -1 / mem[_892]:
                        revert with 0, 17
                    if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16]:
                        revert with 0, 18
                    if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] != mem[_892]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 18
                    if not cd[68]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not cd[68]:
                        revert with 0, 18
                    if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1032] = 13
                            mem[_1032 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1032 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1330 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1330 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1330 + 36 len 28]
                            staticcall 'console.log'.mem[_1330 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1330 + 36 len mem[_1330] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1121 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1121] = 13
                            mem[_1121 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1121 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1334 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1334 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1334 + 36 len 28]
                            staticcall 'console.log'.mem[_1334 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1334 + 36 len mem[_1334] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                    else:
                        if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1122] = 13
                            mem[_1122 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1122 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                            _1338 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1338 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1338 + 36 len 28]
                            staticcall 'console.log'.mem[_1338 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1338 + 36 len mem[_1338] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                        else:
                            if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != mem[_892] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * cd[68]:
                                revert with 0, 18
                            _1212 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1212] = 13
                            mem[_1212 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1212 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_885)
                            mem[mem[64] + 100] = _896 * uint128(_904) / uint128(_903) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                            _1342 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_1342 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1342 + 36 len 28]
                            staticcall 'console.log'.mem[_1342 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1342 + 36 len mem[_1342] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _896 * uint128(_904) / uint128(_903) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _894 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 64 len 32 * _894] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _894]
        return 32, mem[mem[64] + 32 len (32 * _894) + 32]
    mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    staticcall address(cd[4]).bentoBox() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(cd[4]).collateral() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).totals(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 193 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 161] = ext_call.return_data[32]
    staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 193
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _889 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        staticcall address(cd[4]).userCollateralShare(address arg1) with:
                gas gas_remaining wei
               args address(_889)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _893 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _897 = mem[_893]
        if 0 == mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
            if not cd[68]:
                if not stor6:
                    if stor4:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if stor4:
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                else:
                    if mem[_893] and stor6 > -1 / mem[_893]:
                        revert with 0, 17
                    if stor6:
                        if mem[_893] * stor6 / stor6 != mem[_893]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if stor4:
                            if mem[_893] * stor6 and stor4 > -1 / mem[_893] * stor6:
                                revert with 0, 17
                            if stor4:
                                if mem[_893] * stor6 * stor4 / stor4 != mem[_893] * stor6:
                                    revert with 0, 'BoringMath: Mul Overflow'
                revert with 0, 18
            if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not cd[68]:
                revert with 0, 18
            if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                revert with 0, 'BoringMath: Mul Overflow'
            if not stor6:
                if not stor4:
                    if not ext_call.return_data[0] * cd[68]:
                        revert with 0, 18
                    _937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_937] = 13
                    mem[_937 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _937 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_889)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                    _1394 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1394 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1394 + 36 len 28]
                    staticcall 'console.log'.mem[_1394 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1394 + 36 len mem[_1394] - 4]
                else:
                    if False and stor4 > 0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if 0 / stor4:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not ext_call.return_data[0] * cd[68]:
                        revert with 0, 18
                    _970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_970] = 13
                    mem[_970 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _970 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_889)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                    _1398 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1398 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1398 + 36 len 28]
                    staticcall 'console.log'.mem[_1398 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1398 + 36 len mem[_1398] - 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
            else:
                if mem[_893] and stor6 > -1 / mem[_893]:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if mem[_893] * stor6 / stor6 != mem[_893]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor4:
                    if not ext_call.return_data[0] * cd[68]:
                        revert with 0, 18
                    _971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_971] = 13
                    mem[_971 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _971 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_889)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                    _1402 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1402 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1402 + 36 len 28]
                    staticcall 'console.log'.mem[_1402 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1402 + 36 len mem[_1402] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                else:
                    if mem[_893] * stor6 and stor4 > -1 / mem[_893] * stor6:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if mem[_893] * stor6 * stor4 / stor4 != mem[_893] * stor6:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not ext_call.return_data[0] * cd[68]:
                        revert with 0, 18
                    _1029 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1029] = 13
                    mem[_1029 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _1029 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_889)
                    mem[mem[64] + 100] = _897 * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                    _1406 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_1406 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1406 + 36 len 28]
                    staticcall 'console.log'.mem[_1406 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1406 + 36 len mem[_1406] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _897 * stor6 * stor4 / ext_call.return_data[0] * cd[68]
        else:
            _906 = mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 161]
            _907 = mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129]
            if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16]:
                if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                    revert with 0, 18
                if not cd[68]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 17
                        if stor6:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not cd[68]:
                    revert with 0, 18
                if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _975 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_975] = 13
                        mem[_975 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _975 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1362 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1362 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1362 + 36 len 28]
                        staticcall 'console.log'.mem[_1362 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1362 + 36 len mem[_1362] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1034] = 13
                        mem[_1034 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1034 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1366 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1366 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1366 + 36 len 28]
                        staticcall 'console.log'.mem[_1366 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1366 + 36 len mem[_1366] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                else:
                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1035] = 13
                        mem[_1035 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1035 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1370 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1370 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1370 + 36 len 28]
                        staticcall 'console.log'.mem[_1370 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1370 + 36 len mem[_1370] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1123 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1123] = 13
                        mem[_1123 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1123 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / uint128(_906) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                        _1374 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1374 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1374 + 36 len 28]
                        staticcall 'console.log'.mem[_1374 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1374 + 36 len mem[_1374] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / uint128(_906) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
            else:
                if mem[_893] and mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] > -1 / mem[_893]:
                    revert with 0, 17
                if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16]:
                    revert with 0, 18
                if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] != mem[_893]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                    revert with 0, 18
                if not cd[68]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                            revert with 0, 17
                        if stor6:
                            if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and cd[68] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not cd[68]:
                    revert with 0, 18
                if ext_call.return_data[0] * cd[68] / cd[68] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1036] = 13
                        mem[_1036 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1036 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1378 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1378 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1378 + 36 len 28]
                        staticcall 'console.log'.mem[_1378 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1378 + 36 len mem[_1378] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1124] = 13
                        mem[_1124 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1124 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1382 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1382 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1382 + 36 len 28]
                        staticcall 'console.log'.mem[_1382 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1382 + 36 len mem[_1382] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                else:
                    if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] and stor6 > -1 / mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 / stor6 != mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1125] = 13
                        mem[_1125 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1125 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * cd[68]
                        _1386 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1386 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1386 + 36 len 28]
                        staticcall 'console.log'.mem[_1386 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1386 + 36 len mem[_1386] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0 / ext_call.return_data[0] * cd[68]
                    else:
                        if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 and stor4 > -1 / mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6 * stor4 / stor4 != mem[_893] * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 177 len 16] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * cd[68]:
                            revert with 0, 18
                        _1213 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1213] = 13
                        mem[_1213 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1213 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_889)
                        mem[mem[64] + 100] = _897 * uint128(_907) / uint128(_906) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
                        _1390 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_1390 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_1390 + 36 len 28]
                        staticcall 'console.log'.mem[_1390 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1390 + 36 len mem[_1390] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _897 * uint128(_907) / uint128(_906) * stor6 * stor4 / ext_call.return_data[0] * cd[68]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _895 = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + 64 len 32 * _895] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _895]
    return 32, mem[mem[64] + 32 len (32 * _895) + 32]
}

function sub_f538ca2e(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == bool(cd[68])
    if cd[68]:
        staticcall address(cd[4]).exchangeRate() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        if not ('cd', 36).length:
            staticcall address(cd[4]).bentoBox() with:
                    gas gas_remaining wei
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(cd[4]).collateral() with:
                    gas gas_remaining wei
            mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            staticcall address(ext_call.return_data[0]).totals(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129 len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not bool(ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193 <= test266151307()):
                revert with 0, 65
            require ext_call.return_data[0] == ext_call.return_data[16 len 16]
            mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[48 len 16]
            mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161] = ext_call.return_data[32]
            staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
                    gas gas_remaining wei
            mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _1792 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                staticcall address(cd[4]).userCollateralShare(address arg1) with:
                        gas gas_remaining wei
                       args address(_1792)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1813 = mem[_1805]
                if 0 == mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                    if not ext_call.return_data[0]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if mem[_1805] and stor6 > -1 / mem[_1805]:
                                revert with 0, 17
                            if stor6:
                                if mem[_1805] * stor6 / stor6 != mem[_1805]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if mem[_1805] * stor6 and stor4 > -1 / mem[_1805] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if mem[_1805] * stor6 * stor4 / stor4 != mem[_1805] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _1893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1893] = 13
                            mem[_1893 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1893 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1792)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2682 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2682 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2682 + 36 len 28]
                            staticcall 'console.log'.mem[_2682 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2682 + 36 len mem[_2682] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _1954 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1954] = 13
                            mem[_1954 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1954 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1792)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2686 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2686 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2686 + 36 len 28]
                            staticcall 'console.log'.mem[_2686 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2686 + 36 len mem[_2686] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1805] and stor6 > -1 / mem[_1805]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if mem[_1805] * stor6 / stor6 != mem[_1805]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _1955 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1955] = 13
                            mem[_1955 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1955 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1792)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2690 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2690 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2690 + 36 len 28]
                            staticcall 'console.log'.mem[_2690 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2690 + 36 len mem[_2690] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if mem[_1805] * stor6 and stor4 > -1 / mem[_1805] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if mem[_1805] * stor6 * stor4 / stor4 != mem[_1805] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2074] = 13
                            mem[_2074 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2074 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1792)
                            mem[mem[64] + 100] = _1813 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2694 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2694 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2694 + 36 len 28]
                            staticcall 'console.log'.mem[_2694 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2694 + 36 len mem[_2694] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = _1813 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    _1828 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161]
                    _1829 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129]
                    if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                        if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not stor6:
                                if stor4:
                                    if False and stor4 > 0:
                                        revert with 0, 17
                                    if stor4:
                                        if 0 / stor4:
                                            revert with 0, 'BoringMath: Mul Overflow'
                            else:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 17
                                if stor6:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                        revert with 0, 'BoringMath: Mul Overflow'
                                    if stor4:
                                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 17
                                        if stor4:
                                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                                revert with 0, 'BoringMath: Mul Overflow'
                            revert with 0, 18
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor6:
                            if not stor4:
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _1968 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1968] = 13
                                mem[_1968 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _1968 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2650 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2650 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2650 + 36 len 28]
                                staticcall 'console.log'.mem[_2650 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2650 + 36 len mem[_2650] - 4]
                            else:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if not stor4:
                                    revert with 0, 18
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2084] = 13
                                mem[_2084 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2084 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2654 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2654 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2654 + 36 len 28]
                                staticcall 'console.log'.mem[_2654 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2654 + 36 len mem[_2654] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if not stor6:
                                revert with 0, 18
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not stor4:
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2085 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2085] = 13
                                mem[_2085 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2085 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2658 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2658 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2658 + 36 len 28]
                                staticcall 'console.log'.mem[_2658 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2658 + 36 len mem[_2658] - 4]
                                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            else:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if not stor4:
                                    revert with 0, 18
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2264 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2264] = 13
                                mem[_2264 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2264 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / uint128(_1828) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2662 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2662 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2662 + 36 len 28]
                                staticcall 'console.log'.mem[_2662 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2662 + 36 len mem[_2662] - 4]
                                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / uint128(_1828) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1805] and mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] > -1 / mem[_1805]:
                            revert with 0, 17
                        if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                            revert with 0, 18
                        if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] != mem[_1805]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not stor6:
                                if stor4:
                                    if False and stor4 > 0:
                                        revert with 0, 17
                                    if stor4:
                                        if 0 / stor4:
                                            revert with 0, 'BoringMath: Mul Overflow'
                            else:
                                if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 17
                                if stor6:
                                    if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                        revert with 0, 'BoringMath: Mul Overflow'
                                    if stor4:
                                        if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 17
                                        if stor4:
                                            if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                                revert with 0, 'BoringMath: Mul Overflow'
                            revert with 0, 18
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor6:
                            if not stor4:
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2086 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2086] = 13
                                mem[_2086 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2086 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2666 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2666 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2666 + 36 len 28]
                                staticcall 'console.log'.mem[_2666 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2666 + 36 len mem[_2666] - 4]
                            else:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if not stor4:
                                    revert with 0, 18
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2265 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2265] = 13
                                mem[_2265 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2265 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2670 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2670 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2670 + 36 len 28]
                                staticcall 'console.log'.mem[_2670 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2670 + 36 len mem[_2670] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if not stor6:
                                revert with 0, 18
                            if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not stor4:
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2266 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2266] = 13
                                mem[_2266 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2266 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2674 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2674 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2674 + 36 len 28]
                                staticcall 'console.log'.mem[_2674 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2674 + 36 len mem[_2674] - 4]
                                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            else:
                                if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if not stor4:
                                    revert with 0, 18
                                if mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1805] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    revert with 0, 18
                                _2448 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2448] = 13
                                mem[_2448 + 32] = 'borrowElastic' << 152
                                mem[mem[64] + 36] = 96
                                mem[mem[64] + 132] = 13
                                s = 0
                                while s < 13:
                                    mem[s + mem[64] + 164] = mem[s + _2448 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 177] = 0
                                mem[mem[64] + 68] = address(_1792)
                                mem[mem[64] + 100] = _1813 * uint128(_1829) / uint128(_1828) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                                _2678 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_2678 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2678 + 36 len 28]
                                staticcall 'console.log'.mem[_2678 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_2678 + 36 len mem[_2678] - 4]
                                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                    revert with 0, 50
                                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = _1813 * uint128(_1829) / uint128(_1828) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _1812 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 64 len 32 * _1812] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _1812]
            return 32, mem[mem[64] + 32 len (32 * _1812) + 32]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        staticcall address(cd[4]).bentoBox() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(cd[4]).collateral() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).totals(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool(ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161] = ext_call.return_data[32]
        staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1795 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            staticcall address(cd[4]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(_1795)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1807 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1815 = mem[_1807]
            if 0 == mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                if not ext_call.return_data[0]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if mem[_1807] and stor6 > -1 / mem[_1807]:
                            revert with 0, 17
                        if stor6:
                            if mem[_1807] * stor6 / stor6 != mem[_1807]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if mem[_1807] * stor6 and stor4 > -1 / mem[_1807] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if mem[_1807] * stor6 * stor4 / stor4 != mem[_1807] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1895] = 13
                        mem[_1895 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1895 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1795)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2730 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2730 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2730 + 36 len 28]
                        staticcall 'console.log'.mem[_2730 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2730 + 36 len mem[_2730] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = 13
                        mem[_1958 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1958 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1795)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2734 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2734 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2734 + 36 len 28]
                        staticcall 'console.log'.mem[_2734 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2734 + 36 len mem[_2734] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1807] and stor6 > -1 / mem[_1807]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if mem[_1807] * stor6 / stor6 != mem[_1807]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1959] = 13
                        mem[_1959 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1959 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1795)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2738 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2738 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2738 + 36 len 28]
                        staticcall 'console.log'.mem[_2738 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2738 + 36 len mem[_2738] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1807] * stor6 and stor4 > -1 / mem[_1807] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if mem[_1807] * stor6 * stor4 / stor4 != mem[_1807] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2077] = 13
                        mem[_2077 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2077 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1795)
                        mem[mem[64] + 100] = _1815 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2742 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2742 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2742 + 36 len 28]
                        staticcall 'console.log'.mem[_2742 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2742 + 36 len mem[_2742] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = _1815 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                _1830 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161]
                _1831 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129]
                if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                    if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _1971 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1971] = 13
                            mem[_1971 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1971 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2698 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2698 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2698 + 36 len 28]
                            staticcall 'console.log'.mem[_2698 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2698 + 36 len mem[_2698] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2088] = 13
                            mem[_2088 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2088 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2702 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2702 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2702 + 36 len 28]
                            staticcall 'console.log'.mem[_2702 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2702 + 36 len mem[_2702] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2089 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2089] = 13
                            mem[_2089 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2089 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2706 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2706 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2706 + 36 len 28]
                            staticcall 'console.log'.mem[_2706 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2706 + 36 len mem[_2706] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2267 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2267] = 13
                            mem[_2267 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2267 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / uint128(_1830) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2710 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2710 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2710 + 36 len 28]
                            staticcall 'console.log'.mem[_2710 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2710 + 36 len mem[_2710] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / uint128(_1830) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1807] and mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] > -1 / mem[_1807]:
                        revert with 0, 17
                    if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                        revert with 0, 18
                    if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] != mem[_1807]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2090] = 13
                            mem[_2090 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2090 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2714 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2714 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2714 + 36 len 28]
                            staticcall 'console.log'.mem[_2714 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2714 + 36 len mem[_2714] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2268] = 13
                            mem[_2268 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2268 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2718 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2718 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2718 + 36 len 28]
                            staticcall 'console.log'.mem[_2718 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2718 + 36 len mem[_2718] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2269 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2269] = 13
                            mem[_2269 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2269 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2722 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2722 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2722 + 36 len 28]
                            staticcall 'console.log'.mem[_2722 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2722 + 36 len mem[_2722] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1807] * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2449 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2449] = 13
                            mem[_2449 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2449 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1795)
                            mem[mem[64] + 100] = _1815 * uint128(_1831) / uint128(_1830) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2726 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2726 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2726 + 36 len 28]
                            staticcall 'console.log'.mem[_2726 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2726 + 36 len mem[_2726] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = _1815 * uint128(_1831) / uint128(_1830) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1814 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 64 len 32 * _1814] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _1814]
        return 32, mem[mem[64] + 32 len (32 * _1814) + 32]
    call address(cd[4]).updateExchangeRate() with:
         gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + 97 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(cd[4]).exchangeRate() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if not ('cd', 36).length:
        staticcall address(cd[4]).bentoBox() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(cd[4]).collateral() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).totals(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not bool(ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193 <= test266151307()):
            revert with 0, 65
        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[48 len 16]
        mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161] = ext_call.return_data[32]
        staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
                gas gas_remaining wei
        mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (9 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193
        require return_data.size >= 32
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1798 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            staticcall address(cd[4]).userCollateralShare(address arg1) with:
                    gas gas_remaining wei
                   args address(_1798)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1809 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1817 = mem[_1809]
            if 0 == mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                if not ext_call.return_data[0]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if mem[_1809] and stor6 > -1 / mem[_1809]:
                            revert with 0, 17
                        if stor6:
                            if mem[_1809] * stor6 / stor6 != mem[_1809]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if mem[_1809] * stor6 and stor4 > -1 / mem[_1809] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if mem[_1809] * stor6 * stor4 / stor4 != mem[_1809] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1897] = 13
                        mem[_1897 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1897 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1798)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2778 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2778 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2778 + 36 len 28]
                        staticcall 'console.log'.mem[_2778 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2778 + 36 len mem[_2778] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1962 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1962] = 13
                        mem[_1962 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1962 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1798)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2782 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2782 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2782 + 36 len 28]
                        staticcall 'console.log'.mem[_2782 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2782 + 36 len mem[_2782] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1809] and stor6 > -1 / mem[_1809]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if mem[_1809] * stor6 / stor6 != mem[_1809]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1963] = 13
                        mem[_1963 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1963 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1798)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2786 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2786 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2786 + 36 len 28]
                        staticcall 'console.log'.mem[_2786 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2786 + 36 len mem[_2786] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1809] * stor6 and stor4 > -1 / mem[_1809] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if mem[_1809] * stor6 * stor4 / stor4 != mem[_1809] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2080] = 13
                        mem[_2080 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2080 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1798)
                        mem[mem[64] + 100] = _1817 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2790 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2790 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2790 + 36 len 28]
                        staticcall 'console.log'.mem[_2790 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2790 + 36 len mem[_2790] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = _1817 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                _1832 = mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161]
                _1833 = mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129]
                if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                    if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _1974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1974] = 13
                            mem[_1974 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _1974 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2746 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2746 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2746 + 36 len 28]
                            staticcall 'console.log'.mem[_2746 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2746 + 36 len mem[_2746] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2092] = 13
                            mem[_2092 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2092 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2750 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2750 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2750 + 36 len 28]
                            staticcall 'console.log'.mem[_2750 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2750 + 36 len mem[_2750] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2093 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2093] = 13
                            mem[_2093 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2093 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2754 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2754 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2754 + 36 len 28]
                            staticcall 'console.log'.mem[_2754 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2754 + 36 len mem[_2754] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2270 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2270] = 13
                            mem[_2270 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2270 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / uint128(_1832) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2758 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2758 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2758 + 36 len 28]
                            staticcall 'console.log'.mem[_2758 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2758 + 36 len mem[_2758] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / uint128(_1832) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1809] and mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] > -1 / mem[_1809]:
                        revert with 0, 17
                    if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                        revert with 0, 18
                    if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] != mem[_1809]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not stor6:
                            if stor4:
                                if False and stor4 > 0:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / stor4:
                                        revert with 0, 'BoringMath: Mul Overflow'
                        else:
                            if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 17
                            if stor6:
                                if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                    revert with 0, 'BoringMath: Mul Overflow'
                                if stor4:
                                    if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 17
                                    if stor4:
                                        if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                            revert with 0, 'BoringMath: Mul Overflow'
                        revert with 0, 18
                    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor6:
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2094 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2094] = 13
                            mem[_2094 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2094 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2762 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2762 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2762 + 36 len 28]
                            staticcall 'console.log'.mem[_2762 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2762 + 36 len mem[_2762] - 4]
                        else:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2271] = 13
                            mem[_2271 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2271 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2766 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2766 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2766 + 36 len 28]
                            staticcall 'console.log'.mem[_2766 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2766 + 36 len mem[_2766] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not stor4:
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2272] = 13
                            mem[_2272 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2272 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2770 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2770 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2770 + 36 len 28]
                            staticcall 'console.log'.mem[_2770 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2770 + 36 len mem[_2770] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        else:
                            if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 17
                            if not stor4:
                                revert with 0, 18
                            if mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1809] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                revert with 0, 18
                            _2450 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2450] = 13
                            mem[_2450 + 32] = 'borrowElastic' << 152
                            mem[mem[64] + 36] = 96
                            mem[mem[64] + 132] = 13
                            s = 0
                            while s < 13:
                                mem[s + mem[64] + 164] = mem[s + _2450 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 177] = 0
                            mem[mem[64] + 68] = address(_1798)
                            mem[mem[64] + 100] = _1817 * uint128(_1833) / uint128(_1832) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                            _2774 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_2774 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2774 + 36 len 28]
                            staticcall 'console.log'.mem[_2774 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_2774 + 36 len mem[_2774] - 4]
                            if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                                revert with 0, 50
                            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = _1817 * uint128(_1833) / uint128(_1832) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _1816 = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]
        mem[mem[64] + 64 len 32 * _1816] = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _1816]
        return 32, mem[mem[64] + 32 len (32 * _1816) + 32]
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    staticcall address(cd[4]).bentoBox() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(cd[4]).collateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).totals(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161] = ext_call.return_data[32]
    staticcall address(cd[4]).LIQUIDATION_MULTIPLIER() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + (9 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 193
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _1801 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        staticcall address(cd[4]).userCollateralShare(address arg1) with:
                gas gas_remaining wei
               args address(_1801)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1811 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1819 = mem[_1811]
        if 0 == mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
            if not ext_call.return_data[0]:
                if not stor6:
                    if stor4:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if stor4:
                            if 0 / stor4:
                                revert with 0, 'BoringMath: Mul Overflow'
                else:
                    if mem[_1811] and stor6 > -1 / mem[_1811]:
                        revert with 0, 17
                    if stor6:
                        if mem[_1811] * stor6 / stor6 != mem[_1811]:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if stor4:
                            if mem[_1811] * stor6 and stor4 > -1 / mem[_1811] * stor6:
                                revert with 0, 17
                            if stor4:
                                if mem[_1811] * stor6 * stor4 / stor4 != mem[_1811] * stor6:
                                    revert with 0, 'BoringMath: Mul Overflow'
                revert with 0, 18
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'BoringMath: Mul Overflow'
            if not stor6:
                if not stor4:
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 18
                    _1899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1899] = 13
                    mem[_1899 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _1899 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_1801)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    _2826 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2826 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2826 + 36 len 28]
                    staticcall 'console.log'.mem[_2826 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2826 + 36 len mem[_2826] - 4]
                else:
                    if False and stor4 > 0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if 0 / stor4:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 18
                    _1966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1966] = 13
                    mem[_1966 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _1966 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_1801)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    _2830 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2830 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2830 + 36 len 28]
                    staticcall 'console.log'.mem[_2830 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2830 + 36 len mem[_2830] - 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if mem[_1811] and stor6 > -1 / mem[_1811]:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if mem[_1811] * stor6 / stor6 != mem[_1811]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor4:
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 18
                    _1967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1967] = 13
                    mem[_1967 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _1967 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_1801)
                    mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    _2834 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2834 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2834 + 36 len 28]
                    staticcall 'console.log'.mem[_2834 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2834 + 36 len mem[_2834] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1811] * stor6 and stor4 > -1 / mem[_1811] * stor6:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if mem[_1811] * stor6 * stor4 / stor4 != mem[_1811] * stor6:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 18
                    _2083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2083] = 13
                    mem[_2083 + 32] = 'borrowElastic' << 152
                    mem[mem[64] + 36] = 96
                    mem[mem[64] + 132] = 13
                    s = 0
                    while s < 13:
                        mem[s + mem[64] + 164] = mem[s + _2083 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 177] = 0
                    mem[mem[64] + 68] = address(_1801)
                    mem[mem[64] + 100] = _1819 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                    _2838 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2838 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2838 + 36 len 28]
                    staticcall 'console.log'.mem[_2838 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2838 + 36 len mem[_2838] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = _1819 * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
        else:
            _1834 = mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 161]
            _1835 = mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 129]
            if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if stor6:
                            if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _1977 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1977] = 13
                        mem[_1977 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _1977 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2794 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2794 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2794 + 36 len 28]
                        staticcall 'console.log'.mem[_2794 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2794 + 36 len mem[_2794] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2096] = 13
                        mem[_2096 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2096 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2798 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2798 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2798 + 36 len 28]
                        staticcall 'console.log'.mem[_2798 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2798 + 36 len mem[_2798] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2097] = 13
                        mem[_2097 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2097 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2802 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2802 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2802 + 36 len 28]
                        staticcall 'console.log'.mem[_2802 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2802 + 36 len mem[_2802] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != 0 / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2273] = 13
                        mem[_2273 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2273 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / uint128(_1834) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2806 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2806 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2806 + 36 len 28]
                        staticcall 'console.log'.mem[_2806 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2806 + 36 len mem[_2806] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / uint128(_1834) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
            else:
                if mem[_1811] and mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] > -1 / mem[_1811]:
                    revert with 0, 17
                if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16]:
                    revert with 0, 18
                if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] != mem[_1811]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not stor6:
                        if stor4:
                            if False and stor4 > 0:
                                revert with 0, 17
                            if stor4:
                                if 0 / stor4:
                                    revert with 0, 'BoringMath: Mul Overflow'
                    else:
                        if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                            revert with 0, 17
                        if stor6:
                            if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                                revert with 0, 'BoringMath: Mul Overflow'
                            if stor4:
                                if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                    revert with 0, 17
                                if stor4:
                                    if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                                        revert with 0, 'BoringMath: Mul Overflow'
                    revert with 0, 18
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not stor6:
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2098] = 13
                        mem[_2098 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2098 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2810 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2810 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2810 + 36 len 28]
                        staticcall 'console.log'.mem[_2810 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2810 + 36 len mem[_2810] - 4]
                    else:
                        if False and stor4 > 0:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if 0 / stor4:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2274] = 13
                        mem[_2274 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2274 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2814 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2814 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2814 + 36 len 28]
                        staticcall 'console.log'.mem[_2814 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2814 + 36 len mem[_2814] - 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                else:
                    if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] and stor6 > -1 / mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 / stor6 != mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16]:
                        revert with 0, 'BoringMath: Mul Overflow'
                    if not stor4:
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2275] = 13
                        mem[_2275 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2275 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2818 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2818 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2818 + 36 len 28]
                        staticcall 'console.log'.mem[_2818 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2818 + 36 len mem[_2818] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = 0 / ext_call.return_data[0] * ext_call.return_data[0]
                    else:
                        if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 and stor4 > -1 / mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6 * stor4 / stor4 != mem[_1811] * mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 145 len 16] / mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 177 len 16] * stor6:
                            revert with 0, 'BoringMath: Mul Overflow'
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            revert with 0, 18
                        _2451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2451] = 13
                        mem[_2451 + 32] = 'borrowElastic' << 152
                        mem[mem[64] + 36] = 96
                        mem[mem[64] + 132] = 13
                        s = 0
                        while s < 13:
                            mem[s + mem[64] + 164] = mem[s + _2451 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 177] = 0
                        mem[mem[64] + 68] = address(_1801)
                        mem[mem[64] + 100] = _1819 * uint128(_1835) / uint128(_1834) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
                        _2822 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_2822 + 32] = 0x7c8121700000000000000000000000000000000000000000000000000000000 or mem[_2822 + 36 len 28]
                        staticcall 'console.log'.mem[_2822 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2822 + 36 len mem[_2822] - 4]
                        if idx >= mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = _1819 * uint128(_1835) / uint128(_1834) * stor6 * stor4 / ext_call.return_data[0] * ext_call.return_data[0]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _1818 = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]
    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97]
    mem[mem[64] + 64 len 32 * _1818] = mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _1818]
    return 32, mem[mem[64] + 32 len (32 * _1818) + 32]
}



}
