contract main {




// =====================  Runtime code  =====================


const ORACLE_ROLE = 0x68e79a7bf1e0bc45d0a330c573bc367f9cf464fd326078812f301165fbda4ef1

const TRUSTY_ROLE = 0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
uint256 stor1;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_96
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function setMinimumRequiredSignature(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xdb189261133fd7647d3308512b693b47bed44004cac80fb59aa64b63a231e2c][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ORACLE::setMinimumRequiredSignature: You are not a setter'
    stor1 = arg1
    emit MinimumRequiredSignatureSet(arg1);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_96 = arg2
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        if roleAdmin[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleAdmin[arg1].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        if roleAdmin[arg1][1][address(arg2)].field_0 - 1 >= roleAdmin[arg1].field_0:
            revert with 'NH{q', 50
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        if 1 > !(roleAdmin[arg1][1][address(arg2)].field_0 - 1):
            revert with 'NH{q', 17
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        if not roleAdmin[arg1].field_0:
            revert with 'NH{q', 49
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_fb0fe3f4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < stor1:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_47] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_47 + 32 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_47 + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 32] = 0
        if 65 == cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            if mem[_47 + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] != 64:
            revert with 0, 'ECDSA: invalid signature length'
        _54 = mem[_47 + 32]
        _55 = mem[_47 + 64]
        if uint255(mem[_47 + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if 27 == uint8((bool(mem[_47 + 64]) >> 255) + 27):
            _62 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_62 + 32] = cd[4]
            mem[_62 + 64] = uint8((bool(_55) >> 255) + 27)
            mem[_62 + 96] = _54
            mem[_62 + 128] = uint255(_55)
            signer = erecover(cd[4], (bool(_55) >> 255) + 27 << 248, _54, uint255(_55)) 
            mem[_62] = signer
        else:
            if uint8((bool(mem[_47 + 64]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
            _67 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_67 + 32] = cd[4]
            mem[_67 + 64] = uint8((bool(_55) >> 255) + 27)
            mem[_67 + 96] = _54
            mem[_67 + 128] = uint255(_55)
            signer = erecover(cd[4], (bool(_55) >> 255) + 27 << 248, _54, uint255(_55)) 
            mem[_67] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        mem[0] = address(signer)
        mem[32] = sha3(0x68e79a7bf1e0bc45d0a330c573bc367f9cf464fd326078812f301165fbda4ef1, 0) + 1
        if not roleAdmin[0x68e79a7bf1e0bc45d0a330c573bc367f9cf464fd326078812f301165fbda4ef1][1][address(signer)].field_0:
            revert with 0, 'ORACLE::verify: Signer is not valid'
        if address(signer) <= address(s):
            revert with 0, 'ORACLE::verify: Signers are same'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = signer
        continue 
    return 1
}



}
