contract main {




// =====================  Runtime code  =====================


#
#  - userDetails(address arg1)
#  - requestVerification(string arg1)
#
const versionRecipient = '', 0

const EMPTY_BYTES32 = 0

const DEFAULT_ADMIN_ROLE = 0

const GOVERNANCE_ROLE = 0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647


address trustedForwarderAddress;
address oracleAddress;
uint256 jobId;
uint256 fee;
uint256 expiration;
array of struct encodedData;
mapping of address addressRequestIDs;
mapping of address usernameTo;
mapping of address sub_0cdcefb6;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
address stor11;
address stor12;
mapping of address stor14;
array of struct roleAdmin;

function sub_0cdcefb6(?) payable {
    require calldata.size - 4 >= 32
    return sub_0cdcefb6[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function usernameToAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return usernameTo[arg1]
}

function expiration() payable {
    return expiration
}

function addressRequestIDs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return addressRequestIDs[arg1]
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function oracle() payable {
    return oracleAddress
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getEncodedData() payable {
    return encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][4][0 len encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][4].length].field_0
}

function jobId() payable {
    return jobId
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function fee() payable {
    return fee
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == trustedForwarderAddress)
}

function setJobId(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    jobId = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    stor12 = arg1
}

function sub_ab1d3c5a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    stor11 = address(cd[4])
}

function sub_152c1f02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    return usernameTo[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]]
}

function balance() payable {
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function keccakHash(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function withdrawLink(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'UNABLE_TO_TRANSFER'
}

function sub_68acdcdf(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'UNABLE_TO_TRANSFER'
}

function deleteVerification(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 20:
        if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
            revert with 0, 'MISSING_ROLE'
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(msg.sender)].field_0:
                revert with 0, 'MISSING_ROLE'
        else:
            if not roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0, 'MISSING_ROLE'
    encodedData[address(arg1)].field_0 = 0
    encodedData[address(arg1)].field_256 = 0
    if 31 < encodedData[address(arg1)][1].length:
        idx = 0
        while encodedData[address(arg1)][1].length + 31 / 32 > idx:
            encodedData[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    encodedData[address(arg1)].field_512 = 0
    if 31 < encodedData[address(arg1)][2].length:
        idx = 0
        while encodedData[address(arg1)][2].length + 31 / 32 > idx:
            encodedData[address(arg1)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    encodedData[address(arg1)].field_768 = 0
    encodedData[address(arg1)].field_1024 = 0
    if 31 < encodedData[address(arg1)][4].length:
        idx = 0
        while encodedData[address(arg1)][4].length + 31 / 32 > idx:
            encodedData[address(arg1)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if calldata.size < 20:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                        mem[211 len 17]
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                            mem[211 len 17]
        else:
            if not roleAdmin[roleAdmin[arg1].field_512][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                            mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        if calldata.size < 20:
            emit RoleGranted(arg1, arg2, msg.sender);
        else:
            if trustedForwarderAddress != msg.sender:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if calldata.size < 20:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x74416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                        mem[211 len 17]
    else:
        if trustedForwarderAddress != msg.sender:
            if arg2 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x74416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                            mem[211 len 17]
        else:
            if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x74416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                            mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        if calldata.size < 20:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            if trustedForwarderAddress != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if calldata.size < 20:
        if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                        mem[212 len 16]
    else:
        if trustedForwarderAddress != msg.sender:
            if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                            mem[212 len 16]
        else:
            if not roleAdmin[roleAdmin[arg1].field_512][1][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                            mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        if calldata.size < 20:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            if trustedForwarderAddress != msg.sender:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
}

function results(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = encodedData[arg1][1].field_0
    idx = 128
    s = 0
    while encodedData[arg1][1].length + 96 > idx:
        mem[idx + 32] = encodedData[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(encodedData[arg1][1].length) + 160] = encodedData[arg1][2].field_0
    idx = ceil32(encodedData[arg1][1].length) + 160
    s = 0
    while ceil32(encodedData[arg1][1].length) + encodedData[arg1][2].length + 128 > idx:
        mem[idx + 32] = encodedData[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + 192] = encodedData[arg1][4].field_0
    idx = ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + 192
    s = 0
    while ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + encodedData[arg1][4].length + 160 > idx:
        mem[idx + 32] = encodedData[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(encodedData[arg1][1].length) <= encodedData[arg1][1].length:
        mem[(2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 384] = encodedData[arg1][2].length
        mem[(2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 416 len ceil32(encodedData[arg1][2].length)] = mem[ceil32(encodedData[arg1][1].length) + 160 len ceil32(encodedData[arg1][2].length)]
        if ceil32(encodedData[arg1][2].length) > encodedData[arg1][2].length:
            mem[encodedData[arg1][2].length + (2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 416] = 0
    else:
        mem[encodedData[arg1][1].length + ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 384] = 0
        mem[(2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 384] = encodedData[arg1][2].length
        mem[(2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 416 len ceil32(encodedData[arg1][2].length)] = mem[ceil32(encodedData[arg1][1].length) + 160 len ceil32(encodedData[arg1][2].length)]
        if ceil32(encodedData[arg1][2].length) > encodedData[arg1][2].length:
            mem[encodedData[arg1][2].length + (2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][4].length) + 416] = 0
        mem[(2 * ceil32(encodedData[arg1][2].length)) + (2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][4].length) + 416] = encodedData[arg1][4].length
        mem[(2 * ceil32(encodedData[arg1][2].length)) + (2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][4].length) + 448 len ceil32(encodedData[arg1][4].length)] = mem[ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + 192 len ceil32(encodedData[arg1][4].length)]
        if ceil32(encodedData[arg1][4].length) > encodedData[arg1][4].length:
            mem[encodedData[arg1][4].length + (2 * ceil32(encodedData[arg1][2].length)) + (2 * ceil32(encodedData[arg1][1].length)) + ceil32(encodedData[arg1][4].length) + 448] = 0
    return encodedData[arg1].field_0, 
           Array(len=encodedData[arg1][1].length, data=mem[128 len ceil32(encodedData[arg1][1].length)], encodedData[arg1][2].length, mem[ceil32(encodedData[arg1][1].length) + 160 len ceil32(encodedData[arg1][2].length)], encodedData[arg1][4].length, mem[ceil32(encodedData[arg1][1].length) + ceil32(encodedData[arg1][2].length) + 192 len ceil32(encodedData[arg1][4].length)]),
           ceil32(encodedData[arg1][1].length) + 192,
           bool(encodedData[arg1].field_768),
           ceil32(encodedData[arg1][2].length) + ceil32(encodedData[arg1][1].length) + 224
}

function cancelRequest() payable {
    if calldata.size < 20:
        idx = 288
        s = 0
        while encodedData[address(msg.sender)][1].length + 256 > idx:
            mem[idx + 32] = encodedData[address(msg.sender)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = ceil32(encodedData[address(msg.sender)][1].length) + 320
        s = 0
        while ceil32(encodedData[address(msg.sender)][1].length) + encodedData[address(msg.sender)][2].length + 288 > idx:
            mem[idx + 32] = encodedData[address(msg.sender)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = ceil32(encodedData[address(msg.sender)][1].length) + ceil32(encodedData[address(msg.sender)][2].length) + 352
        s = 0
        while ceil32(encodedData[address(msg.sender)][1].length) + ceil32(encodedData[address(msg.sender)][2].length) + encodedData[address(msg.sender)][4].length + 320 > idx:
            mem[idx + 32] = encodedData[address(msg.sender)][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
        stor14[stor5[address(msg.sender)].field_0] = 0
        emit ChainlinkCancelled(encodedData[address(msg.sender)].field_0);
        require ext_code.size(stor14[stor5[address(msg.sender)].field_0])
        call stor14[stor5[address(msg.sender)].field_0].cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args encodedData[address(msg.sender)].field_0, fee, 0xc2fb852300000000000000000000000000000000000000000000000000000000, expiration
    else:
        if trustedForwarderAddress != msg.sender:
            idx = 288
            s = 0
            while encodedData[address(msg.sender)][1].length + 256 > idx:
                mem[idx + 32] = encodedData[address(msg.sender)][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = ceil32(encodedData[address(msg.sender)][1].length) + 320
            s = 0
            while ceil32(encodedData[address(msg.sender)][1].length) + encodedData[address(msg.sender)][2].length + 288 > idx:
                mem[idx + 32] = encodedData[address(msg.sender)][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = ceil32(encodedData[address(msg.sender)][1].length) + ceil32(encodedData[address(msg.sender)][2].length) + 352
            s = 0
            while ceil32(encodedData[address(msg.sender)][1].length) + ceil32(encodedData[address(msg.sender)][2].length) + encodedData[address(msg.sender)][4].length + 320 > idx:
                mem[idx + 32] = encodedData[address(msg.sender)][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            stor14[stor5[address(msg.sender)].field_0] = 0
            emit ChainlinkCancelled(encodedData[address(msg.sender)].field_0);
            require ext_code.size(stor14[stor5[address(msg.sender)].field_0])
            call stor14[stor5[address(msg.sender)].field_0].cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args encodedData[address(msg.sender)].field_0, fee, 0xc2fb852300000000000000000000000000000000000000000000000000000000, expiration
        else:
            idx = 288
            s = 0
            while encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1].length + 256 > idx:
                mem[idx + 32] = encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1].length) + 320
            s = 0
            while ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1].length) + encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][2].length + 288 > idx:
                mem[idx + 32] = encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1].length) + ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][2].length) + 352
            s = 0
            while ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][1].length) + ceil32(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][2].length) + encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][4].length + 320 > idx:
                mem[idx + 32] = encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            stor14[stor5[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0] = 0
            emit ChainlinkCancelled(encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0);
            require ext_code.size(stor14[stor5[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0])
            call stor14[stor5[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0].cancelOracleRequest(bytes32 arg1, uint256 arg2, bytes4 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args encodedData[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0, fee, 0xc2fb852300000000000000000000000000000000000000000000000000000000, expiration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_297a3e57(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    if uint8(stor9.field_8):
        stor11 = address(cd[100])
        stor12 = address(cd[36])
        jobId = cd[132]
        fee = 10^16
        expiration = block.timestamp + 900
        trustedForwarderAddress = address(cd[68])
    else:
        if ext_code.size(this.address):
            if uint8(stor9.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor9.field_8):
            stor11 = address(cd[100])
            stor12 = address(cd[36])
            jobId = cd[132]
            fee = 10^16
            expiration = block.timestamp + 900
            trustedForwarderAddress = address(cd[68])
        else:
            uint8(stor9.field_0) = 1
            uint8(stor9.field_8) = 1
            Mask(248, 0, stor9.field_8) = 0
            stor11 = address(cd[100])
            stor12 = address(cd[36])
            jobId = cd[132]
            fee = 10^16
            expiration = block.timestamp + 900
            trustedForwarderAddress = address(cd[68])
            if ext_code.size(this.address):
                if uint8(stor9.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor9.field_8):
                uint8(stor9.field_0) = 1
                uint8(stor9.field_8) = 1
                Mask(248, 0, stor9.field_8) = 0
                uint8(stor9.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor9.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor9.field_8):
                    uint8(stor9.field_0) = 1
                    uint8(stor9.field_8) = 1
                    Mask(248, 0, stor9.field_8) = 0
                    uint8(stor9.field_8) = 0
    if roleAdmin[0][1][address(cd[4])].field_0:
        if roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0:
            emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
            roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
            if not uint8(stor9.field_8):
                uint8(stor9.field_8) = 0
        else:
            roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
            roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0 = address(cd[4])
            roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160 = 0
            roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0 = roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
            if calldata.size < 20:
                emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                if not uint8(stor9.field_8):
                    uint8(stor9.field_8) = 0
            else:
                if trustedForwarderAddress != msg.sender:
                    emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                else:
                    emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                if not uint8(stor9.field_8):
                    uint8(stor9.field_8) = 0
    else:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = address(cd[4])
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(cd[4])].field_0 = roleAdmin[0].field_0
        if calldata.size < 20:
            emit RoleGranted(0, address(cd[4]), msg.sender);
            if roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0:
                emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                if not uint8(stor9.field_8):
                    uint8(stor9.field_8) = 0
            else:
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0 = address(cd[4])
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160 = 0
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0 = roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
                if calldata.size < 20:
                    emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                    emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                    roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                    if not uint8(stor9.field_8):
                        uint8(stor9.field_8) = 0
                else:
                    if trustedForwarderAddress != msg.sender:
                        emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                    else:
                        emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                    roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                    if not uint8(stor9.field_8):
                        uint8(stor9.field_8) = 0
        else:
            if trustedForwarderAddress != msg.sender:
                emit RoleGranted(0, address(cd[4]), msg.sender);
            else:
                emit RoleGranted(0, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0:
                emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                if not uint8(stor9.field_8):
                    uint8(stor9.field_8) = 0
            else:
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0 = address(cd[4])
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160 = 0
                roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(cd[4])].field_0 = roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
                if calldata.size < 20:
                    emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                    emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                    roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                    if not uint8(stor9.field_8):
                        uint8(stor9.field_8) = 0
                else:
                    if trustedForwarderAddress != msg.sender:
                        emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), msg.sender);
                    else:
                        emit RoleGranted(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, address(cd[4]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
                    emit RoleAdminChanged(0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512, 0);
                    roleAdmin[0x7435a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_512 = 0
                    if not uint8(stor9.field_8):
                        uint8(stor9.field_8) = 0
}

function fulfillBytes(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor14[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64536f75726365206d75737420626520746865206f7261636c65206f662074686520726571756573,
                    mem[204 len 24]
    stor14[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    if arg2.length <= 100:
        encodedData[stor6[arg1]].field_256 = 0
        if 31 < encodedData[stor6[arg1]][1].length:
            idx = 0
            while encodedData[stor6[arg1]][1].length + 31 / 32 > idx:
                encodedData[stor6[arg1]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        emit 0x365b5ceb: Array(len=arg2.length, data=arg2[all]), addressRequestIDs[arg1]
    else:
        mem[32] = 5
        encodedData[stor6[arg1]].field_768 = 1
        mem[0] = sha3(addressRequestIDs[arg1], 5) + 4
        if not arg2.length:
            encodedData[stor6[arg1]].field_1024 = 0
            idx = 0
            while encodedData[stor6[arg1]][4].length + 31 / 32 > idx:
                encodedData[stor6[arg1]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            mem[96] = arg2.length
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            require arg2.length >= 160
            _1330 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < arg2.length + 128
            _1335 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require ceil32(mem[mem[128] + 128]) + 160 >= 128 and ceil32(arg2.length) + ceil32(mem[mem[128] + 128]) + 160 <= test266151307()
            mem[64] = ceil32(arg2.length) + ceil32(mem[mem[128] + 128]) + 160
            mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
            require _1330 + _1335 + 64 <= arg2.length + 32
            mem[ceil32(arg2.length) + 160 len ceil32(_1335)] = mem[_1330 + 160 len ceil32(_1335)]
            if ceil32(_1335) <= _1335:
                _2633 = mem[160]
                require mem[160] <= test266151307()
                require mem[160] + 159 < arg2.length + 128
                _2641 = mem[mem[160] + 128]
                require mem[mem[160] + 128] <= test266151307()
                _2648 = mem[64]
                require mem[64] + ceil32(mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[160] + 128]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[mem[160] + 128]) + 32
                mem[_2648] = mem[mem[160] + 128]
                require _2633 + _2641 + 64 <= arg2.length + 32
                mem[_2648 + 32 len ceil32(_2641)] = mem[_2633 + 160 len ceil32(_2641)]
                if ceil32(_2641) <= _2641:
                    _3931 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _3945 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _3959 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_3959] = mem[mem[192] + 128]
                    require _3931 + _3945 + 64 <= arg2.length + 32
                    mem[_3959 + 32 len ceil32(_3945)] = mem[_3931 + 160 len ceil32(_3945)]
                    if ceil32(_3945) <= _3945:
                        _5211 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5263 = mem[64]
                        _5291 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5291) <= _5291:
                            _6523 = mem[64]
                            mem[mem[64]] = _5291
                            mem[64] = _5291 + mem[64] + 32
                            mem[0] = sha3(mem[_6523 + 32 len mem[_6523]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5211] = addressRequestIDs[arg1]
                            mem[_5291 + _5263 + 32] = 64
                            _6755 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5291 + _5263 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5291 + _5263 + 128 len ceil32(_6755)] = mem[ceil32(arg2.length) + 160 len ceil32(_6755)]
                            if ceil32(_6755) <= _6755:
                                emit 0x874a2ec5: 64, ceil32(_6755) + 96, mem[_5291 + _5263 + 96 len ceil32(_6755) + 32], 0, addressRequestIDs[arg1], 0, _5211
                            else:
                                mem[ceil32(_6755) + _5291 + _5263 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6755) + 96, mem[_5291 + _5263 + 96 len _6755 + 32], 0, mem[_5291 + _5263 + _6755 + 160 len ceil32(_6755) - _6755], addressRequestIDs[arg1], 0, _5211
                        else:
                            mem[_5291 + mem[64] + 32] = 0
                            _6526 = mem[64]
                            mem[mem[64]] = _5291 + _5263 - mem[64]
                            mem[64] = _5291 + _5263 + 32
                            mem[0] = sha3(mem[_6526 + 32 len mem[_6526]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5211] = addressRequestIDs[arg1]
                            mem[_5291 + _5263 + 32] = 64
                            _6756 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5291 + _5263 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5291 + _5263 + 128 len ceil32(_6756)] = mem[ceil32(arg2.length) + 160 len ceil32(_6756)]
                            if ceil32(_6756) <= _6756:
                                emit 0x874a2ec5: 64, ceil32(_6756) + 96, mem[_5291 + _5263 + 96 len ceil32(_6756) + 32], 0, addressRequestIDs[arg1], 0, _5211
                            else:
                                mem[ceil32(_6756) + _5291 + _5263 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6756) + 96, mem[_5291 + _5263 + 96 len _6756 + 32], 0, mem[_5291 + _5263 + _6756 + 160 len ceil32(_6756) - _6756], addressRequestIDs[arg1], 0, _5211
                    else:
                        mem[_3945 + _3959 + 32] = 0
                        _5212 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5264 = mem[64]
                        _5292 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5292) <= _5292:
                            _6529 = mem[64]
                            mem[mem[64]] = _5292
                            mem[64] = _5292 + mem[64] + 32
                            mem[0] = sha3(mem[_6529 + 32 len mem[_6529]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5212] = addressRequestIDs[arg1]
                            mem[_5292 + _5264 + 32] = 64
                            _6757 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5292 + _5264 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5292 + _5264 + 128 len ceil32(_6757)] = mem[ceil32(arg2.length) + 160 len ceil32(_6757)]
                            if ceil32(_6757) <= _6757:
                                emit 0x874a2ec5: 64, ceil32(_6757) + 96, mem[_5292 + _5264 + 96 len ceil32(_6757) + 32], 0, addressRequestIDs[arg1], 0, _5212
                            else:
                                mem[ceil32(_6757) + _5292 + _5264 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6757) + 96, mem[_5292 + _5264 + 96 len _6757 + 32], 0, mem[_5292 + _5264 + _6757 + 160 len ceil32(_6757) - _6757], addressRequestIDs[arg1], 0, _5212
                        else:
                            mem[_5292 + mem[64] + 32] = 0
                            _6532 = mem[64]
                            mem[mem[64]] = _5292 + _5264 - mem[64]
                            mem[64] = _5292 + _5264 + 32
                            mem[0] = sha3(mem[_6532 + 32 len mem[_6532]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5212] = addressRequestIDs[arg1]
                            mem[_5292 + _5264 + 32] = 64
                            _6758 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5292 + _5264 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5292 + _5264 + 128 len ceil32(_6758)] = mem[ceil32(arg2.length) + 160 len ceil32(_6758)]
                            if ceil32(_6758) <= _6758:
                                emit 0x874a2ec5: 64, ceil32(_6758) + 96, mem[_5292 + _5264 + 96 len ceil32(_6758) + 32], 0, addressRequestIDs[arg1], 0, _5212
                            else:
                                mem[ceil32(_6758) + _5292 + _5264 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6758) + 96, mem[_5292 + _5264 + 96 len _6758 + 32], 0, mem[_5292 + _5264 + _6758 + 160 len ceil32(_6758) - _6758], addressRequestIDs[arg1], 0, _5212
                else:
                    mem[_2641 + _2648 + 32] = 0
                    _3932 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _3946 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _3960 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_3960] = mem[mem[192] + 128]
                    require _3932 + _3946 + 64 <= arg2.length + 32
                    mem[_3960 + 32 len ceil32(_3946)] = mem[_3932 + 160 len ceil32(_3946)]
                    if ceil32(_3946) <= _3946:
                        _5213 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5265 = mem[64]
                        _5293 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5293) <= _5293:
                            _6535 = mem[64]
                            mem[mem[64]] = _5293
                            mem[64] = _5293 + mem[64] + 32
                            mem[0] = sha3(mem[_6535 + 32 len mem[_6535]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5213] = addressRequestIDs[arg1]
                            mem[_5293 + _5265 + 32] = 64
                            _6759 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5293 + _5265 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5293 + _5265 + 128 len ceil32(_6759)] = mem[ceil32(arg2.length) + 160 len ceil32(_6759)]
                            if ceil32(_6759) <= _6759:
                                emit 0x874a2ec5: 64, ceil32(_6759) + 96, mem[_5293 + _5265 + 96 len ceil32(_6759) + 32], 0, addressRequestIDs[arg1], 0, _5213
                            else:
                                mem[ceil32(_6759) + _5293 + _5265 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6759) + 96, mem[_5293 + _5265 + 96 len _6759 + 32], 0, mem[_5293 + _5265 + _6759 + 160 len ceil32(_6759) - _6759], addressRequestIDs[arg1], 0, _5213
                        else:
                            mem[_5293 + mem[64] + 32] = 0
                            _6538 = mem[64]
                            mem[mem[64]] = _5293 + _5265 - mem[64]
                            mem[64] = _5293 + _5265 + 32
                            mem[0] = sha3(mem[_6538 + 32 len mem[_6538]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5213] = addressRequestIDs[arg1]
                            mem[_5293 + _5265 + 32] = 64
                            _6760 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5293 + _5265 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5293 + _5265 + 128 len ceil32(_6760)] = mem[ceil32(arg2.length) + 160 len ceil32(_6760)]
                            if ceil32(_6760) <= _6760:
                                emit 0x874a2ec5: 64, ceil32(_6760) + 96, mem[_5293 + _5265 + 96 len ceil32(_6760) + 32], 0, addressRequestIDs[arg1], 0, _5213
                            else:
                                mem[ceil32(_6760) + _5293 + _5265 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6760) + 96, mem[_5293 + _5265 + 96 len _6760 + 32], 0, mem[_5293 + _5265 + _6760 + 160 len ceil32(_6760) - _6760], addressRequestIDs[arg1], 0, _5213
                    else:
                        mem[_3946 + _3960 + 32] = 0
                        _5214 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5266 = mem[64]
                        _5294 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5294) <= _5294:
                            _6541 = mem[64]
                            mem[mem[64]] = _5294
                            mem[64] = _5294 + mem[64] + 32
                            mem[0] = sha3(mem[_6541 + 32 len mem[_6541]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5214] = addressRequestIDs[arg1]
                            mem[_5294 + _5266 + 32] = 64
                            _6761 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5294 + _5266 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5294 + _5266 + 128 len ceil32(_6761)] = mem[ceil32(arg2.length) + 160 len ceil32(_6761)]
                            if ceil32(_6761) <= _6761:
                                emit 0x874a2ec5: 64, ceil32(_6761) + 96, mem[_5294 + _5266 + 96 len ceil32(_6761) + 32], 0, addressRequestIDs[arg1], 0, _5214
                            else:
                                mem[ceil32(_6761) + _5294 + _5266 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6761) + 96, mem[_5294 + _5266 + 96 len _6761 + 32], 0, mem[_5294 + _5266 + _6761 + 160 len ceil32(_6761) - _6761], addressRequestIDs[arg1], 0, _5214
                        else:
                            mem[_5294 + mem[64] + 32] = 0
                            _6544 = mem[64]
                            mem[mem[64]] = _5294
                            mem[64] = _5294 + mem[64] + 32
                            mem[0] = sha3(mem[_6544 + 32 len mem[_6544]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5214] = addressRequestIDs[arg1]
                            mem[_5294 + _5266 + 32] = 64
                            _6762 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5294 + _5266 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5294 + _5266 + 128 len ceil32(_6762)] = mem[ceil32(arg2.length) + 160 len ceil32(_6762)]
                            if ceil32(_6762) <= _6762:
                                emit 0x874a2ec5: 64, ceil32(_6762) + 96, mem[_5294 + _5266 + 96 len ceil32(_6762) + 32], 0, addressRequestIDs[arg1], 0, _5214
                            else:
                                mem[ceil32(_6762) + _5294 + _5266 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6762) + 96, mem[_5294 + _5266 + 96 len _6762 + 32], 0, mem[_5294 + _5266 + _6762 + 160 len ceil32(_6762) - _6762], addressRequestIDs[arg1], 0, _5214
            else:
                mem[_1335 + ceil32(arg2.length) + 160] = 0
                _2634 = mem[160]
                require mem[160] <= test266151307()
                require mem[160] + 159 < arg2.length + 128
                _2642 = mem[mem[160] + 128]
                require mem[mem[160] + 128] <= test266151307()
                _2649 = mem[64]
                require mem[64] + ceil32(mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[160] + 128]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[mem[160] + 128]) + 32
                mem[_2649] = mem[mem[160] + 128]
                require _2634 + _2642 + 64 <= arg2.length + 32
                mem[_2649 + 32 len ceil32(_2642)] = mem[_2634 + 160 len ceil32(_2642)]
                if ceil32(_2642) <= _2642:
                    _3933 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _3947 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _3961 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_3961] = mem[mem[192] + 128]
                    require _3933 + _3947 + 64 <= arg2.length + 32
                    mem[_3961 + 32 len ceil32(_3947)] = mem[_3933 + 160 len ceil32(_3947)]
                    if ceil32(_3947) <= _3947:
                        _5215 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5267 = mem[64]
                        _5295 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5295) <= _5295:
                            _6547 = mem[64]
                            mem[mem[64]] = _5295
                            mem[64] = _5295 + mem[64] + 32
                            mem[0] = sha3(mem[_6547 + 32 len mem[_6547]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5215] = addressRequestIDs[arg1]
                            mem[_5295 + _5267 + 32] = 64
                            _6763 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5295 + _5267 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5295 + _5267 + 128 len ceil32(_6763)] = mem[ceil32(arg2.length) + 160 len ceil32(_6763)]
                            if ceil32(_6763) <= _6763:
                                emit 0x874a2ec5: 64, ceil32(_6763) + 96, mem[_5295 + _5267 + 96 len ceil32(_6763) + 32], 0, addressRequestIDs[arg1], 0, _5215
                            else:
                                mem[ceil32(_6763) + _5295 + _5267 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6763) + 96, mem[_5295 + _5267 + 96 len _6763 + 32], 0, mem[_5295 + _5267 + _6763 + 160 len ceil32(_6763) - _6763], addressRequestIDs[arg1], 0, _5215
                        else:
                            mem[_5295 + mem[64] + 32] = 0
                            _6550 = mem[64]
                            mem[mem[64]] = _5295 + _5267 - mem[64]
                            mem[64] = _5295 + _5267 + 32
                            mem[0] = sha3(mem[_6550 + 32 len mem[_6550]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5215] = addressRequestIDs[arg1]
                            mem[_5295 + _5267 + 32] = 64
                            _6764 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5295 + _5267 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5295 + _5267 + 128 len ceil32(_6764)] = mem[ceil32(arg2.length) + 160 len ceil32(_6764)]
                            if ceil32(_6764) <= _6764:
                                emit 0x874a2ec5: 64, ceil32(_6764) + 96, mem[_5295 + _5267 + 96 len ceil32(_6764) + 32], 0, addressRequestIDs[arg1], 0, _5215
                            else:
                                mem[ceil32(_6764) + _5295 + _5267 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6764) + 96, mem[_5295 + _5267 + 96 len _6764 + 32], 0, mem[_5295 + _5267 + _6764 + 160 len ceil32(_6764) - _6764], addressRequestIDs[arg1], 0, _5215
                    else:
                        mem[_3947 + _3961 + 32] = 0
                        _5216 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5268 = mem[64]
                        _5296 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5296) <= _5296:
                            _6553 = mem[64]
                            mem[mem[64]] = _5296
                            mem[64] = _5296 + mem[64] + 32
                            mem[0] = sha3(mem[_6553 + 32 len mem[_6553]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5216] = addressRequestIDs[arg1]
                            mem[_5296 + _5268 + 32] = 64
                            _6765 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5296 + _5268 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5296 + _5268 + 128 len ceil32(_6765)] = mem[ceil32(arg2.length) + 160 len ceil32(_6765)]
                            if ceil32(_6765) <= _6765:
                                emit 0x874a2ec5: 64, ceil32(_6765) + 96, mem[_5296 + _5268 + 96 len ceil32(_6765) + 32], 0, addressRequestIDs[arg1], 0, _5216
                            else:
                                mem[ceil32(_6765) + _5296 + _5268 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6765) + 96, mem[_5296 + _5268 + 96 len _6765 + 32], 0, mem[_5296 + _5268 + _6765 + 160 len ceil32(_6765) - _6765], addressRequestIDs[arg1], 0, _5216
                        else:
                            mem[_5296 + mem[64] + 32] = 0
                            _6556 = mem[64]
                            mem[mem[64]] = _5296 + _5268 - mem[64]
                            mem[64] = _5296 + _5268 + 32
                            mem[0] = sha3(mem[_6556 + 32 len mem[_6556]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5216] = addressRequestIDs[arg1]
                            mem[_5296 + _5268 + 32] = 64
                            _6766 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5296 + _5268 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5296 + _5268 + 128 len ceil32(_6766)] = mem[ceil32(arg2.length) + 160 len ceil32(_6766)]
                            if ceil32(_6766) <= _6766:
                                emit 0x874a2ec5: 64, ceil32(_6766) + 96, mem[_5296 + _5268 + 96 len ceil32(_6766) + 32], 0, addressRequestIDs[arg1], 0, _5216
                            else:
                                mem[ceil32(_6766) + _5296 + _5268 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6766) + 96, mem[_5296 + _5268 + 96 len _6766 + 32], 0, mem[_5296 + _5268 + _6766 + 160 len ceil32(_6766) - _6766], addressRequestIDs[arg1], 0, _5216
                else:
                    mem[_2642 + _2649 + 32] = 0
                    _3934 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _3948 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _3962 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_3962] = mem[mem[192] + 128]
                    require _3934 + _3948 + 64 <= arg2.length + 32
                    mem[_3962 + 32 len ceil32(_3948)] = mem[_3934 + 160 len ceil32(_3948)]
                    if ceil32(_3948) <= _3948:
                        _5217 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5269 = mem[64]
                        _5297 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5297) <= _5297:
                            _6559 = mem[64]
                            mem[mem[64]] = _5297
                            mem[64] = _5297 + mem[64] + 32
                            mem[0] = sha3(mem[_6559 + 32 len mem[_6559]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5217] = addressRequestIDs[arg1]
                            mem[_5297 + _5269 + 32] = 64
                            _6767 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5297 + _5269 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5297 + _5269 + 128 len ceil32(_6767)] = mem[ceil32(arg2.length) + 160 len ceil32(_6767)]
                            if ceil32(_6767) <= _6767:
                                emit 0x874a2ec5: 64, ceil32(_6767) + 96, mem[_5297 + _5269 + 96 len ceil32(_6767) + 32], 0, addressRequestIDs[arg1], 0, _5217
                            else:
                                mem[ceil32(_6767) + _5297 + _5269 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6767) + 96, mem[_5297 + _5269 + 96 len _6767 + 32], 0, mem[_5297 + _5269 + _6767 + 160 len ceil32(_6767) - _6767], addressRequestIDs[arg1], 0, _5217
                        else:
                            mem[_5297 + mem[64] + 32] = 0
                            _6562 = mem[64]
                            mem[mem[64]] = _5297 + _5269 - mem[64]
                            mem[64] = _5297 + _5269 + 32
                            mem[0] = sha3(mem[_6562 + 32 len mem[_6562]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5217] = addressRequestIDs[arg1]
                            mem[_5297 + _5269 + 32] = 64
                            _6768 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5297 + _5269 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5297 + _5269 + 128 len ceil32(_6768)] = mem[ceil32(arg2.length) + 160 len ceil32(_6768)]
                            if ceil32(_6768) <= _6768:
                                emit 0x874a2ec5: 64, ceil32(_6768) + 96, mem[_5297 + _5269 + 96 len ceil32(_6768) + 32], 0, addressRequestIDs[arg1], 0, _5217
                            else:
                                mem[ceil32(_6768) + _5297 + _5269 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6768) + 96, mem[_5297 + _5269 + 96 len _6768 + 32], 0, mem[_5297 + _5269 + _6768 + 160 len ceil32(_6768) - _6768], addressRequestIDs[arg1], 0, _5217
                    else:
                        mem[_3948 + _3962 + 32] = 0
                        _5218 = mem[224]
                        require mem[256] == bool(mem[256])
                        _5270 = mem[64]
                        _5298 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_5298) <= _5298:
                            _6565 = mem[64]
                            mem[mem[64]] = _5298
                            mem[64] = _5298 + mem[64] + 32
                            mem[0] = sha3(mem[_6565 + 32 len mem[_6565]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5218] = addressRequestIDs[arg1]
                            mem[_5298 + _5270 + 32] = 64
                            _6769 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5298 + _5270 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5298 + _5270 + 128 len ceil32(_6769)] = mem[ceil32(arg2.length) + 160 len ceil32(_6769)]
                            if ceil32(_6769) <= _6769:
                                emit 0x874a2ec5: 64, ceil32(_6769) + 96, mem[_5298 + _5270 + 96 len ceil32(_6769) + 32], 0, addressRequestIDs[arg1], 0, _5218
                            else:
                                mem[ceil32(_6769) + _5298 + _5270 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6769) + 96, mem[_5298 + _5270 + 96 len _6769 + 32], 0, mem[_5298 + _5270 + _6769 + 160 len ceil32(_6769) - _6769], addressRequestIDs[arg1], 0, _5218
                        else:
                            mem[_5298 + mem[64] + 32] = 0
                            _6568 = mem[64]
                            mem[mem[64]] = _5298 + _5270 - mem[64]
                            mem[64] = _5298 + _5270 + 32
                            mem[0] = sha3(mem[_6568 + 32 len mem[_6568]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_5218] = addressRequestIDs[arg1]
                            mem[_5298 + _5270 + 32] = 64
                            _6770 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5298 + _5270 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_5298 + _5270 + 128 len ceil32(_6770)] = mem[ceil32(arg2.length) + 160 len ceil32(_6770)]
                            if ceil32(_6770) <= _6770:
                                emit 0x874a2ec5: 64, ceil32(_6770) + 96, mem[_5298 + _5270 + 96 len ceil32(_6770) + 32], 0, addressRequestIDs[arg1], 0, _5218
                            else:
                                mem[ceil32(_6770) + _5298 + _5270 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_6770) + 96, mem[_5298 + _5270 + 96 len _6770 + 32], 0, mem[_5298 + _5270 + _6770 + 160 len ceil32(_6770) - _6770], addressRequestIDs[arg1], 0, _5218
        else:
            encodedData[stor6[arg1]].field_1024 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                encodedData[stor6[arg1]][s + 4].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while encodedData[stor6[arg1]][4].length + 31 / 32 > idx:
                encodedData[stor6[arg1]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
            mem[96] = arg2.length
            mem[128 len arg2.length] = arg2[all]
            mem[arg2.length + 128] = 0
            require arg2.length >= 160
            _2638 = mem[128]
            require mem[128] <= test266151307()
            require mem[128] + 159 < arg2.length + 128
            _2643 = mem[mem[128] + 128]
            require mem[mem[128] + 128] <= test266151307()
            require ceil32(mem[mem[128] + 128]) + 160 >= 128 and ceil32(arg2.length) + ceil32(mem[mem[128] + 128]) + 160 <= test266151307()
            mem[64] = ceil32(arg2.length) + ceil32(mem[mem[128] + 128]) + 160
            mem[ceil32(arg2.length) + 128] = mem[mem[128] + 128]
            require _2638 + _2643 + 64 <= arg2.length + 32
            mem[ceil32(arg2.length) + 160 len ceil32(_2643)] = mem[_2638 + 160 len ceil32(_2643)]
            if ceil32(_2643) <= _2643:
                _3925 = mem[160]
                require mem[160] <= test266151307()
                require mem[160] + 159 < arg2.length + 128
                _3939 = mem[mem[160] + 128]
                require mem[mem[160] + 128] <= test266151307()
                _3953 = mem[64]
                require mem[64] + ceil32(mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[160] + 128]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[mem[160] + 128]) + 32
                mem[_3953] = mem[mem[160] + 128]
                require _3925 + _3939 + 64 <= arg2.length + 32
                mem[_3953 + 32 len ceil32(_3939)] = mem[_3925 + 160 len ceil32(_3939)]
                if ceil32(_3939) <= _3939:
                    _5199 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _5243 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _5279 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_5279] = mem[mem[192] + 128]
                    require _5199 + _5243 + 64 <= arg2.length + 32
                    mem[_5279 + 32 len ceil32(_5243)] = mem[_5199 + 160 len ceil32(_5243)]
                    if ceil32(_5243) <= _5243:
                        _6467 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6787 = mem[64]
                        _6827 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6827) <= _6827:
                            _7539 = mem[64]
                            mem[mem[64]] = _6827
                            mem[64] = _6827 + mem[64] + 32
                            mem[0] = sha3(mem[_7539 + 32 len mem[_7539]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6467] = addressRequestIDs[arg1]
                            mem[_6827 + _6787 + 32] = 64
                            _7923 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6827 + _6787 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6827 + _6787 + 128 len ceil32(_7923)] = mem[ceil32(arg2.length) + 160 len ceil32(_7923)]
                            if ceil32(_7923) <= _7923:
                                emit 0x874a2ec5: 64, ceil32(_7923) + 96, mem[_6827 + _6787 + 96 len ceil32(_7923) + 32], 0, addressRequestIDs[arg1], 0, _6467
                            else:
                                mem[ceil32(_7923) + _6827 + _6787 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7923) + 96, mem[_6827 + _6787 + 96 len _7923 + 32], 0, mem[_6827 + _6787 + _7923 + 160 len ceil32(_7923) - _7923], addressRequestIDs[arg1], 0, _6467
                        else:
                            mem[_6827 + mem[64] + 32] = 0
                            _7542 = mem[64]
                            mem[mem[64]] = _6827 + _6787 - mem[64]
                            mem[64] = _6827 + _6787 + 32
                            mem[0] = sha3(mem[_7542 + 32 len mem[_7542]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6467] = addressRequestIDs[arg1]
                            mem[_6827 + _6787 + 32] = 64
                            _7924 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6827 + _6787 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6827 + _6787 + 128 len ceil32(_7924)] = mem[ceil32(arg2.length) + 160 len ceil32(_7924)]
                            if ceil32(_7924) <= _7924:
                                emit 0x874a2ec5: 64, ceil32(_7924) + 96, mem[_6827 + _6787 + 96 len ceil32(_7924) + 32], 0, addressRequestIDs[arg1], 0, _6467
                            else:
                                mem[ceil32(_7924) + _6827 + _6787 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7924) + 96, mem[_6827 + _6787 + 96 len _7924 + 32], 0, mem[_6827 + _6787 + _7924 + 160 len ceil32(_7924) - _7924], addressRequestIDs[arg1], 0, _6467
                    else:
                        mem[_5243 + _5279 + 32] = 0
                        _6468 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6788 = mem[64]
                        _6828 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6828) <= _6828:
                            _7545 = mem[64]
                            mem[mem[64]] = _6828
                            mem[64] = _6828 + mem[64] + 32
                            mem[0] = sha3(mem[_7545 + 32 len mem[_7545]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6468] = addressRequestIDs[arg1]
                            mem[_6828 + _6788 + 32] = 64
                            _7925 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6828 + _6788 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6828 + _6788 + 128 len ceil32(_7925)] = mem[ceil32(arg2.length) + 160 len ceil32(_7925)]
                            if ceil32(_7925) <= _7925:
                                emit 0x874a2ec5: 64, ceil32(_7925) + 96, mem[_6828 + _6788 + 96 len ceil32(_7925) + 32], 0, addressRequestIDs[arg1], 0, _6468
                            else:
                                mem[ceil32(_7925) + _6828 + _6788 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7925) + 96, mem[_6828 + _6788 + 96 len _7925 + 32], 0, mem[_6828 + _6788 + _7925 + 160 len ceil32(_7925) - _7925], addressRequestIDs[arg1], 0, _6468
                        else:
                            mem[_6828 + mem[64] + 32] = 0
                            _7548 = mem[64]
                            mem[mem[64]] = _6828 + _6788 - mem[64]
                            mem[64] = _6828 + _6788 + 32
                            mem[0] = sha3(mem[_7548 + 32 len mem[_7548]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6468] = addressRequestIDs[arg1]
                            mem[_6828 + _6788 + 32] = 64
                            _7926 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6828 + _6788 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6828 + _6788 + 128 len ceil32(_7926)] = mem[ceil32(arg2.length) + 160 len ceil32(_7926)]
                            if ceil32(_7926) <= _7926:
                                emit 0x874a2ec5: 64, ceil32(_7926) + 96, mem[_6828 + _6788 + 96 len ceil32(_7926) + 32], 0, addressRequestIDs[arg1], 0, _6468
                            else:
                                mem[ceil32(_7926) + _6828 + _6788 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7926) + 96, mem[_6828 + _6788 + 96 len _7926 + 32], 0, mem[_6828 + _6788 + _7926 + 160 len ceil32(_7926) - _7926], addressRequestIDs[arg1], 0, _6468
                else:
                    mem[_3939 + _3953 + 32] = 0
                    _5200 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _5244 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _5280 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_5280] = mem[mem[192] + 128]
                    require _5200 + _5244 + 64 <= arg2.length + 32
                    mem[_5280 + 32 len ceil32(_5244)] = mem[_5200 + 160 len ceil32(_5244)]
                    if ceil32(_5244) <= _5244:
                        _6469 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6789 = mem[64]
                        _6829 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6829) <= _6829:
                            _7551 = mem[64]
                            mem[mem[64]] = _6829
                            mem[64] = _6829 + mem[64] + 32
                            mem[0] = sha3(mem[_7551 + 32 len mem[_7551]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6469] = addressRequestIDs[arg1]
                            mem[_6829 + _6789 + 32] = 64
                            _7927 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6829 + _6789 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6829 + _6789 + 128 len ceil32(_7927)] = mem[ceil32(arg2.length) + 160 len ceil32(_7927)]
                            if ceil32(_7927) <= _7927:
                                emit 0x874a2ec5: 64, ceil32(_7927) + 96, mem[_6829 + _6789 + 96 len ceil32(_7927) + 32], 0, addressRequestIDs[arg1], 0, _6469
                            else:
                                mem[ceil32(_7927) + _6829 + _6789 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7927) + 96, mem[_6829 + _6789 + 96 len _7927 + 32], 0, mem[_6829 + _6789 + _7927 + 160 len ceil32(_7927) - _7927], addressRequestIDs[arg1], 0, _6469
                        else:
                            mem[_6829 + mem[64] + 32] = 0
                            _7554 = mem[64]
                            mem[mem[64]] = _6829 + _6789 - mem[64]
                            mem[64] = _6829 + _6789 + 32
                            mem[0] = sha3(mem[_7554 + 32 len mem[_7554]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6469] = addressRequestIDs[arg1]
                            mem[_6829 + _6789 + 32] = 64
                            _7928 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6829 + _6789 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6829 + _6789 + 128 len ceil32(_7928)] = mem[ceil32(arg2.length) + 160 len ceil32(_7928)]
                            if ceil32(_7928) <= _7928:
                                emit 0x874a2ec5: 64, ceil32(_7928) + 96, mem[_6829 + _6789 + 96 len ceil32(_7928) + 32], 0, addressRequestIDs[arg1], 0, _6469
                            else:
                                mem[ceil32(_7928) + _6829 + _6789 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7928) + 96, mem[_6829 + _6789 + 96 len _7928 + 32], 0, mem[_6829 + _6789 + _7928 + 160 len ceil32(_7928) - _7928], addressRequestIDs[arg1], 0, _6469
                    else:
                        mem[_5244 + _5280 + 32] = 0
                        _6470 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6790 = mem[64]
                        _6830 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6830) <= _6830:
                            _7557 = mem[64]
                            mem[mem[64]] = _6830
                            mem[64] = _6830 + mem[64] + 32
                            mem[0] = sha3(mem[_7557 + 32 len mem[_7557]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6470] = addressRequestIDs[arg1]
                            mem[_6830 + _6790 + 32] = 64
                            _7929 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6830 + _6790 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6830 + _6790 + 128 len ceil32(_7929)] = mem[ceil32(arg2.length) + 160 len ceil32(_7929)]
                            if ceil32(_7929) <= _7929:
                                emit 0x874a2ec5: 64, ceil32(_7929) + 96, mem[_6830 + _6790 + 96 len ceil32(_7929) + 32], 0, addressRequestIDs[arg1], 0, _6470
                            else:
                                mem[ceil32(_7929) + _6830 + _6790 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7929) + 96, mem[_6830 + _6790 + 96 len _7929 + 32], 0, mem[_6830 + _6790 + _7929 + 160 len ceil32(_7929) - _7929], addressRequestIDs[arg1], 0, _6470
                        else:
                            mem[_6830 + mem[64] + 32] = 0
                            _7560 = mem[64]
                            mem[mem[64]] = _6830 + _6790 - mem[64]
                            mem[64] = _6830 + _6790 + 32
                            mem[0] = sha3(mem[_7560 + 32 len mem[_7560]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6470] = addressRequestIDs[arg1]
                            mem[_6830 + _6790 + 32] = 64
                            _7930 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6830 + _6790 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6830 + _6790 + 128 len ceil32(_7930)] = mem[ceil32(arg2.length) + 160 len ceil32(_7930)]
                            if ceil32(_7930) <= _7930:
                                emit 0x874a2ec5: 64, ceil32(_7930) + 96, mem[_6830 + _6790 + 96 len ceil32(_7930) + 32], 0, addressRequestIDs[arg1], 0, _6470
                            else:
                                mem[ceil32(_7930) + _6830 + _6790 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7930) + 96, mem[_6830 + _6790 + 96 len _7930 + 32], 0, mem[_6830 + _6790 + _7930 + 160 len ceil32(_7930) - _7930], addressRequestIDs[arg1], 0, _6470
            else:
                mem[_2643 + ceil32(arg2.length) + 160] = 0
                _3926 = mem[160]
                require mem[160] <= test266151307()
                require mem[160] + 159 < arg2.length + 128
                _3940 = mem[mem[160] + 128]
                require mem[mem[160] + 128] <= test266151307()
                _3954 = mem[64]
                require mem[64] + ceil32(mem[mem[160] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[160] + 128]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[mem[160] + 128]) + 32
                mem[_3954] = mem[mem[160] + 128]
                require _3926 + _3940 + 64 <= arg2.length + 32
                mem[_3954 + 32 len ceil32(_3940)] = mem[_3926 + 160 len ceil32(_3940)]
                if ceil32(_3940) <= _3940:
                    _5201 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _5245 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _5281 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_5281] = mem[mem[192] + 128]
                    require _5201 + _5245 + 64 <= arg2.length + 32
                    mem[_5281 + 32 len ceil32(_5245)] = mem[_5201 + 160 len ceil32(_5245)]
                    if ceil32(_5245) <= _5245:
                        _6471 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6791 = mem[64]
                        _6831 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6831) <= _6831:
                            _7563 = mem[64]
                            mem[mem[64]] = _6831
                            mem[64] = _6831 + mem[64] + 32
                            mem[0] = sha3(mem[_7563 + 32 len mem[_7563]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6471] = addressRequestIDs[arg1]
                            mem[_6831 + _6791 + 32] = 64
                            _7931 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6831 + _6791 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6831 + _6791 + 128 len ceil32(_7931)] = mem[ceil32(arg2.length) + 160 len ceil32(_7931)]
                            if ceil32(_7931) <= _7931:
                                emit 0x874a2ec5: 64, ceil32(_7931) + 96, mem[_6831 + _6791 + 96 len ceil32(_7931) + 32], 0, addressRequestIDs[arg1], 0, _6471
                            else:
                                mem[ceil32(_7931) + _6831 + _6791 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7931) + 96, mem[_6831 + _6791 + 96 len _7931 + 32], 0, mem[_6831 + _6791 + _7931 + 160 len ceil32(_7931) - _7931], addressRequestIDs[arg1], 0, _6471
                        else:
                            mem[_6831 + mem[64] + 32] = 0
                            _7566 = mem[64]
                            mem[mem[64]] = _6831
                            mem[64] = _6831 + mem[64] + 32
                            mem[0] = sha3(mem[_7566 + 32 len mem[_7566]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6471] = addressRequestIDs[arg1]
                            mem[_6831 + _6791 + 32] = 64
                            _7932 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6831 + _6791 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6831 + _6791 + 128 len ceil32(_7932)] = mem[ceil32(arg2.length) + 160 len ceil32(_7932)]
                            if ceil32(_7932) <= _7932:
                                emit 0x874a2ec5: 64, ceil32(_7932) + 96, mem[_6831 + _6791 + 96 len ceil32(_7932) + 32], 0, addressRequestIDs[arg1], 0, _6471
                            else:
                                mem[ceil32(_7932) + _6831 + _6791 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7932) + 96, mem[_6831 + _6791 + 96 len _7932 + 32], 0, mem[_6831 + _6791 + _7932 + 160 len ceil32(_7932) - _7932], addressRequestIDs[arg1], 0, _6471
                    else:
                        mem[_5245 + _5281 + 32] = 0
                        _6472 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6792 = mem[64]
                        _6832 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6832) <= _6832:
                            _7569 = mem[64]
                            mem[mem[64]] = _6832
                            mem[64] = _6832 + mem[64] + 32
                            mem[0] = sha3(mem[_7569 + 32 len mem[_7569]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6472] = addressRequestIDs[arg1]
                            mem[_6832 + _6792 + 32] = 64
                            _7933 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6832 + _6792 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6832 + _6792 + 128 len ceil32(_7933)] = mem[ceil32(arg2.length) + 160 len ceil32(_7933)]
                            if ceil32(_7933) <= _7933:
                                emit 0x874a2ec5: 64, ceil32(_7933) + 96, mem[_6832 + _6792 + 96 len ceil32(_7933) + 32], 0, addressRequestIDs[arg1], 0, _6472
                            else:
                                mem[ceil32(_7933) + _6832 + _6792 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7933) + 96, mem[_6832 + _6792 + 96 len _7933 + 32], 0, mem[_6832 + _6792 + _7933 + 160 len ceil32(_7933) - _7933], addressRequestIDs[arg1], 0, _6472
                        else:
                            mem[_6832 + mem[64] + 32] = 0
                            _7572 = mem[64]
                            mem[mem[64]] = _6832 + _6792 - mem[64]
                            mem[64] = _6832 + _6792 + 32
                            mem[0] = sha3(mem[_7572 + 32 len mem[_7572]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6472] = addressRequestIDs[arg1]
                            mem[_6832 + _6792 + 32] = 64
                            _7934 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6832 + _6792 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6832 + _6792 + 128 len ceil32(_7934)] = mem[ceil32(arg2.length) + 160 len ceil32(_7934)]
                            if ceil32(_7934) <= _7934:
                                emit 0x874a2ec5: 64, ceil32(_7934) + 96, mem[_6832 + _6792 + 96 len ceil32(_7934) + 32], 0, addressRequestIDs[arg1], 0, _6472
                            else:
                                mem[ceil32(_7934) + _6832 + _6792 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7934) + 96, mem[_6832 + _6792 + 96 len _7934 + 32], 0, mem[_6832 + _6792 + _7934 + 160 len ceil32(_7934) - _7934], addressRequestIDs[arg1], 0, _6472
                else:
                    mem[_3940 + _3954 + 32] = 0
                    _5202 = mem[192]
                    require mem[192] <= test266151307()
                    require mem[192] + 159 < arg2.length + 128
                    _5246 = mem[mem[192] + 128]
                    require mem[mem[192] + 128] <= test266151307()
                    _5282 = mem[64]
                    require mem[64] + ceil32(mem[mem[192] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[mem[192] + 128]) + 32 <= test266151307()
                    mem[64] = mem[64] + ceil32(mem[mem[192] + 128]) + 32
                    mem[_5282] = mem[mem[192] + 128]
                    require _5202 + _5246 + 64 <= arg2.length + 32
                    mem[_5282 + 32 len ceil32(_5246)] = mem[_5202 + 160 len ceil32(_5246)]
                    if ceil32(_5246) <= _5246:
                        _6473 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6793 = mem[64]
                        _6833 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6833) <= _6833:
                            _7575 = mem[64]
                            mem[mem[64]] = _6833
                            mem[64] = _6833 + mem[64] + 32
                            mem[0] = sha3(mem[_7575 + 32 len mem[_7575]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6473] = addressRequestIDs[arg1]
                            mem[_6833 + _6793 + 32] = 64
                            _7935 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6833 + _6793 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6833 + _6793 + 128 len ceil32(_7935)] = mem[ceil32(arg2.length) + 160 len ceil32(_7935)]
                            if ceil32(_7935) <= _7935:
                                emit 0x874a2ec5: 64, ceil32(_7935) + 96, mem[_6833 + _6793 + 96 len ceil32(_7935) + 32], 0, addressRequestIDs[arg1], 0, _6473
                            else:
                                mem[ceil32(_7935) + _6833 + _6793 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7935) + 96, mem[_6833 + _6793 + 96 len _7935 + 32], 0, mem[_6833 + _6793 + _7935 + 160 len ceil32(_7935) - _7935], addressRequestIDs[arg1], 0, _6473
                        else:
                            mem[_6833 + mem[64] + 32] = 0
                            _7578 = mem[64]
                            mem[mem[64]] = _6833 + _6793 - mem[64]
                            mem[64] = _6833 + _6793 + 32
                            mem[0] = sha3(mem[_7578 + 32 len mem[_7578]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6473] = addressRequestIDs[arg1]
                            mem[_6833 + _6793 + 32] = 64
                            _7936 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6833 + _6793 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6833 + _6793 + 128 len ceil32(_7936)] = mem[ceil32(arg2.length) + 160 len ceil32(_7936)]
                            if ceil32(_7936) <= _7936:
                                emit 0x874a2ec5: 64, ceil32(_7936) + 96, mem[_6833 + _6793 + 96 len ceil32(_7936) + 32], 0, addressRequestIDs[arg1], 0, _6473
                            else:
                                mem[ceil32(_7936) + _6833 + _6793 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7936) + 96, mem[_6833 + _6793 + 96 len _7936 + 32], 0, mem[_6833 + _6793 + _7936 + 160 len ceil32(_7936) - _7936], addressRequestIDs[arg1], 0, _6473
                    else:
                        mem[_5246 + _5282 + 32] = 0
                        _6474 = mem[224]
                        require mem[256] == bool(mem[256])
                        _6794 = mem[64]
                        _6834 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                        mem[mem[64] + 32 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
                        if ceil32(_6834) <= _6834:
                            _7581 = mem[64]
                            mem[mem[64]] = _6834
                            mem[64] = _6834 + mem[64] + 32
                            mem[0] = sha3(mem[_7581 + 32 len mem[_7581]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6474] = addressRequestIDs[arg1]
                            mem[_6834 + _6794 + 32] = 64
                            _7937 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6834 + _6794 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6834 + _6794 + 128 len ceil32(_7937)] = mem[ceil32(arg2.length) + 160 len ceil32(_7937)]
                            if ceil32(_7937) <= _7937:
                                emit 0x874a2ec5: 64, ceil32(_7937) + 96, mem[_6834 + _6794 + 96 len ceil32(_7937) + 32], 0, addressRequestIDs[arg1], 0, _6474
                            else:
                                mem[ceil32(_7937) + _6834 + _6794 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7937) + 96, mem[_6834 + _6794 + 96 len _7937 + 32], 0, mem[_6834 + _6794 + _7937 + 160 len ceil32(_7937) - _7937], addressRequestIDs[arg1], 0, _6474
                        else:
                            mem[_6834 + mem[64] + 32] = 0
                            _7584 = mem[64]
                            mem[mem[64]] = _6834 + _6794 - mem[64]
                            mem[64] = _6834 + _6794 + 32
                            mem[0] = sha3(mem[_7584 + 32 len mem[_7584]])
                            usernameTo[mem[0]] = addressRequestIDs[arg1]
                            sub_0cdcefb6[_6474] = addressRequestIDs[arg1]
                            mem[_6834 + _6794 + 32] = 64
                            _7938 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6834 + _6794 + 96] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
                            mem[_6834 + _6794 + 128 len ceil32(_7938)] = mem[ceil32(arg2.length) + 160 len ceil32(_7938)]
                            if ceil32(_7938) <= _7938:
                                emit 0x874a2ec5: 64, ceil32(_7938) + 96, mem[_6834 + _6794 + 96 len ceil32(_7938) + 32], 0, addressRequestIDs[arg1], 0, _6474
                            else:
                                mem[ceil32(_7938) + _6834 + _6794 + 128] = 0
                                emit 0x874a2ec5: 64, ceil32(_7938) + 96, mem[_6834 + _6794 + 96 len _7938 + 32], 0, mem[_6834 + _6794 + _7938 + 160 len ceil32(_7938) - _7938], addressRequestIDs[arg1], 0, _6474
        addressRequestIDs[arg1] = 0
        emit 0x5558dd1c: Array(len=arg2.length, data=arg2[all]), addressRequestIDs[arg1]
}



}
