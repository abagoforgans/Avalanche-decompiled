contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const VERSION = 0x312e312e30000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
array of struct owner;
address sub_42c8d1f0Address;
address portfolioAddress;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0][address(arg1)].field_0)
}

function sub_42c8d1f0(?) payable {
    return sub_42c8d1f0Address
}

function owner() payable {
    if 0 >= owner[0].field_0:
        revert with 0, 50
    return owner[0].field_0
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= owner[arg1].field_0:
        revert with 0, 50
    return owner[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return owner[arg1].field_0
}

function getPortfolio() payable {
    return portfolioAddress
}

function _fallback() payable {
  stop
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return ''
}

function setPortfolio(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-05'
    emit 0xc0413e08: portfolioAddress, arg1
    portfolioAddress = arg1
}

function sub_e7031981(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-06'
    emit 0xbbf74a5a: sub_42c8d1f0Address, address(arg1)
    sub_42c8d1f0Address = address(arg1)
}

function sub_84261ef3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x84261ef3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_86ce50bf(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x86ce50bf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b46fb3a7(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0xb46fb3a7 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e1f3e8f9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0xe1f3e8f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5d51ffbf(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-15'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x5d51ffbf with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cd9ff846(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-16'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0xcd9ff846 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pauseDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-09'
    require ext_code.size(portfolioAddress)
    call portfolioAddress.0x415855d6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6b97239e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x6b97239e with:
            gas gas_remaining wei
           args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_67bd22f5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-11'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x67bd22f5 with:
         gas gas_remaining wei
        args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bffc38ff(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-12'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0xbffc38ff with:
         gas gas_remaining wei
        args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2ac73988(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-18'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x2ac73988 with:
         gas gas_remaining wei
        args arg1, uint8(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addToken(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-19'
    require ext_code.size(portfolioAddress)
    call portfolioAddress.0x9776aacf with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e088aa4b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 5
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-03'
    if arg2 >= 5:
        revert with 0, 33
    require ext_code.size(portfolioAddress)
    call portfolioAddress.0xe088aa4b with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_1bfa0ee3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x1bfa0ee3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_5717f475(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-14'
    if arg2 >= 4:
        revert with 0, 33
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x5717f475 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a08884a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-13'
    if arg2 >= 4:
        revert with 0, 33
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x9a08884a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fe918152(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < 2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-04'
    if arg3 >= 2:
        revert with 0, 33
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0xfe918152 with:
         gas gas_remaining wei
        args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3c4b0a6f(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == uint8(arg2)
    require arg3 == bool(arg3)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-17'
    require ext_code.size(sub_42c8d1f0Address)
    call sub_42c8d1f0Address.0x3c4b0a6f with:
         gas gas_remaining wei
        args arg1, arg2 << 248, bool(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_40a89382(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x40a89382 with:
            gas gas_remaining wei
           args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_7eda3588(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x7eda3588 with:
            gas gas_remaining wei
           args arg1, bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function sub_7530c429(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-08'
    require ext_code.size(portfolioAddress)
    if not arg1:
        call portfolioAddress.0x3f4ba83a with:
             gas gas_remaining wei
    else:
        call portfolioAddress.0x8456cb59 with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pauseTrading(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-10'
    require ext_code.size(sub_42c8d1f0Address)
    if not arg1:
        call sub_42c8d1f0Address.0x3f4ba83a with:
             gas gas_remaining wei
    else:
        call sub_42c8d1f0Address.0x8456cb59 with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stringToBytes32(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        return 0
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_6b84b173(?) payable {
    mem[96] = 0x6b84b17300000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_42c8d1f0Address)
    staticcall sub_42c8d1f0Address.0x6b84b173 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if owner[arg1][1][address(arg2)].field_0:
        if owner[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 - 1 != owner[arg1][1][address(arg2)].field_0 - 1:
            if owner[arg1].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            if owner[arg1][1][address(arg2)].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            owner[arg1][owner[arg1][1][address(arg2)].field_0].field_0 = owner[arg1][owner[arg1].field_0].field_0
            owner[arg1][1][owner[arg1][owner[arg1].field_0].field_0].field_0 = owner[arg1][1][address(arg2)].field_0
        if not owner[arg1].field_0:
            revert with 0, 49
        owner[arg1][owner[arg1].field_0].field_0 = 0
        owner[arg1].field_0--
        owner[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not owner[arg1][1][address(arg2)].field_0:
        owner[arg1].field_0++
        owner[arg1][owner[arg1].field_0].field_0 = arg2
        owner[arg1][owner[arg1].field_0].field_160 = 0
        owner[arg1][1][address(arg2)].field_0 = owner[arg1].field_0
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-01'
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0].field_256
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
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not owner[0][1][address(arg1)].field_0:
        owner[0].field_0++
        owner[0][owner[0].field_0].field_0 = arg1
        owner[0][owner[0].field_0].field_160 = 0
        owner[0][1][address(arg1)].field_0 = owner[0].field_0
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if not uint8(stor0.field_8):
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not owner[0][1][address(msg.sender)].field_0:
        owner[0].field_0++
        owner[0][owner[0].field_0].field_0 = msg.sender
        owner[0][owner[0].field_0].field_160 = 0
        owner[0][1][address(msg.sender)].field_0 = owner[0].field_0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if owner[arg1][1][address(arg2)].field_0:
        if owner[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 - 1 != owner[arg1][1][address(arg2)].field_0 - 1:
            if owner[arg1].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            if owner[arg1][1][address(arg2)].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            owner[arg1][owner[arg1][1][address(arg2)].field_0].field_0 = owner[arg1][owner[arg1].field_0].field_0
            owner[arg1][1][owner[arg1][owner[arg1].field_0].field_0].field_0 = owner[arg1][1][address(arg2)].field_0
        if not owner[arg1].field_0:
            revert with 0, 49
        owner[arg1][owner[arg1].field_0].field_0 = 0
        owner[arg1].field_0--
        owner[arg1][1][address(arg2)].field_0 = 0
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-02'
    if owner[0].field_0 <= 1:
        revert with 0, 'E-ALOA-01'
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0].field_256
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
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 0
        emit RoleRevoked(0, arg1, msg.sender);
    if owner[0][1][address(arg1)].field_0:
        if owner[0][1][address(arg1)].field_0 < 1:
            revert with 0, 17
        if owner[0].field_0 < 1:
            revert with 0, 17
        if owner[0].field_0 - 1 != owner[0][1][address(arg1)].field_0 - 1:
            if owner[0].field_0 - 1 >= owner[0].field_0:
                revert with 0, 50
            if owner[0][1][address(arg1)].field_0 - 1 >= owner[0].field_0:
                revert with 0, 50
            owner[0][owner[0][1][address(arg1)].field_0].field_0 = owner[0][owner[0].field_0].field_0
            owner[0][1][owner[0][owner[0].field_0].field_0].field_0 = owner[0][1][address(arg1)].field_0
        if not owner[0].field_0:
            revert with 0, 49
        owner[0][owner[0].field_0].field_0 = 0
        owner[0].field_0--
        owner[0][1][address(arg1)].field_0 = 0
}

function sub_d6d50da5(?) payable {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    require arg4 == address(arg4)
    require arg5 == uint8(arg5)
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'E-OACC-07'
    if not address(arg2):
        if not address(arg4):
            require ext_code.size(sub_42c8d1f0Address)
            call sub_42c8d1f0Address.0xc21e04ba with:
                 gas gas_remaining wei
                args 0, uint32(arg1), 0x4156415800000000000000000000000000000000000000000000000000000000, 18, uint8(arg3), 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg5 << 248, arg6, arg7
        else:
            mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _15 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _16 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _16
            require _15 + _16 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_16)] = mem[_15 + 128 len ceil32(_16)]
            if ceil32(_16) <= _16:
                if not _16:
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _390 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_390] == mem[_390 + 31 len 1]
                    require ext_code.size(portfolioAddress)
                    call portfolioAddress.0x9776aacf with:
                         gas gas_remaining wei
                        args 0, address(arg4)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg3 << 248, 0, mem[_390] << 248, arg5 << 248, arg6, arg7
                else:
                    _367 = mem[ceil32(return_data.size) + 128]
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _389 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_389] == mem[_389 + 31 len 1]
                    if _367 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(portfolioAddress)
                        call portfolioAddress.0x9776aacf with:
                             gas gas_remaining wei
                            args _367, address(arg4)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg3 << 248, _367, mem[_389] << 248, arg5 << 248, arg6, arg7
            else:
                mem[ceil32(return_data.size) + _16 + 128] = 0
                if not _16:
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_394] == mem[_394 + 31 len 1]
                    require ext_code.size(portfolioAddress)
                    call portfolioAddress.0x9776aacf with:
                         gas gas_remaining wei
                        args 0, address(arg4)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg3 << 248, 0, mem[_394] << 248, arg5 << 248, arg6, arg7
                else:
                    _378 = mem[ceil32(return_data.size) + 128]
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _393 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_393] == mem[_393 + 31 len 1]
                    if _378 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(portfolioAddress)
                        call portfolioAddress.0x9776aacf with:
                             gas gas_remaining wei
                            args _378, address(arg4)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg3 << 248, _378, mem[_393] << 248, arg5 << 248, arg6, arg7
    else:
        mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _10 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _12 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _12
        require _10 + _12 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_12)] = mem[_10 + 128 len ceil32(_12)]
        if ceil32(_12) <= _12:
            if not _12:
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _388 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _396 = mem[_388]
                require mem[_388] == mem[_388 + 31 len 1]
                if not address(arg4):
                    require ext_code.size(portfolioAddress)
                    call portfolioAddress.0x9776aacf with:
                         gas gas_remaining wei
                        args 0, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0, mem[_388] << 248, arg3 << 248, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg5 << 248, arg6, arg7
                else:
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _442 = mem[_426]
                    require mem[_426] <= test266151307()
                    require _426 + return_data.size > _426 + mem[_426] + 31
                    _454 = mem[_426 + mem[_426]]
                    if mem[_426 + mem[_426]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_426 + mem[_426]])) + 1 < 0 or _426 + ceil32(return_data.size) + ceil32(ceil32(mem[_426 + mem[_426]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _426 + ceil32(return_data.size) + ceil32(ceil32(mem[_426 + mem[_426]])) + 1
                    mem[_426 + ceil32(return_data.size)] = _454
                    require _442 + _454 + 32 <= return_data.size
                    mem[_426 + ceil32(return_data.size) + 32 len ceil32(_454)] = mem[_426 + _442 + 32 len ceil32(_454)]
                    if ceil32(_454) <= _454:
                        if not _454:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _758 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_758] == mem[_758 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _396 << 248, arg3 << 248, 0, mem[_758] << 248, arg5 << 248, arg6, arg7
                        else:
                            _713 = mem[_426 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _757 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_757] == mem[_757 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _713 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _713, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _396 << 248, arg3 << 248, _713, mem[_757] << 248, arg5 << 248, arg6, arg7
                    else:
                        mem[_426 + ceil32(return_data.size) + _454 + 32] = 0
                        if not _454:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _766 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_766] == mem[_766 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _396 << 248, arg3 << 248, 0, mem[_766] << 248, arg5 << 248, arg6, arg7
                        else:
                            _728 = mem[_426 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _765 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_765] == mem[_765 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _728 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _728, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _396 << 248, arg3 << 248, _728, mem[_765] << 248, arg5 << 248, arg6, arg7
            else:
                _365 = mem[ceil32(return_data.size) + 128]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _395 = mem[_387]
                require mem[_387] == mem[_387 + 31 len 1]
                if not address(arg4):
                    if _365 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(portfolioAddress)
                        call portfolioAddress.0x9776aacf with:
                             gas gas_remaining wei
                            args _365, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, _365, mem[_387] << 248, arg3 << 248, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg5 << 248, arg6, arg7
                else:
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _423 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _441 = mem[_423]
                    require mem[_423] <= test266151307()
                    require _423 + return_data.size > _423 + mem[_423] + 31
                    _451 = mem[_423 + mem[_423]]
                    if mem[_423 + mem[_423]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_423 + mem[_423]])) + 1 < 0 or _423 + ceil32(return_data.size) + ceil32(ceil32(mem[_423 + mem[_423]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _423 + ceil32(return_data.size) + ceil32(ceil32(mem[_423 + mem[_423]])) + 1
                    mem[_423 + ceil32(return_data.size)] = _451
                    require _441 + _451 + 32 <= return_data.size
                    mem[_423 + ceil32(return_data.size) + 32 len ceil32(_451)] = mem[_423 + _441 + 32 len ceil32(_451)]
                    if ceil32(_451) <= _451:
                        if not _451:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_756] == mem[_756 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            if _365 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _365, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _365, _395 << 248, arg3 << 248, 0, mem[_756] << 248, arg5 << 248, arg6, arg7
                        else:
                            _711 = mem[_423 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _755 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_755] == mem[_755 + 31 len 1]
                            if _365 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _365, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if _711 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _711, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _365, _395 << 248, arg3 << 248, _711, mem[_755] << 248, arg5 << 248, arg6, arg7
                    else:
                        mem[_423 + ceil32(return_data.size) + _451 + 32] = 0
                        if not _451:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_764] == mem[_764 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            if _365 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _365, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _365, _395 << 248, arg3 << 248, 0, mem[_764] << 248, arg5 << 248, arg6, arg7
                        else:
                            _723 = mem[_423 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _763 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_763] == mem[_763 + 31 len 1]
                            if _365 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _365, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if _723 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _723, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _365, _395 << 248, arg3 << 248, _723, mem[_763] << 248, arg5 << 248, arg6, arg7
        else:
            mem[ceil32(return_data.size) + _12 + 128] = 0
            if not _12:
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _400 = mem[_392]
                require mem[_392] == mem[_392 + 31 len 1]
                if not address(arg4):
                    require ext_code.size(portfolioAddress)
                    call portfolioAddress.0x9776aacf with:
                         gas gas_remaining wei
                        args 0, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, 0, mem[_392] << 248, arg3 << 248, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg5 << 248, arg6, arg7
                else:
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _434 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _450 = mem[_434]
                    require mem[_434] <= test266151307()
                    require _434 + return_data.size > _434 + mem[_434] + 31
                    _460 = mem[_434 + mem[_434]]
                    if mem[_434 + mem[_434]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_434 + mem[_434]])) + 1 < 0 or _434 + ceil32(return_data.size) + ceil32(ceil32(mem[_434 + mem[_434]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _434 + ceil32(return_data.size) + ceil32(ceil32(mem[_434 + mem[_434]])) + 1
                    mem[_434 + ceil32(return_data.size)] = _460
                    require _450 + _460 + 32 <= return_data.size
                    mem[_434 + ceil32(return_data.size) + 32 len ceil32(_460)] = mem[_434 + _450 + 32 len ceil32(_460)]
                    if ceil32(_460) <= _460:
                        if not _460:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_762] == mem[_762 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _400 << 248, arg3 << 248, 0, mem[_762] << 248, arg5 << 248, arg6, arg7
                        else:
                            _717 = mem[_434 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_761] == mem[_761 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _717 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _717, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _400 << 248, arg3 << 248, _717, mem[_761] << 248, arg5 << 248, arg6, arg7
                    else:
                        mem[_434 + ceil32(return_data.size) + _460 + 32] = 0
                        if not _460:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_770] == mem[_770 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _400 << 248, arg3 << 248, 0, mem[_770] << 248, arg5 << 248, arg6, arg7
                        else:
                            _738 = mem[_434 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_769] == mem[_769 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if _738 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _738, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, 0, _400 << 248, arg3 << 248, _738, mem[_769] << 248, arg5 << 248, arg6, arg7
            else:
                _373 = mem[ceil32(return_data.size) + 128]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _399 = mem[_391]
                require mem[_391] == mem[_391 + 31 len 1]
                if not address(arg4):
                    if _373 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                        require ext_code.size(portfolioAddress)
                        call portfolioAddress.0x9776aacf with:
                             gas gas_remaining wei
                            args _373, address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_42c8d1f0Address)
                    call sub_42c8d1f0Address.0xc21e04ba with:
                         gas gas_remaining wei
                        args arg1, _373, mem[_391] << 248, arg3 << 248, 0x4156415800000000000000000000000000000000000000000000000000000000, 18, arg5 << 248, arg6, arg7
                else:
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _431 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _449 = mem[_431]
                    require mem[_431] <= test266151307()
                    require _431 + return_data.size > _431 + mem[_431] + 31
                    _457 = mem[_431 + mem[_431]]
                    if mem[_431 + mem[_431]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_431 + mem[_431]])) + 1 < 0 or _431 + ceil32(return_data.size) + ceil32(ceil32(mem[_431 + mem[_431]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _431 + ceil32(return_data.size) + ceil32(ceil32(mem[_431 + mem[_431]])) + 1
                    mem[_431 + ceil32(return_data.size)] = _457
                    require _449 + _457 + 32 <= return_data.size
                    mem[_431 + ceil32(return_data.size) + 32 len ceil32(_457)] = mem[_431 + _449 + 32 len ceil32(_457)]
                    if ceil32(_457) <= _457:
                        if not _457:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_760] == mem[_760 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            if _373 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _373, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _373, _399 << 248, arg3 << 248, 0, mem[_760] << 248, arg5 << 248, arg6, arg7
                        else:
                            _715 = mem[_431 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_759] == mem[_759 + 31 len 1]
                            if _373 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _373, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if _715 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _715, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _373, _399 << 248, arg3 << 248, _715, mem[_759] << 248, arg5 << 248, arg6, arg7
                    else:
                        mem[_431 + ceil32(return_data.size) + _457 + 32] = 0
                        if not _457:
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _768 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_768] == mem[_768 + 31 len 1]
                            require ext_code.size(portfolioAddress)
                            if _373 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _373, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            call portfolioAddress.0x9776aacf with:
                                 gas gas_remaining wei
                                args 0, address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _373, _399 << 248, arg3 << 248, 0, mem[_768] << 248, arg5 << 248, arg6, arg7
                        else:
                            _733 = mem[_431 + ceil32(return_data.size) + 32]
                            require ext_code.size(address(arg4))
                            staticcall address(arg4).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _767 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_767] == mem[_767 + 31 len 1]
                            if _373 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _373, address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            if _733 != 0x4156415800000000000000000000000000000000000000000000000000000000:
                                require ext_code.size(portfolioAddress)
                                call portfolioAddress.0x9776aacf with:
                                     gas gas_remaining wei
                                    args _733, address(arg4)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_42c8d1f0Address)
                            call sub_42c8d1f0Address.0xc21e04ba with:
                                 gas gas_remaining wei
                                args arg1, _373, _399 << 248, arg3 << 248, _733, mem[_767] << 248, arg5 << 248, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
