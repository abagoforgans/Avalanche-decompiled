contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address xAppConnectionManagerAddress;
address tokenBeaconAddress;
mapping of struct sub_b9730eaf;
mapping of address sub_0e71e251;

function representationToCanonical(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_b9730eaf[arg1].field_0, sub_b9730eaf[arg1].field_256
}

function sub_0e71e251(?) payable {
    require calldata.size - 4 >= 32
    if not sub_b9730eaf[address(arg1)].field_0:
        revert with 0, '!repr'
    return sub_0e71e251[mem[192 or 0 or 0 len 36]]
}

function canonicalToRepresentation(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_0e71e251[arg1]
}

function xAppConnectionManager() payable {
    return xAppConnectionManagerAddress
}

function owner() payable {
    return owner
}

function sub_b9730eaf(?) payable {
    require calldata.size - 4 >= 32
    return sub_b9730eaf[address(arg1)].field_0, sub_b9730eaf[address(arg1)].field_256
}

function tokenBeacon() payable {
    return tokenBeaconAddress
}

function sub_dc9685a7(?) payable {
    require calldata.size - 4 >= 64
    return sub_0e71e251[mem[128 or 0 or 0 len 36]]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c86415cb(?) payable {
    require calldata.size - 4 >= 32
    if not sub_b9730eaf[address(arg1)].field_0:
        return bool(ext_code.size(arg1))
    else:
        return 0
}

function setXAppConnectionManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    xAppConnectionManagerAddress = arg1
}

function enrollCustom(uint32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9730eaf[address(arg3)].field_0 = arg1
    sub_b9730eaf[address(arg3)].field_256 = arg2
    sub_0e71e251[mem[128 or 0 or 0 len 36]] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[9297 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLocalAddress(uint32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[28 len 4]:
        return sub_0e71e251[mem[128 or 0 or 0 len 36]]
    return arg2
}

function getLocalAddress(uint32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[28 len 4]:
        return sub_0e71e251[mem[128 or 0 or 0 len 36]]
    return address(arg2)
}

function getTokenId(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_b9730eaf[address(arg1)].field_0:
        return sub_b9730eaf[address(arg1)].field_0, sub_b9730eaf[address(arg1)].field_256
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[28 len 4], address(arg1)
}

function sub_2c3da59c(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[28 len 4]:
        if not sub_0e71e251[mem[128 or 0 or 0 len 36]]:
            revert with 0, '!token'
        return sub_0e71e251[mem[128 or 0 or 0 len 36]]
    if not arg2:
        revert with 0, '!token'
    return arg2
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        tokenBeaconAddress = arg1
        xAppConnectionManagerAddress = arg2
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[9335 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            tokenBeaconAddress = arg1
            xAppConnectionManagerAddress = arg2
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            tokenBeaconAddress = arg1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[9335 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                xAppConnectionManagerAddress = arg2
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                xAppConnectionManagerAddress = arg2
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[9335 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[9335 len 46], mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[9335 len 46], mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
}

function sub_b869d89a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x8d3638f4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == ext_call.return_data[28 len 4]:
        if address(arg2):
            return address(arg2)
        mem[96 len 1378] = code.data[7919 len 1378]
        mem[1474] = tokenBeaconAddress
        mem[1506] = 64
        mem[1538] = 0
        create contract with 0 wei
                        code: code.data[7919 len 1378], tokenBeaconAddress, 64, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x8129fc1c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 31
        while uint8(idx) > 15:
            _62 = mem[64]
            mem[64] = mem[64] + 64
            mem[_62] = 16
            mem[_62 + 32] = '0123456789abcdef'
            require uint8(Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32) / 16 < 16
            _78 = mem[64]
            mem[64] = mem[64] + 64
            mem[_78] = 16
            mem[_78 + 32] = '0123456789abcdef'
            require Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32 % 16 < 16
            idx = idx - 1
            continue 
        idx = 15
        while uint8(idx) < 255:
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 16
            mem[_94 + 32] = '0123456789abcdef'
            require uint8(Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32) / 16 < 16
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 16
            mem[_102 + 32] = '0123456789abcdef'
            require Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32 % 16 < 16
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        t = arg1
        while uint8(idx) < 10:
            idx = idx + 1
            s = s or Mask(80, 0, uint32(uint32(t) % 10) + 48) << 8 * idx % 32
            t = uint32(t) / 10
            continue 
        _116 = mem[64]
        mem[mem[64] + 32] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None << 176
        mem[mem[64] + 42] = '.'
        mem[mem[64] + 43] = 0
        _117 = mem[64]
        mem[mem[64]] = 15
        mem[mem[64] + 47] = 15
        mem[64] = mem[64] + 111
        mem[_116 + 79 len 15] = call.data[calldata.size len 15]
        mem[_116 + 79] = mem[_117 + 32]
        mem[_116 + 111] = 0x654935f400000000000000000000000000000000000000000000000000000000
        mem[_116 + 179] = 18
        mem[_116 + 115] = 96
        mem[_116 + 211] = mem[_117]
        _130 = mem[_117]
        mem[_116 + 243 len ceil32(mem[_117])] = mem[_117 + 32 len ceil32(mem[_117])]
        if not _130 % 32:
            mem[_130 + _116 + 243] = 15
            mem[_130 + _116 + 275] = mem[_116 + 96 len 15]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x654935f4 with:
                 gas gas_remaining wei
                args Array(len=mem[_116 + 211 len _130 + 32], data=15, mem[_116 + _130 + 275]), _130 + 128, 18
        else:
            mem[floor32(_130) + _116 + 243] = mem[floor32(_130) + _116 + -(_130 % 32) + 275 len _130 % 32]
            mem[floor32(_130) + _116 + 275] = 15
            mem[floor32(_130) + _116 + 307] = mem[_116 + 96 len 15]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x654935f4 with:
                 gas gas_remaining wei
                args Array(len=mem[_116 + 211 len floor32(_130) + 64], data=15, mem[_116 + floor32(_130) + 307]), floor32(_130) + 160, 18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_116 + 143] = arg1 << 224
        mem[_116 + 147] = arg2
        mem[_116 + 111] = 36
        mem[64] = _116 + 179
        if not _116 + 179:
            sub_0e71e251[mem[test266151307() len test266151307()]] = address(create.new_address)
        else:
            mem[0] = sha3(mem[uint16(_116 + 143) or 0 or 0 len 36])
            sub_0e71e251[mem[0]] = address(create.new_address)
    else:
        mem[128] = arg1 << 224
        mem[132] = arg2
        mem[96] = 36
        mem[64] = 164
        mem[0] = sha3(mem[128 or 0 or 0 len 36])
        mem[32] = 153
        if sub_0e71e251[mem[128 or 0 or 0 len 36]]:
            return sub_0e71e251[mem[128 or 0 or 0 len 36]]
        mem[164 len 1378] = code.data[7919 len 1378]
        mem[1542] = tokenBeaconAddress
        mem[1574] = 64
        mem[1606] = 0
        create contract with 0 wei
                        code: code.data[7919 len 1378], tokenBeaconAddress, 64, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164] = 0x8129fc1c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 31
        while uint8(idx) > 15:
            _59 = mem[64]
            mem[64] = mem[64] + 64
            mem[_59] = 16
            mem[_59 + 32] = '0123456789abcdef'
            require uint8(Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32) / 16 < 16
            _72 = mem[64]
            mem[64] = mem[64] + 64
            mem[_72] = 16
            mem[_72 + 32] = '0123456789abcdef'
            require Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32 % 16 < 16
            idx = idx - 1
            continue 
        idx = 15
        while uint8(idx) < 255:
            _91 = mem[64]
            mem[64] = mem[64] + 64
            mem[_91] = 16
            mem[_91 + 32] = '0123456789abcdef'
            require uint8(Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32) / 16 < 16
            _99 = mem[64]
            mem[64] = mem[64] + 64
            mem[_99] = 16
            mem[_99 + 32] = '0123456789abcdef'
            require Mask(256, -8 * idx % 32, arg2) >> 8 * idx % 32 % 16 < 16
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        t = arg1
        while uint8(idx) < 10:
            idx = idx + 1
            s = s or Mask(80, 0, uint32(uint32(t) % 10) + 48) << 8 * idx % 32
            t = uint32(t) / 10
            continue 
        _107 = mem[64]
        mem[mem[64] + 32] = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None << 176
        mem[mem[64] + 42] = '.'
        mem[mem[64] + 43] = 0
        _108 = mem[64]
        mem[mem[64]] = 15
        mem[mem[64] + 47] = 15
        mem[64] = mem[64] + 111
        mem[_107 + 79 len 15] = call.data[calldata.size len 15]
        mem[_107 + 79] = mem[_108 + 32]
        mem[_107 + 111] = 0x654935f400000000000000000000000000000000000000000000000000000000
        mem[_107 + 179] = 18
        mem[_107 + 115] = 96
        mem[_107 + 211] = mem[_108]
        _121 = mem[_108]
        mem[_107 + 243 len ceil32(mem[_108])] = mem[_108 + 32 len ceil32(mem[_108])]
        if not _121 % 32:
            mem[_121 + _107 + 243] = 15
            mem[_121 + _107 + 275] = mem[_107 + 96 len 15]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x654935f4 with:
                 gas gas_remaining wei
                args Array(len=mem[_107 + 211 len _121 + 32], data=15, mem[_107 + _121 + 275]), _121 + 128, 18
        else:
            mem[floor32(_121) + _107 + 243] = mem[floor32(_121) + _107 + -(_121 % 32) + 275 len _121 % 32]
            mem[floor32(_121) + _107 + 275] = 15
            mem[floor32(_121) + _107 + 307] = mem[_107 + 96 len 15]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x654935f4 with:
                 gas gas_remaining wei
                args Array(len=mem[_107 + 211 len floor32(_121) + 64], data=15, mem[_107 + floor32(_121) + 307]), floor32(_121) + 160, 18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_107 + 143] = arg1 << 224
        mem[_107 + 147] = arg2
        mem[_107 + 111] = 36
        mem[64] = _107 + 179
        if not _107 + 179:
            sub_0e71e251[mem[test266151307() len test266151307()]] = address(create.new_address)
        else:
            mem[0] = sha3(mem[uint16(_107 + 143) or 0 or 0 len 36])
            sub_0e71e251[mem[0]] = address(create.new_address)
    sub_b9730eaf[address(create.new_address)].field_0 = arg1
    sub_b9730eaf[address(create.new_address)].field_256 = arg2
    emit TokenDeployed(arg1, arg2, address(create.new_address));
    return address(create.new_address)
}



}
