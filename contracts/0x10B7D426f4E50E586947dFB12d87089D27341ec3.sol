contract main {




// =====================  Runtime code  =====================


#
#  - sub_762c4638(?)
#
const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
uint256 stor151;
uint256 sub_127db044;
uint256 sub_a62614e2;
uint8 feePercentage; offset 160
uint8 stor203; offset 168
uint8 stor203; offset 176
uint8 stor203; offset 184
address sub_7c9fbafbAddress;
address feeTakerAddress;
uint256 delta;
array of address sub_766791e1;
array of struct stakings;
array of struct sub_a293b53c;
array of uint256 sub_5746248f;
array of uint256 sub_0c477d40;
mapping of uint8 stor211;
mapping of uint8 stor212;
mapping of uint8 stor213;

function sub_0c477d40(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_0c477d40[arg1]
    return sub_0c477d40[arg1][arg2]
}

function getFeePercentage() payable {
    return feePercentage
}

function sub_127db044(?) payable {
    return sub_127db044
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_3d92e1f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor212[arg1])
}

function whitelistAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor213[arg1])
}

function sub_5746248f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_5746248f[arg1]
    return sub_5746248f[arg1][arg2]
}

function sub_6fd44310(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor211[arg1])
}

function sub_766791e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_766791e1.length
    return address(sub_766791e1[arg1])
}

function sub_7c9fbafb(?) payable {
    return sub_7c9fbafbAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getFeeTaker() payable {
    return feeTakerAddress
}

function sub_a293b53c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a293b53c.length
    return sub_a293b53c[arg1].field_0
}

function sub_a62614e2(?) payable {
    return sub_a62614e2
}

function stakings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakings.length
    return stakings[arg1].field_0
}

function getDelta() payable {
    return delta
}

function _fallback() payable {
    revert
}

function setDelta(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    delta = arg1
}

function setFeeTaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'Cannot set zero address'
    feeTakerAddress = arg1
}

function setFeePercentage(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if arg1 >= 100:
        revert with 0, 'Cannot set fee this high'
    feePercentage = arg1
}

function setFeeReferal(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if arg1 >= 100:
        revert with 0, 'Invalid fee referal'
    uint8(stor203.field_168) = arg1
}

function setMasterStaking(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'master staking wrong address'
    sub_7c9fbafbAddress = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function changeWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'Cannot set zero address'
    if arg2 == bool(stor213[address(arg1)]):
        revert with 0, 'Already set'
    stor213[address(arg1)] = uint8(arg2)
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

function changePromotedLM(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'Must be valid address'
    if not arg2:
        if not uint8(stor203.field_184):
            revert with 0, 'There are no promoted'
        if not stor212[address(arg1)]:
            revert with 0, 'Already not promoted'
        if not uint8(stor203.field_184):
            revert with 0, 17
        uint8(stor203.field_184) = uint8(uint8(stor203.field_184) - 1)
    else:
        if uint8(stor203.field_184) >= 5:
            revert with 0, 'Already has 5 promoted'
        if stor212[address(arg1)]:
            revert with 0, 'Already promoted'
        if uint8(stor203.field_184) == 255:
            revert with 0, 17
        uint8(stor203.field_184) = uint8(uint8(stor203.field_184) + 1)
    stor212[address(arg1)] = uint8(arg2)
}

function changePromotedStaking(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'Must be valid address'
    if not arg2:
        if not uint8(stor203.field_176):
            revert with 0, 'There are no promoted'
        if not stor211[address(arg1)]:
            revert with 0, 'Already not promoted'
        if not uint8(stor203.field_176):
            revert with 0, 17
        uint8(stor203.field_176) = uint8(uint8(stor203.field_176) - 1)
    else:
        if uint8(stor203.field_176) >= 5:
            revert with 0, 'Already has 5 promoted'
        if stor211[address(arg1)]:
            revert with 0, 'Already promoted'
        if uint8(stor203.field_176) == 255:
            revert with 0, 17
        uint8(stor203.field_176) = uint8(uint8(stor203.field_176) + 1)
    stor211[address(arg1)] = uint8(arg2)
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

function checkValidLpAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'lp token address 0x0'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.token1() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if ext_call.success:
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            idx = 0
            while idx < sub_766791e1.length:
                mem[0] = 206
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                require ext_code.size(address(sub_766791e1[idx]))
                staticcall address(sub_766791e1[idx]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), address(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _35 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_35] == mem[_35 + 12 len 20]
                if mem[_35 + 12 len 20] == arg1:
                    return 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    else:
        return 0
}

function getAllStakings(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if stakings.length:
            mem[128] = address(stakings.field_0)
            if (32 * stakings.length) + 32 > 64:
                mem[160] = address(stakings.field_256)
                idx = 160
                s = 1
                while (32 * stakings.length) + 96 > idx:
                    mem[idx + 32] = stakings[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        mem[(32 * stakings.length) + 128] = 32
        mem[(32 * stakings.length) + 160] = stakings.length
        idx = 0
        s = (32 * stakings.length) + 192
        t = 128
        while idx < stakings.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stakings.length) + 128
           len (96 * stakings.length) + 64
    mem[64] = (32 * sub_a293b53c.length) + 128
    mem[96] = sub_a293b53c.length
    if not sub_a293b53c.length:
        mem[(32 * sub_a293b53c.length) + 128] = 32
        mem[(32 * sub_a293b53c.length) + 160] = sub_a293b53c.length
        idx = 0
        s = (32 * sub_a293b53c.length) + 192
        t = 128
        while idx < sub_a293b53c.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_a293b53c.length) + 128
           len (96 * sub_a293b53c.length) + 64
    mem[128] = address(sub_a293b53c.field_0)
    idx = 128
    s = 0
    while (32 * sub_a293b53c.length) + 96 > idx:
        mem[idx + 32] = sub_a293b53c[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_a293b53c.length) + 128] = 32
    mem[(32 * sub_a293b53c.length) + 160] = sub_a293b53c.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_a293b53c.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_a293b53c.length) + -mem[64] + 192
}

function getUserStakings(bool arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        if sub_5746248f[address(arg2)] > test266151307():
            revert with 0, 65
        mem[96] = sub_5746248f[address(arg2)]
        mem[64] = (32 * sub_5746248f[address(arg2)]) + 128
        if sub_5746248f[address(arg2)]:
            mem[128 len 32 * sub_5746248f[address(arg2)]] = call.data[calldata.size len 32 * sub_5746248f[address(arg2)]]
        mem[0] = arg2
        mem[32] = 209
        idx = 0
        while idx < sub_5746248f[address(arg2)]:
            if idx >= sub_5746248f[address(arg2)]:
                revert with 0, 50
            if sub_5746248f[address(arg2)][idx] >= stakings.length:
                revert with 0, 50
            if idx >= sub_5746248f[address(arg2)]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stakings[stor209[address(arg2)][idx]].field_0
            if idx == -1:
                revert with 0, 17
            mem[0] = arg2
            mem[32] = 209
            idx = idx + 1
            continue 
        mem[(32 * sub_5746248f[address(arg2)]) + 128] = 32
        mem[(32 * sub_5746248f[address(arg2)]) + 160] = sub_5746248f[address(arg2)]
        s = 0
        s = mem[64] + 64
        t = 128
        while sub_5746248f[address(arg2)] < sub_5746248f[address(arg2)]:
            mem[s] = mem[t + 12 len 20]
            s = sub_5746248f[address(arg2)] + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if sub_0c477d40[address(arg2)] > test266151307():
            revert with 0, 65
        mem[96] = sub_0c477d40[address(arg2)]
        mem[64] = (32 * sub_0c477d40[address(arg2)]) + 128
        if sub_0c477d40[address(arg2)]:
            mem[128 len 32 * sub_0c477d40[address(arg2)]] = call.data[calldata.size len 32 * sub_0c477d40[address(arg2)]]
        mem[0] = arg2
        mem[32] = 210
        idx = 0
        while idx < sub_0c477d40[address(arg2)]:
            if idx >= sub_0c477d40[address(arg2)]:
                revert with 0, 50
            if sub_0c477d40[address(arg2)][idx] >= sub_a293b53c.length:
                revert with 0, 50
            if idx >= sub_0c477d40[address(arg2)]:
                revert with 0, 50
            mem[(32 * idx) + 128] = sub_a293b53c[stor210[address(arg2)][idx]].field_0
            if idx == -1:
                revert with 0, 17
            mem[0] = arg2
            mem[32] = 210
            idx = idx + 1
            continue 
        mem[(32 * sub_0c477d40[address(arg2)]) + 128] = 32
        mem[(32 * sub_0c477d40[address(arg2)]) + 160] = sub_0c477d40[address(arg2)]
        s = 0
        s = mem[64] + 64
        t = 128
        while sub_0c477d40[address(arg2)] < sub_0c477d40[address(arg2)]:
            mem[s] = mem[t + 12 len 20]
            s = sub_0c477d40[address(arg2)] + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_2811090a(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == uint8(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not address(cd[4]):
        revert with 0, 'Not valid feeTaker address'
    if uint8(cd[68]) > 100:
        revert with 0, 'Invalid referal fee'
    if uint8(cd[36]) > 100:
        revert with 0, 'Invalid referal fee'
    idx = 0
    while idx < ('cd', 132).length:
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        if not address(cd[((32 * idx) + cd[132] + 36)]):
            revert with 0, 'Wrong dex address'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    feeTakerAddress = address(cd[4])
    sub_766791e1.length = ('cd', 132).length
    if not ('cd', 132).length:
        idx = 0
        while sub_766791e1.length > idx:
            uint256(sub_766791e1[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[132] + 36
        while cd[132] + (32 * ('cd', 132).length) + 36 > idx:
            address(sub_766791e1[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 132).length) + 31) >> 5
        while sub_766791e1.length > idx:
            uint256(sub_766791e1[idx]) = 0
            idx = idx + 1
            continue 
    feePercentage = uint8(cd[36])
    uint8(stor203.field_168) = uint8(cd[68])
    delta = cd[100]
    if uint8(stor0.field_8):
        stor151 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor151 = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor151 = 1
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor151 = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor151 = 1
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor151 = 1
                            else:
                                uint16(stor0.field_0) = 257
                                stor151 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
