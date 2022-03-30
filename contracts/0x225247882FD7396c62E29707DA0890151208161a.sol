contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint8 stor99;
mapping of uint256 threshold;
mapping of uint8 stor102;
mapping of uint8 stor103;
mapping of uint256 stor104;
mapping of uint256 sub_f21b8af9;
mapping of uint256 sub_71b47e18;
mapping of uint256 sub_12d365dd;
mapping of uint256 sub_09db763e;
array of struct sub_5e08378c;
mapping of struct roleAdmin;
uint256 chainID;
mapping of address supportToken;
mapping of uint8 stor262;
mapping of uint256 sub_7f856013;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function sub_09db763e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_09db763e[arg1]
}

function txMinted(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor262[arg1[all]])
}

function sub_12d365dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_12d365dd[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function supportToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return supportToken[arg1]
}

function sub_5e08378c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= uint256(sub_5e08378c[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return address(sub_5e08378c[address(arg1)][arg2].field_0)
}

function sub_71b47e18(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_71b47e18[arg1]
}

function sub_7f856013(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7f856013[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function chainID() {
    return chainID
}

function sub_c0f1abdd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_5e08378c[address(arg1)].field_0)
}

function threshold(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return threshold[arg1]
}

function sub_f21b8af9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f21b8af9[arg1]
}

function _fallback() payable {
    revert
}

function sub_b8216027(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sha3(address(arg1), address(arg2), chainID)
}

function sub_f7725651(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    sub_7f856013[address(arg1)] = arg2
    emit 0xd0e1c9cb: address(arg1), sub_7f856013[address(arg1)], arg2
}

function setThreshold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    threshold[address(arg1)] = arg2
    emit ThresholdChanged(address(arg1), threshold[address(arg1)], arg2);
}

function removeSupportToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if not supportToken[address(arg1)]:
        revert with 0, 'Toke not Supported'
    supportToken[address(arg1)] = 0
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function addSupportToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if supportToken[address(arg1)]:
        revert with 0, 'Toke already Supported'
    supportToken[address(arg1)] = arg2
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

function initialize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    chainID = arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setFee(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if arg3 > 10^18:
        revert with 0, 'fee ratio not correct'
    if arg5 > 10^18:
        revert with 0, 'fee ratio not correct'
    sub_71b47e18[address(arg1)] = arg2
    sub_f21b8af9[address(arg1)] = arg3
    sub_09db763e[address(arg1)] = arg4
    sub_12d365dd[address(arg1)] = arg5
    emit 0xada58b95: address(arg1), arg2, arg3, arg4, arg5
}

function sub_a0052546(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0):
        revert with 0, 'Toll::account was feeTo already'
    if not uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0):
        uint256(sub_5e08378c[address(arg1)].field_0)++
        address(sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)].field_0)].field_0) = address(arg2)
        Mask(96, 0, sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)].field_0)].field_160) = 0
        uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0) = uint256(sub_5e08378c[address(arg1)].field_0)
    emit 0xaab99c31: address(arg1), address(arg2)
}

function calculateFee(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg3:
        if arg2 and sub_12d365dd[address(arg1)] > -1 / arg2:
            revert with 0, 17
        if sub_09db763e[address(arg1)] > !(arg2 * sub_12d365dd[address(arg1)] / 10^18):
            revert with 0, 17
        if arg2 < sub_09db763e[address(arg1)] + (arg2 * sub_12d365dd[address(arg1)] / 10^18):
            revert with 0, 17
        return sub_09db763e[address(arg1)] + (arg2 * sub_12d365dd[address(arg1)] / 10^18), 
               arg2 - sub_09db763e[address(arg1)] - (arg2 * sub_12d365dd[address(arg1)] / 10^18)
    if arg2 and sub_f21b8af9[address(arg1)] > -1 / arg2:
        revert with 0, 17
    if sub_71b47e18[address(arg1)] > !(arg2 * sub_f21b8af9[address(arg1)] / 10^18):
        revert with 0, 17
    if arg2 < sub_71b47e18[address(arg1)] + (arg2 * sub_f21b8af9[address(arg1)] / 10^18):
        revert with 0, 17
    return sub_71b47e18[address(arg1)] + (arg2 * sub_f21b8af9[address(arg1)] / 10^18), 
           arg2 - sub_71b47e18[address(arg1)] - (arg2 * sub_f21b8af9[address(arg1)] / 10^18)
}

function removeSupportTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'Bridge::only admin can call'
        if not supportToken[address(mem[(32 * idx) + 128])]:
            revert with 0, 'Toke not Supported'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 261
        supportToken[address(mem[(32 * idx) + 128])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function sub_7b58453d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if bool(uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0)) != 1:
        revert with 0, 'Toll::account is not feeTo'
    if uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0):
        if uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0) < 1:
            revert with 0, 17
        if uint256(sub_5e08378c[address(arg1)].field_0) < 1:
            revert with 0, 17
        if uint256(sub_5e08378c[address(arg1)].field_0) - 1 >= uint256(sub_5e08378c[address(arg1)].field_0):
            revert with 0, 50
        if uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0) - 1 >= uint256(sub_5e08378c[address(arg1)].field_0):
            revert with 0, 50
        uint256(sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0)].field_0) = uint256(sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)].field_0)].field_0)
        uint256(sub_5e08378c[address(arg1)][1][uint256(sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)].field_0)].field_0)].field_0) = uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0)
        if not uint256(sub_5e08378c[address(arg1)].field_0):
            revert with 0, 49
        uint256(sub_5e08378c[address(arg1)][uint256(sub_5e08378c[address(arg1)].field_0)].field_0) = 0
        uint256(sub_5e08378c[address(arg1)].field_0)--
        uint256(sub_5e08378c[address(arg1)][1][address(arg2)].field_0) = 0
    emit 0x1162c56e: address(arg1), address(arg2)
}

function addSupportTokens(address[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'Token length not match'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not roleAdmin[0][address(msg.sender)].field_0:
            revert with 0, 'Bridge::only admin can call'
        if supportToken[address(mem[(32 * idx) + 128])]:
            revert with 0, 'Toke already Supported'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 261
        supportToken[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * arg1.length) + 141 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cbde3c73(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not supportToken[address(arg1)]:
        revert with 0, 'Bridge::Not Support Token'
    mem[100] = msg.sender
    require ext_code.size(supportToken[address(arg1)])
    staticcall supportToken[address(arg1)].0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'msg.sender not enough token to burn'
    if arg3 and sub_12d365dd[address(arg1)] > -1 / arg3:
        revert with 0, 17
    if sub_09db763e[address(arg1)] > !(arg3 * sub_12d365dd[address(arg1)] / 10^18):
        revert with 0, 17
    if arg3 < sub_09db763e[address(arg1)] + (arg3 * sub_12d365dd[address(arg1)] / 10^18):
        revert with 0, 17
    mem[0] = address(arg1)
    mem[32] = 109
    idx = 0
    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
        mem[32] = 109
        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[0] = sha3(address(arg1), 109)
        if not uint256(sub_5e08378c[address(arg1)].field_0):
            revert with 0, 18
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(sub_5e08378c[address(arg1)][idx].field_0)
        mem[mem[64] + 68] = sub_09db763e[address(arg1)] + (arg3 * sub_12d365dd[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
        require ext_code.size(supportToken[address(arg1)])
        call supportToken[address(arg1)].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(sub_5e08378c[address(arg1)][idx].field_0), sub_09db763e[address(arg1)] + (arg3 * sub_12d365dd[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_40] == bool(mem[_40])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 - sub_09db763e[address(arg1)] - (arg3 * sub_12d365dd[address(arg1)] / 10^18)
    require ext_code.size(supportToken[address(arg1)])
    call supportToken[address(arg1)].0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg3 - sub_09db763e[address(arg1)] - (arg3 * sub_12d365dd[address(arg1)] / 10^18)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _31 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_31] == bool(mem[_31])
    emit 0xc0ccff1e: address(arg1), supportToken[address(arg1)], chainID, msg.sender, address(arg2), arg3 - sub_09db763e[address(arg1)] - (arg3 * sub_12d365dd[address(arg1)] / 10^18)
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Bridge::only admin can call'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function sub_98a7582f(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    if not supportToken[address(arg1)]:
        revert with 0, 'Bridge::Not Support Token'
    mem[ceil32(ceil32(arg5.length)) + 129] = address(arg1)
    mem[ceil32(ceil32(arg5.length)) + 149] = Mask(160, 96, supportToken[address(arg1)])
    mem[ceil32(ceil32(arg5.length)) + 169] = chainID
    mem[ceil32(ceil32(arg5.length)) + 97] = 72
    if not roleAdmin[address(arg1)][stor261[address(arg1)]][stor260][address(msg.sender)].field_0:
        revert with 0, 'Bridge::caller is not crosser'
    mem[ceil32(ceil32(arg5.length)) + 201 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    mem[arg5.length + ceil32(ceil32(arg5.length)) + 201] = 262
    if stor[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 262)][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * ceil32(arg5.length)) - 256]:
        revert with 0, 'tx minted'
    if not threshold[stor261[address(arg1)]]:
        revert with 0, 'ProposalVote: threshold should be greater than 0'
    mem[ceil32(ceil32(arg5.length)) + 233] = Mask(160, 96, supportToken[address(arg1)])
    mem[ceil32(ceil32(arg5.length)) + 253] = address(arg2)
    mem[ceil32(ceil32(arg5.length)) + 273] = address(arg3)
    mem[ceil32(ceil32(arg5.length)) + 293] = arg4
    mem[ceil32(ceil32(arg5.length)) + 325 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    mem[ceil32(ceil32(arg5.length)) + 201] = arg5.length + 92
    if stor102[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]:
        revert with 0, '_vote::proposal finished'
    if stor103[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256][msg.sender]:
        revert with 0, '_vote::msg.sender voted'
    if stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256] > -2:
        revert with 0, 17
    stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]++
    stor103[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256][msg.sender] = 1
    if ceil32(arg5.length) <= arg5.length:
        if ceil32(arg5.length) <= arg5.length:
            if threshold[stor261[address(arg1)]] > stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]:
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
            else:
                stor102[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256] = 1
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = supportToken[address(arg1)]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 357] = address(arg2)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 389] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 421] = arg4
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 453] = msg.sender
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 485] = stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 517] = threshold[stor261[address(arg1)]]
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                mem[(2 * arg5.length) + ceil32(ceil32(arg5.length)) + 325] = 262
                stor[mem[arg5.length + ceil32(ceil32(arg5.length)) + ceil32(arg5.length) + 325 len arg5.length + -ceil32(arg5.length) + 32]][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * ceil32(arg5.length)) - 256] = 1
                if arg4 and sub_f21b8af9[address(arg1)] > -1 / arg4:
                    revert with 0, 17
                if sub_71b47e18[address(arg1)] > !(arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                if arg4 < sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 329] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 361] = arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                require ext_code.size(supportToken[address(arg1)])
                call supportToken[address(arg1)].0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg3), arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 325
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[0] = address(arg1)
                mem[32] = 109
                if ceil32(arg5.length) <= arg5.length:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1264] == bool(mem[_1264])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1265] == bool(mem[_1265])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                mem[0] = address(arg1)
                mem[32] = 261
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = supportToken[address(arg1)]
                mem[mem[64] + 64] = chainID
                mem[mem[64] + 96] = address(arg2)
                mem[mem[64] + 128] = address(arg3)
                mem[mem[64] + 160] = arg4
                mem[mem[64] + 192] = 224
                mem[mem[64] + 224] = mem[96]
                mem[mem[64] + 256 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + mem[64] + 256] = 0
                emit 0x528f691c: address(arg1), supportToken[address(arg1)], chainID, address(arg2), address(arg3), arg4, Array(len=mem[96], data=mem[mem[64] + 256 len ceil32(mem[96])])
        else:
            if threshold[stor261[address(arg1)]] > stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]:
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
            else:
                stor102[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256] = 1
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = supportToken[address(arg1)]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 357] = address(arg2)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 389] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 421] = arg4
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 453] = msg.sender
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 485] = stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 517] = threshold[stor261[address(arg1)]]
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                mem[(2 * arg5.length) + ceil32(ceil32(arg5.length)) + 325] = 262
                stor[mem[arg5.length + ceil32(ceil32(arg5.length)) + ceil32(arg5.length) + 325 len arg5.length + -ceil32(arg5.length) + 32]][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * ceil32(arg5.length)) - 256] = 1
                if arg4 and sub_f21b8af9[address(arg1)] > -1 / arg4:
                    revert with 0, 17
                if sub_71b47e18[address(arg1)] > !(arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                if arg4 < sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 329] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 361] = arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                require ext_code.size(supportToken[address(arg1)])
                call supportToken[address(arg1)].0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg3), arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 325
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[0] = address(arg1)
                mem[32] = 109
                if ceil32(arg5.length) <= arg5.length:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1266] == bool(mem[_1266])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1267] == bool(mem[_1267])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                mem[0] = address(arg1)
                mem[32] = 261
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = supportToken[address(arg1)]
                mem[mem[64] + 64] = chainID
                mem[mem[64] + 96] = address(arg2)
                mem[mem[64] + 128] = address(arg3)
                mem[mem[64] + 160] = arg4
                mem[mem[64] + 192] = 224
                mem[mem[64] + 224] = mem[96]
                mem[mem[64] + 256 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + mem[64] + 256] = 0
                emit 0x528f691c: address(arg1), supportToken[address(arg1)], chainID, address(arg2), address(arg3), arg4, Array(len=mem[96], data=mem[mem[64] + 256 len ceil32(mem[96])])
    else:
        if ceil32(arg5.length) <= arg5.length:
            if threshold[stor261[address(arg1)]] > stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]:
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
            else:
                stor102[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256] = 1
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = supportToken[address(arg1)]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 357] = address(arg2)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 389] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 421] = arg4
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 453] = msg.sender
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 485] = stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 517] = threshold[stor261[address(arg1)]]
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                mem[(2 * arg5.length) + ceil32(ceil32(arg5.length)) + 325] = 262
                stor[mem[arg5.length + ceil32(ceil32(arg5.length)) + ceil32(arg5.length) + 325 len arg5.length + -ceil32(arg5.length) + 32]][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * ceil32(arg5.length)) - 256] = 1
                if arg4 and sub_f21b8af9[address(arg1)] > -1 / arg4:
                    revert with 0, 17
                if sub_71b47e18[address(arg1)] > !(arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                if arg4 < sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 329] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 361] = arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                require ext_code.size(supportToken[address(arg1)])
                call supportToken[address(arg1)].0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg3), arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 325
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[0] = address(arg1)
                mem[32] = 109
                if ceil32(arg5.length) <= arg5.length:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1268] == bool(mem[_1268])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1269 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1269] == bool(mem[_1269])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                mem[0] = address(arg1)
                mem[32] = 261
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = supportToken[address(arg1)]
                mem[mem[64] + 64] = chainID
                mem[mem[64] + 96] = address(arg2)
                mem[mem[64] + 128] = address(arg3)
                mem[mem[64] + 160] = arg4
                mem[mem[64] + 192] = 224
                mem[mem[64] + 224] = mem[96]
                mem[mem[64] + 256 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + mem[64] + 256] = 0
                emit 0x528f691c: address(arg1), supportToken[address(arg1)], chainID, address(arg2), address(arg3), arg4, Array(len=mem[96], data=mem[mem[64] + 256 len ceil32(mem[96])])
        else:
            if threshold[stor261[address(arg1)]] > stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]:
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
            else:
                stor102[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256] = 1
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = supportToken[address(arg1)]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 357] = address(arg2)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 389] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 421] = arg4
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 453] = msg.sender
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 485] = stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256]
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 517] = threshold[stor261[address(arg1)]]
                emit ProposalVoted(supportToken[address(arg1)], address(arg2), address(arg3), arg4, msg.sender, stor104[stor261[address(arg1)]][address(arg2)][address(arg3)][arg4][Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * arg5.length) - 256], threshold[stor261[address(arg1)]]);
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                mem[(2 * arg5.length) + ceil32(ceil32(arg5.length)) + 325] = 262
                stor[mem[arg5.length + ceil32(ceil32(arg5.length)) + ceil32(arg5.length) + 325 len arg5.length + -ceil32(arg5.length) + 32]][Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 72) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg5.length)) + (8 * ceil32(ceil32(arg5.length))) + 256) << (8 * ceil32(arg5.length)) - 256] = 1
                if arg4 and sub_f21b8af9[address(arg1)] > -1 / arg4:
                    revert with 0, 17
                if sub_71b47e18[address(arg1)] > !(arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                if arg4 < sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18):
                    revert with 0, 17
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 329] = address(arg3)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 361] = arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                require ext_code.size(supportToken[address(arg1)])
                call supportToken[address(arg1)].0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg3), arg4 - sub_71b47e18[address(arg1)] - (arg4 * sub_f21b8af9[address(arg1)] / 10^18)
                mem[arg5.length + ceil32(ceil32(arg5.length)) + 325] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = arg5.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 325
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[0] = address(arg1)
                mem[32] = 109
                if ceil32(arg5.length) <= arg5.length:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1270] == bool(mem[_1270])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    idx = 0
                    while idx < uint256(sub_5e08378c[address(arg1)].field_0):
                        if idx >= uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 'EnumerableSet: index out of bounds'
                        mem[0] = address(arg1)
                        mem[32] = 261
                        if not uint256(sub_5e08378c[address(arg1)].field_0):
                            revert with 0, 18
                        mem[mem[64] + 4] = address(sub_5e08378c[address(arg1)][idx].field_0)
                        mem[mem[64] + 36] = sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        require ext_code.size(supportToken[address(arg1)])
                        call supportToken[address(arg1)].0x40c10f19 with:
                             gas gas_remaining wei
                            args address(sub_5e08378c[address(arg1)][idx].field_0), sub_71b47e18[address(arg1)] + (arg4 * sub_f21b8af9[address(arg1)] / 10^18) / uint256(sub_5e08378c[address(arg1)].field_0)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1271] == bool(mem[_1271])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                mem[0] = address(arg1)
                mem[32] = 261
                mem[mem[64]] = address(arg1)
                mem[mem[64] + 32] = supportToken[address(arg1)]
                mem[mem[64] + 64] = chainID
                mem[mem[64] + 96] = address(arg2)
                mem[mem[64] + 128] = address(arg3)
                mem[mem[64] + 160] = arg4
                mem[mem[64] + 192] = 224
                mem[mem[64] + 224] = mem[96]
                mem[mem[64] + 256 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) > mem[96]:
                    mem[mem[96] + mem[64] + 256] = 0
                emit 0x528f691c: address(arg1), supportToken[address(arg1)], chainID, address(arg2), address(arg3), arg4, Array(len=mem[96], data=mem[mem[64] + 256 len ceil32(mem[96])])
}



}
