contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


address owner;
address newOwner;
mapping of struct roleAdmin;
uint256 stor3;
address wIDOAddress;
uint8 threshold; offset 160
uint8 signerLength; offset 168
address sub_fa89c171Address;
uint256 adminFee;
uint256 adminFeeAccumulated;
mapping of uint8 stor8;
mapping of uint256 nonces;
mapping of uint8 stor10;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function signerLength() payable {
    return signerLength
}

function threshold() payable {
    return threshold
}

function adminFeeAccumulated() payable {
    return adminFeeAccumulated
}

function processedNonces(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor10[arg1][arg2])
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function adminFee() payable {
    return adminFee
}

function wIDO() payable {
    return wIDOAddress
}

function newOwner() payable {
    return newOwner
}

function checkOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0)
}

function sub_fa89c171(?) payable {
    return sub_fa89c171Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: CALLER_NO_OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0, 'Ownable: CALLER_NO_NEW_OWNER'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: CALLER_NO_OWNER'
    if not arg1:
        revert with 0, 'Ownable: INVALID_ADDRESS'
    if owner == arg1:
        revert with 0, 'Ownable: OWNERSHIP_SELF_TRANSFER'
    newOwner = arg1
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

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 < adminFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: DEPOSIT_AMOUNT_INVALID'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: RECEIVER_ZERO_ADDRESS'
    require ext_code.size(wIDOAddress)
    call wIDOAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if nonces[msg.sender] == -1:
        revert with 0, 17
    nonces[msg.sender]++
    emit Deposited(arg3, arg2, nonces[msg.sender], msg.sender, arg1);
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

function removeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: CALLER_NO_OWNER'
    if roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
            roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 0
            emit RoleRevoked(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
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
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
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
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function addOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: CALLER_NO_OWNER'
    if roleAdmin[roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0:
            roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(arg1)].field_0 = 1
            emit RoleGranted(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, arg1, msg.sender);
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
    s = roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256
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
    if roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_237dc6a6(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    if not cd[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: ADMIN_FEE_INVALID'
    mem[128] = cd[4]
    mem[96] = 32
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 65 < 64 or ceil32(32 * ('cd', 36).length) + 161 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 161
    mem[160] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 192
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _70 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_70] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_70 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_70 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _70
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(cd[4])
    _66 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _68 = sha3(mem[_66 + 32 len mem[_66]])
    _116 = mem[160]
    idx = 0
    s = 0
    s = 0
    while idx < _116:
        if idx >= mem[160]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 192]]:
            if mem[mem[(32 * idx) + 192] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 192]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _128 = mem[mem[(32 * idx) + 192] + 64]
        _129 = mem[mem[(32 * idx) + 192] + 32]
        if uint255(mem[mem[(32 * idx) + 192] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 192] + 64]) >> 255) + 27):
            _136 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_136 + 32] = _68
            mem[_136 + 64] = uint8((bool(_128) >> 255) + 27)
            mem[_136 + 96] = _129
            mem[_136 + 128] = uint255(_128)
            signer = erecover(_68, (bool(_128) >> 255) + 27 << 248, _129, uint255(_128)) 
            mem[_136] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 192] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _141 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_141 + 32] = _68
            mem[_141 + 64] = uint8((bool(_128) >> 255) + 27)
            mem[_141 + 96] = _129
            mem[_141 + 128] = uint255(_128)
            signer = erecover(_68, (bool(_128) >> 255) + 27 << 248, _129, uint255(_128)) 
            mem[_141] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _116 = mem[160]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[160]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    adminFee = cd[4]
    emit AdminFeeChanged(cd[4]);
}

function sub_5553acb4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    if uint8(cd[4]) < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: THRESHOLD_INVALID'
    mem[128] = cd[4] << 248
    mem[96] = 1
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 34 < 33 or ceil32(32 * ('cd', 36).length) + 130 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 130
    mem[129] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 161
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _71 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_71] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_71 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_71 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _71
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(uint8(cd[4]))
    _67 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _69 = sha3(mem[_67 + 32 len mem[_67]])
    _118 = mem[129]
    idx = 0
    s = 0
    s = 0
    while idx < _118:
        if idx >= mem[129]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 161]]:
            if mem[mem[(32 * idx) + 161] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 161]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _131 = mem[mem[(32 * idx) + 161] + 64]
        _132 = mem[mem[(32 * idx) + 161] + 32]
        if uint255(mem[mem[(32 * idx) + 161] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 161] + 64]) >> 255) + 27):
            _139 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_139 + 32] = _69
            mem[_139 + 64] = uint8((bool(_131) >> 255) + 27)
            mem[_139 + 96] = _132
            mem[_139 + 128] = uint255(_131)
            signer = erecover(_69, (bool(_131) >> 255) + 27 << 248, _132, uint255(_131)) 
            mem[_139] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 161] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _144 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_144 + 32] = _69
            mem[_144 + 64] = uint8((bool(_131) >> 255) + 27)
            mem[_144 + 96] = _132
            mem[_144 + 128] = uint255(_131)
            signer = erecover(_69, (bool(_131) >> 255) + 27 << 248, _132, uint255(_131)) 
            mem[_144] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _118 = mem[129]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[129]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    threshold = uint8(cd[4])
    emit 0x541ae612: uint8(cd[4])
}

function sub_0985b7a9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    if not address(cd[4]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: BRIDGE_WALLET_ADDRESS_INVALID'
    mem[128] = address(cd[4])
    mem[96] = 20
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 53 < 52 or ceil32(32 * ('cd', 36).length) + 149 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 149
    mem[148] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 180
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _70 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_70] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_70 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_70 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _70
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(address(cd[4]))
    _66 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _68 = sha3(mem[_66 + 32 len mem[_66]])
    _116 = mem[148]
    idx = 0
    s = 0
    s = 0
    while idx < _116:
        if idx >= mem[148]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 180]]:
            if mem[mem[(32 * idx) + 180] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 180]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _128 = mem[mem[(32 * idx) + 180] + 64]
        _129 = mem[mem[(32 * idx) + 180] + 32]
        if uint255(mem[mem[(32 * idx) + 180] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27):
            _136 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_136 + 32] = _68
            mem[_136 + 64] = uint8((bool(_128) >> 255) + 27)
            mem[_136 + 96] = _129
            mem[_136 + 128] = uint255(_128)
            signer = erecover(_68, (bool(_128) >> 255) + 27 << 248, _129, uint255(_128)) 
            mem[_136] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _141 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_141 + 32] = _68
            mem[_141 + 64] = uint8((bool(_128) >> 255) + 27)
            mem[_141 + 96] = _129
            mem[_141 + 128] = uint255(_128)
            signer = erecover(_68, (bool(_128) >> 255) + 27 << 248, _129, uint255(_128)) 
            mem[_141] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _116 = mem[148]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[148]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    sub_fa89c171Address = address(cd[4])
    emit 0x3d404489: address(cd[4])
}

function sub_d9ce0dd7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    mem[128] = address(cd[4])
    mem[96] = 20
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 53 < 52 or ceil32(32 * ('cd', 36).length) + 149 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 149
    mem[148] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 180
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _72 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_72] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_72 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_72 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _72
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(address(cd[4]))
    _68 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _70 = sha3(mem[_68 + 32 len mem[_68]])
    _122 = mem[148]
    idx = 0
    s = 0
    s = 0
    while idx < _122:
        if idx >= mem[148]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 180]]:
            if mem[mem[(32 * idx) + 180] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 180]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _134 = mem[mem[(32 * idx) + 180] + 64]
        _135 = mem[mem[(32 * idx) + 180] + 32]
        if uint255(mem[mem[(32 * idx) + 180] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27):
            _145 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_145 + 32] = _70
            mem[_145 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_145 + 96] = _135
            mem[_145 + 128] = uint255(_134)
            signer = erecover(_70, (bool(_134) >> 255) + 27 << 248, _135, uint255(_134)) 
            mem[_145] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _151 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_151 + 32] = _70
            mem[_151 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_151 + 96] = _135
            mem[_151 + 128] = uint255(_134)
            signer = erecover(_70, (bool(_134) >> 255) + 27 << 248, _135, uint255(_134)) 
            mem[_151] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _122 = mem[148]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[148]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    if address(cd[4]):
        if not stor8[address(cd[4])]:
            stor8[address(cd[4])] = 1
            if signerLength == 255:
                revert with 0, 17
            signerLength = uint8(signerLength + 1)
    emit SignerAdded(address(cd[4]));
}

function sub_4a5280b2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    mem[128] = address(cd[4])
    mem[96] = 20
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 53 < 52 or ceil32(32 * ('cd', 36).length) + 149 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 149
    mem[148] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 180
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _72 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_72] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_72 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_72 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _72
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(address(cd[4]))
    _68 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _70 = sha3(mem[_68 + 32 len mem[_68]])
    _122 = mem[148]
    idx = 0
    s = 0
    s = 0
    while idx < _122:
        if idx >= mem[148]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 180]]:
            if mem[mem[(32 * idx) + 180] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 180]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _134 = mem[mem[(32 * idx) + 180] + 64]
        _135 = mem[mem[(32 * idx) + 180] + 32]
        if uint255(mem[mem[(32 * idx) + 180] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27):
            _145 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_145 + 32] = _70
            mem[_145 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_145 + 96] = _135
            mem[_145 + 128] = uint255(_134)
            signer = erecover(_70, (bool(_134) >> 255) + 27 << 248, _135, uint255(_134)) 
            mem[_145] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 180] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _151 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_151 + 32] = _70
            mem[_151 + 64] = uint8((bool(_134) >> 255) + 27)
            mem[_151 + 96] = _135
            mem[_151 + 128] = uint255(_134)
            signer = erecover(_70, (bool(_134) >> 255) + 27 << 248, _135, uint255(_134)) 
            mem[_151] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _122 = mem[148]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[148]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    if stor8[address(cd[4])]:
        if not signerLength:
            revert with 0, 17
        signerLength = uint8(signerLength - 1)
        if uint8(signerLength - 1) >= threshold:
            stor8[address(cd[4])] = 0
    emit SignerRemoved(address(cd[4]));
}

function sub_c59b0929(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    mem[0] = msg.sender
    mem[32] = sha3(0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9, 2)
    if not roleAdmin[0xfe97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Operatorable: CALLER_NO_OPERATOR_ROLE'
    if not address(cd[36]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: RECEIVER_ZERO_ADDRESS'
    if cd[68] <= adminFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RelayManager2Secure: SEND_AMOUNT_INVALID'
    mem[128] = address(cd[4])
    mem[148] = address(cd[36])
    mem[168] = cd[68]
    mem[200] = cd[100]
    mem[96] = 104
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 137 < 136 or ceil32(32 * ('cd', 132).length) + 233 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 132).length) + 233
    mem[232] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    s = cd[132] + 36
    t = 264
    idx = 0
    while idx < ('cd', 132).length:
        require cd[s] <= test266151307()
        require cd[132] + cd[s] + 67 < calldata.size
        if cd[(cd[132] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _85 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[132] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[132] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[132] + cd[s] + 36)])) + 1
        mem[_85] = cd[(cd[132] + cd[s] + 36)]
        require cd[132] + cd[s] + cd[(cd[132] + cd[s] + 36)] + 68 <= calldata.size
        mem[_85 + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
        mem[_85 + cd[(cd[132] + cd[s] + 36)] + 32] = 0
        mem[t] = _85
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
    mem[mem[64] + 60] = sha3(address(cd[4]), address(cd[36]), cd[68], cd[100])
    _81 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _83 = sha3(mem[_81 + 32 len mem[_81]])
    _142 = mem[232]
    idx = 0
    s = 0
    s = 0
    while idx < _142:
        if idx >= mem[232]:
            revert with 0, 50
        if 65 == mem[mem[(32 * idx) + 264]]:
            if mem[mem[(32 * idx) + 264] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if mem[mem[(32 * idx) + 264]] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _158 = mem[mem[(32 * idx) + 264] + 64]
        _159 = mem[mem[(32 * idx) + 264] + 32]
        if uint255(mem[mem[(32 * idx) + 264] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[mem[(32 * idx) + 264] + 64]) >> 255) + 27):
            _167 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_167 + 32] = _83
            mem[_167 + 64] = uint8((bool(_158) >> 255) + 27)
            mem[_167 + 96] = _159
            mem[_167 + 128] = uint255(_158)
            signer = erecover(_83, (bool(_158) >> 255) + 27 << 248, _159, uint255(_158)) 
            mem[_167] = signer
        else:
            if uint8((bool(mem[mem[(32 * idx) + 264] + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _174 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_174 + 32] = _83
            mem[_174 + 64] = uint8((bool(_158) >> 255) + 27)
            mem[_174 + 96] = _159
            mem[_174 + 128] = uint255(_158)
            signer = erecover(_83, (bool(_158) >> 255) + 27 << 248, _159, uint255(_158)) 
            mem[_174] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) <= address(s):
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        mem[0] = address(signer)
        mem[32] = 8
        if not stor8[address(signer)]:
            revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
        if idx == -1:
            revert with 0, 17
        _142 = mem[232]
        idx = idx + 1
        s = signer
        s = signer
        continue 
    if threshold > mem[232]:
        revert with 0, 'RelayManager2Secure: INVALID_SIGNATURE'
    if stor10[address(cd[4])][cd[100]]:
        revert with 0, 'RelayManager2Secure: TRANSFER_NONCE_ALREADY_PROCESSED'
    stor10[address(cd[4])][cd[100]] = 1
    if adminFeeAccumulated > !adminFee:
        revert with 0, 17
    adminFeeAccumulated += adminFee
    if cd[68] < adminFee:
        revert with 0, 17
    require ext_code.size(wIDOAddress)
    call wIDOAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(cd[36]), cd[68] - adminFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wIDOAddress)
    call wIDOAddress.0x40c10f19 with:
         gas gas_remaining wei
        args sub_fa89c171Address, adminFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sent(address(cd[36]), cd[68], cd[68] - adminFee);
    stor3 = 1
}



}
