contract main {




// =====================  Runtime code  =====================


const sub_ebfff29f(?) = 0xd53c8bd3836fdb90df5e7f12b7d29e34dd9865b6ea01f13932cd7cb73ffaba28

const SALE_MANAGER_ROLE = 0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956

const PAUSE_MANAGER_ROLE = 0x356a809dfdea9198dd76fb76bf6d403ecf13ea675eb89e1eda2db2c4a4676a26


mapping of struct roleAdmin;
uint8 stor1;
mapping of struct stor2;
mapping of struct stor3;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() {
    return bool(stor1)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function pause() {
    if roleAdmin[0x356a809dfdea9198dd76fb76bf6d403ecf13ea675eb89e1eda2db2c4a4676a26][address(msg.sender)].field_0:
        if stor1:
            revert with 0, 'Pausable: paused'
        stor1 = 1
        emit Paused(msg.sender);
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
        s = 0x356a809dfdea9198dd76fb76bf6d403ecf13ea675eb89e1eda2db2c4a4676a26
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

function unpause() {
    if roleAdmin[0x356a809dfdea9198dd76fb76bf6d403ecf13ea675eb89e1eda2db2c4a4676a26][address(msg.sender)].field_0:
        if not stor1:
            revert with 0, 'Pausable: not paused'
        stor1 = 0
        emit Unpaused(msg.sender);
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
        s = 0x356a809dfdea9198dd76fb76bf6d403ecf13ea675eb89e1eda2db2c4a4676a26
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

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[0xd53c8bd3836fdb90df5e7f12b7d29e34dd9865b6ea01f13932cd7cb73ffaba28][address(msg.sender)].field_0:
        require arg2 <= eth.balance(this.address)
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
    s = 0xd53c8bd3836fdb90df5e7f12b7d29e34dd9865b6ea01f13932cd7cb73ffaba28
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

function sub_117ef074(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require arg5 == address(arg5)
    if not roleAdmin[0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362][address(msg.sender)].field_0:
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
            s = 0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362
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
    if not stor1:
        revert with 0, 'Pausable: not paused'
    require uint16(arg1) > 0
    if stor2[arg1 << 240].field_0 != uint16(arg1):
        revert with 0, 'Listing does not exist'
    stor2[arg1 << 240].field_256 = arg2
    stor2[arg1 << 240].field_512 = arg3
    stor2[arg1 << 240].field_768 = arg4
    stor2[arg1 << 240].field_24 = address(arg5)
}

function sub_f3ef7058(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if not roleAdmin[0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362][address(msg.sender)].field_0:
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
            s = 0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362
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
    if not stor1:
        revert with 0, 'Pausable: not paused'
    require uint16(arg1) > 0
    if stor2[arg1 << 240].field_0 != uint16(arg1):
        revert with 0, 'Listing does not exist'
    stor2[arg1 << 240].field_1040 = uint16(arg3)
    stor2[arg1 << 240].field_1056 = uint16(arg2)
    stor2[arg1 << 240].field_1072 = uint16(arg4)
    stor2[arg1 << 240].field_1088 = 0
    emit 0x9d6ddaec: arg2 << 240, arg3 << 240, uint16(arg4), uint16(arg1)
}

function sub_93c7f7c1(?) {
    require calldata.size - 4 >= 256
    require arg1 == uint16(arg1)
    require arg5 == address(arg5)
    require arg6 == uint16(arg6)
    require arg7 == uint16(arg7)
    require arg8 == uint16(arg8)
    if not roleAdmin[0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362][address(msg.sender)].field_0:
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
            s = 0xfe988301af8238f779281a300de031815cd01b48e9f1ae47a0f91ed658421362
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
    require uint16(arg1) > 0
    if stor2[arg1 << 240].field_0:
        revert with 0, 'Listing already exists'
    stor2[arg1 << 240].field_256 = arg2
    stor2[arg1 << 240].field_512 = arg3
    stor2[arg1 << 240].field_768 = arg4
    stor2[arg1 << 240].field_0 = uint16(arg1)
    stor2[arg1 << 240].field_16 = 0
    stor2[arg1 << 240].field_1024 = uint16(arg1)
    stor2[arg1 << 240].field_1040 = uint16(arg7)
    stor2[arg1 << 240].field_1056 = uint16(arg6)
    stor2[arg1 << 240].field_1072 = uint16(arg8)
    emit 0x9d6ddaec: arg6 << 240, arg7 << 240, uint16(arg8), uint16(arg1)
}

function sub_c6e539a9(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if not roleAdmin[0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
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
            s = 0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956
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
    if stor1:
        revert with 0, 'Pausable: paused'
    require stor2[arg3 << 240].field_0
    require stor2[arg3 << 240].field_0 == uint16(arg3)
    if stor2[arg3 << 240].field_1056 > -stor2[arg3 << 240].field_1072 + 65535:
        revert with 0, 17
    if uint16(stor2[arg3 << 240].field_1072 + stor2[arg3 << 240].field_1056) < uint16(arg4):
        revert with 0, 'Out of stock'
    if stor3[arg1].field_0:
        revert with 0, 'Order already exists'
    require stor2[arg3 << 240].field_0
    stor3[arg1].field_0 = arg1
    stor3[arg1].field_256 = address(arg2)
    stor3[arg1].field_416 = uint16(arg3)
    stor3[arg1].field_432 = uint16(arg4)
    stor3[arg1].field_448 = uint16(arg4)
    stor3[arg1].field_512 = 0
    emit 0x3fe3282a: arg4 << 240, 0, arg1, address(arg2), uint16(arg3)
    if stor2[arg3 << 240].field_1056 >= uint16(arg4):
        stor2[arg3 << 240].field_1056 = uint16(stor2[arg3 << 240].field_1056 - uint16(arg4))
    else:
        if stor2[arg3 << 240].field_1056 > -stor2[arg3 << 240].field_1072 + 65535:
            revert with 0, 17
        if uint16(stor2[arg3 << 240].field_1072 + stor2[arg3 << 240].field_1056) < uint16(arg4):
            revert with 0, 'Out of stock'
        stor2[arg3 << 240].field_1056 = 0
        if uint16(arg4) < stor2[arg3 << 240].field_1056:
            revert with 0, 17
        if stor2[arg3 << 240].field_1072 < uint16(uint16(arg4) - stor2[arg3 << 240].field_1056):
            revert with 0, 17
        stor2[arg3 << 240].field_1072 = uint16(stor2[arg3 << 240].field_1072 - uint16(uint16(arg4) - stor2[arg3 << 240].field_1056))
    emit 0x9d6ddaec: stor2[arg3 << 240].field_1024, stor2[arg3 << 240].field_1024, stor2[arg3 << 240].field_1072, stor2[arg3 << 240].field_1024
}

function sub_9c468837(?) {
    require calldata.size - 4 >= 96
    require cd[36] == uint16(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 68).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(32 * ('cd', 68).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if stor1:
        revert with 0, 'Pausable: paused'
    require stor2[cd[36] << 240].field_0
    require stor2[cd[36] << 240].field_0 == uint16(cd[36])
    require stor3[cd[4]].field_0
    require cd[4] == stor3[cd[4]].field_0
    require stor3[cd[4]].field_416 == uint16(cd[36])
    require stor3[cd[4]].field_448 >= uint16(('cd', 68).length)
    require ext_code.size(stor2[cd[36] << 240].field_24)
    call stor2[cd[36] << 240].field_24.0x81af616 with:
         gas gas_remaining wei
        args ('cd', 68).length << 240, stor3[cd[4]].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor3[cd[4]].field_448 < uint16(('cd', 68).length):
        revert with 0, 17
    stor3[cd[4]].field_448 = uint16(stor3[cd[4]].field_448 - uint16(('cd', 68).length))
    mem[ceil32(32 * ('cd', 68).length) + 97] = uint16(('cd', 68).length)
    emit 0xeba2172f: ('cd', 68).length << 240, stor3[cd[4]].field_256, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[4], stor3[cd[4]].field_256, uint16(cd[36])
    if not stor3[cd[4]].field_448:
        emit 0x35efa447: stor3[cd[4]].field_432, cd[4], stor3[cd[4]].field_256, uint16(cd[36])
}

function sub_6affe91c(?) payable {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if stor1:
        revert with 0, 'Pausable: paused'
    require stor2[arg3 << 240].field_0
    require stor2[arg3 << 240].field_0 == uint16(arg3)
    if stor2[arg3 << 240].field_768 and uint16(arg4) > -1 / stor2[arg3 << 240].field_768:
        revert with 0, 17
    if msg.value < stor2[arg3 << 240].field_768 * uint16(arg4):
        revert with 0, 'Price too low'
    if msg.value < arg6:
        revert with 0, 'Price too low'
    if block.timestamp >= arg5:
        revert with 0, 'Expired'
    if stor2[arg3 << 240].field_1040 > -stor2[arg3 << 240].field_1072 + 65535:
        revert with 0, 17
    if uint16(stor2[arg3 << 240].field_1072 + stor2[arg3 << 240].field_1040) < uint16(arg4):
        revert with 0, 'Out of stock'
    if chainid > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg9 < 35:
        revert with 0, 17
    if arg9 - 35 < 2 * chainid:
        revert with 0, 17
    if 27 > !(arg9 + -(2 * chainid) - 35):
        revert with 0, 17
    if arg8 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8(arg9 + -(2 * chainid) - 8) != 27:
        if uint8(arg9 + -(2 * chainid) - 8) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, address(arg2), this.address, uint16(arg3), uint16(arg4), arg6, arg5, chainid)), arg9 + -(2 * chainid) - 8 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if not roleAdmin[0x4a9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956][address(signer)].field_0:
        revert with 0, 'Not authorized'
    if stor3[arg1].field_0:
        revert with 0, 'Order already exists'
    require stor2[arg3 << 240].field_0
    stor3[arg1].field_0 = arg1
    stor3[arg1].field_256 = address(arg2)
    stor3[arg1].field_416 = uint16(arg3)
    stor3[arg1].field_432 = uint16(arg4)
    stor3[arg1].field_448 = uint16(arg4)
    stor3[arg1].field_512 = msg.value
    emit 0x3fe3282a: arg4 << 240, msg.value, arg1, address(arg2), uint16(arg3)
    if stor2[arg3 << 240].field_1040 >= uint16(arg4):
        stor2[arg3 << 240].field_1040 = uint16(stor2[arg3 << 240].field_1040 - uint16(arg4))
    else:
        if stor2[arg3 << 240].field_1040 > -stor2[arg3 << 240].field_1072 + 65535:
            revert with 0, 17
        if uint16(stor2[arg3 << 240].field_1072 + stor2[arg3 << 240].field_1040) < uint16(arg4):
            revert with 0, 'Out of stock'
        stor2[arg3 << 240].field_1040 = 0
        if uint16(arg4) < stor2[arg3 << 240].field_1040:
            revert with 0, 17
        if stor2[arg3 << 240].field_1072 < uint16(uint16(arg4) - stor2[arg3 << 240].field_1040):
            revert with 0, 17
        stor2[arg3 << 240].field_1072 = uint16(stor2[arg3 << 240].field_1072 - uint16(uint16(arg4) - stor2[arg3 << 240].field_1040))
    emit 0x9d6ddaec: stor2[arg3 << 240].field_1024, stor2[arg3 << 240].field_1024, stor2[arg3 << 240].field_1072, stor2[arg3 << 240].field_1024
}



}
