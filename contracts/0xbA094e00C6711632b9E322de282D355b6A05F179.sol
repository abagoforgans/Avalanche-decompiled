contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 paused;
address owner;
uint256 stor151;
address stor201;
address stor202;
address stor203;
address stor204;

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function mintPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 20000:
        return 20000 * 10^18
    if arg1 > 40000:
        return 60000 * 10^18
    return 40000 * 10^18
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        stor201 = arg1
        stor202 = arg2
        stor203 = arg3
        stor204 = arg4
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    stor201 = arg1
    stor202 = arg2
    stor203 = arg3
    stor204 = arg4
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    stor151 = 1
}

function getTokenTraits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10:
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 32, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 208, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 48, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 192, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 64, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 176, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 80, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 160, 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 144, 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10:
            return not not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10, 
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   0,
                   ext_call.return_data[0] << 248,
                   0
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 112, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 128, 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 112, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 128, 7
    else:
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 224, 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 32, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 208, 11
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 48, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 192, 12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 64, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 176, 13
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 80, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 160, 14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 144, 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10:
            return not not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10, 
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   ext_call.return_data[0] << 248,
                   0,
                   ext_call.return_data[0] << 248,
                   0
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 112, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 128, 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        staticcall stor201.0xa6b09692 with:
                gas gas_remaining wei
               args Mask(16, 112, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) << 128, 17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return not not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1)) % 10, 
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           uint8(ext_call.return_data[0])
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'Only EOA'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    staticcall stor203.minted() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + arg1 > 50000:
        revert with 0, 'All tokens minted'
    if arg1 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = arg1
    if not arg1:
        if arg1 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + (32 * arg1) + 128] = arg1
        mem[64] = ceil32(return_data.size) + (64 * arg1) + 160
        if not arg1:
            idx = 0
            s = 0
            s = 0
            while idx < arg1:
                if ext_call.return_data[0] == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -idx - 1:
                    revert with 'NH{q', 17
                if block.number < 1:
                    revert with 'NH{q', 17
                _168 = mem[64]
                mem[mem[64] + 32] = tx.origin
                mem[mem[64] + 52] = block.hash(block.number - 1)
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = ext_call.return_data[0] + idx
                _172 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _174 = sha3(mem[_172 + 32 len mem[_172]])
                if ext_call.return_data[0] + 1 <= 20000:
                    if s > 0xffffffffffffffffffffffffffffffffffffffffffffff88bcdde8197c9fffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_172 + 32 len mem[_172]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_172 + 32 len mem[_172]])
                        s = s + 2200 * 10^18
                        continue 
                    if sha3(mem[_172 + 32 len mem[_172]]) % 2048 >> 245 % 10:
                        mem[_168 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_168 + 152] = this.address
                        mem[_168 + 184] = ext_call.return_data[0] + 1
                        mem[_168 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_168 + 152] = Mask(112, 0, sha3(mem[_172 + 32 len mem[_172]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _174) >> 144)
                        mem[_168 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _168 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_168 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_168 + ceil32(return_data.size) + 152] = this.address
                        mem[_168 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_168 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_168 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _174
                    s = s + 2200 * 10^18
                    continue 
                if ext_call.return_data[0] + 1 > 40000:
                    if s > 0xfffffffffffffffffffffffffffffffffffffffffffffe9a3699b84c75dfffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_172 + 32 len mem[_172]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_172 + 32 len mem[_172]])
                        s = s + 6600 * 10^18
                        continue 
                    if sha3(mem[_172 + 32 len mem[_172]]) % 2048 >> 245 % 10:
                        mem[_168 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_168 + 152] = this.address
                        mem[_168 + 184] = ext_call.return_data[0] + 1
                        mem[_168 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_168 + 152] = Mask(112, 0, sha3(mem[_172 + 32 len mem[_172]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _174) >> 144)
                        mem[_168 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _168 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_168 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_168 + ceil32(return_data.size) + 152] = this.address
                        mem[_168 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_168 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_168 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _174
                    s = s + 6600 * 10^18
                    continue 
                if s > 0xffffffffffffffffffffffffffffffffffffffffffffff1179bbd032f93fffff:
                    revert with 'NH{q', 17
                if uint16(uint16(sha3(mem[_172 + 32 len mem[_172]])) % 100) > 10:
                    if not ext_call.return_data[0] + 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_172 + 32 len mem[_172]])
                    s = s + 4400 * 10^18
                    continue 
                if sha3(mem[_172 + 32 len mem[_172]]) % 2048 >> 245 % 10:
                    mem[_168 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_168 + 152] = this.address
                    mem[_168 + 184] = ext_call.return_data[0] + 1
                    mem[_168 + 216] = msg.sender
                    require ext_code.size(stor203)
                    call stor203.0xeb0b4453 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] + 1, msg.sender
                else:
                    mem[_168 + 152] = Mask(112, 0, sha3(mem[_172 + 32 len mem[_172]])) >> 144
                    staticcall stor204.0x9e6dee4a with:
                            gas gas_remaining wei
                           args (Mask(112, 0, _174) >> 144)
                    mem[_168 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _168 + ceil32(return_data.size) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_168 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_168 + ceil32(return_data.size) + 152] = this.address
                    mem[_168 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                    if ext_call.return_data[12 len 20]:
                        mem[_168 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                    else:
                        mem[_168 + ceil32(return_data.size) + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _174
                s = s + 4400 * 10^18
                continue 
        else:
            mem[ceil32(return_data.size) + (32 * arg1) + 160 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            idx = 0
            s = 0
            s = 0
            while idx < arg1:
                if ext_call.return_data[0] == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -idx - 1:
                    revert with 'NH{q', 17
                if block.number < 1:
                    revert with 'NH{q', 17
                _169 = mem[64]
                mem[mem[64] + 32] = tx.origin
                mem[mem[64] + 52] = block.hash(block.number - 1)
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = ext_call.return_data[0] + idx
                _175 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _177 = sha3(mem[_175 + 32 len mem[_175]])
                if ext_call.return_data[0] + 1 <= 20000:
                    if s > 0xffffffffffffffffffffffffffffffffffffffffffffff88bcdde8197c9fffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_175 + 32 len mem[_175]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_175 + 32 len mem[_175]])
                        s = s + 2200 * 10^18
                        continue 
                    if sha3(mem[_175 + 32 len mem[_175]]) % 2048 >> 245 % 10:
                        mem[_169 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_169 + 152] = this.address
                        mem[_169 + 184] = ext_call.return_data[0] + 1
                        mem[_169 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_169 + 152] = Mask(112, 0, sha3(mem[_175 + 32 len mem[_175]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _177) >> 144)
                        mem[_169 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _169 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_169 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_169 + ceil32(return_data.size) + 152] = this.address
                        mem[_169 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_169 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_169 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _177
                    s = s + 2200 * 10^18
                    continue 
                if ext_call.return_data[0] + 1 > 40000:
                    if s > 0xfffffffffffffffffffffffffffffffffffffffffffffe9a3699b84c75dfffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_175 + 32 len mem[_175]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_175 + 32 len mem[_175]])
                        s = s + 6600 * 10^18
                        continue 
                    if sha3(mem[_175 + 32 len mem[_175]]) % 2048 >> 245 % 10:
                        mem[_169 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_169 + 152] = this.address
                        mem[_169 + 184] = ext_call.return_data[0] + 1
                        mem[_169 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_169 + 152] = Mask(112, 0, sha3(mem[_175 + 32 len mem[_175]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _177) >> 144)
                        mem[_169 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _169 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_169 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_169 + ceil32(return_data.size) + 152] = this.address
                        mem[_169 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_169 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_169 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _177
                    s = s + 6600 * 10^18
                    continue 
                if s > 0xffffffffffffffffffffffffffffffffffffffffffffff1179bbd032f93fffff:
                    revert with 'NH{q', 17
                if uint16(uint16(sha3(mem[_175 + 32 len mem[_175]])) % 100) > 10:
                    if not ext_call.return_data[0] + 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_175 + 32 len mem[_175]])
                    s = s + 4400 * 10^18
                    continue 
                if sha3(mem[_175 + 32 len mem[_175]]) % 2048 >> 245 % 10:
                    mem[_169 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_169 + 152] = this.address
                    mem[_169 + 184] = ext_call.return_data[0] + 1
                    mem[_169 + 216] = msg.sender
                    require ext_code.size(stor203)
                    call stor203.0xeb0b4453 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] + 1, msg.sender
                else:
                    mem[_169 + 152] = Mask(112, 0, sha3(mem[_175 + 32 len mem[_175]])) >> 144
                    staticcall stor204.0x9e6dee4a with:
                            gas gas_remaining wei
                           args (Mask(112, 0, _177) >> 144)
                    mem[_169 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _169 + ceil32(return_data.size) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_169 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_169 + ceil32(return_data.size) + 152] = this.address
                    mem[_169 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                    if ext_call.return_data[12 len 20]:
                        mem[_169 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                    else:
                        mem[_169 + ceil32(return_data.size) + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _177
                s = s + 4400 * 10^18
                continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
        if arg1 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + (32 * arg1) + 128] = arg1
        mem[64] = ceil32(return_data.size) + (64 * arg1) + 160
        if not arg1:
            idx = 0
            s = 0
            s = 0
            while idx < arg1:
                if ext_call.return_data[0] == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -idx - 1:
                    revert with 'NH{q', 17
                if block.number < 1:
                    revert with 'NH{q', 17
                _170 = mem[64]
                mem[mem[64] + 32] = tx.origin
                mem[mem[64] + 52] = block.hash(block.number - 1)
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = ext_call.return_data[0] + idx
                _178 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _180 = sha3(mem[_178 + 32 len mem[_178]])
                if ext_call.return_data[0] + 1 <= 20000:
                    if s > 0xffffffffffffffffffffffffffffffffffffffffffffff88bcdde8197c9fffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_178 + 32 len mem[_178]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_178 + 32 len mem[_178]])
                        s = s + 2200 * 10^18
                        continue 
                    if sha3(mem[_178 + 32 len mem[_178]]) % 2048 >> 245 % 10:
                        mem[_170 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_170 + 152] = this.address
                        mem[_170 + 184] = ext_call.return_data[0] + 1
                        mem[_170 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_170 + 152] = Mask(112, 0, sha3(mem[_178 + 32 len mem[_178]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _180) >> 144)
                        mem[_170 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _170 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_170 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_170 + ceil32(return_data.size) + 152] = this.address
                        mem[_170 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_170 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_170 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _180
                    s = s + 2200 * 10^18
                    continue 
                if ext_call.return_data[0] + 1 > 40000:
                    if s > 0xfffffffffffffffffffffffffffffffffffffffffffffe9a3699b84c75dfffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_178 + 32 len mem[_178]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_178 + 32 len mem[_178]])
                        s = s + 6600 * 10^18
                        continue 
                    if sha3(mem[_178 + 32 len mem[_178]]) % 2048 >> 245 % 10:
                        mem[_170 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_170 + 152] = this.address
                        mem[_170 + 184] = ext_call.return_data[0] + 1
                        mem[_170 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_170 + 152] = Mask(112, 0, sha3(mem[_178 + 32 len mem[_178]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _180) >> 144)
                        mem[_170 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _170 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_170 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_170 + ceil32(return_data.size) + 152] = this.address
                        mem[_170 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_170 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_170 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _180
                    s = s + 6600 * 10^18
                    continue 
                if s > 0xffffffffffffffffffffffffffffffffffffffffffffff1179bbd032f93fffff:
                    revert with 'NH{q', 17
                if uint16(uint16(sha3(mem[_178 + 32 len mem[_178]])) % 100) > 10:
                    if not ext_call.return_data[0] + 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_178 + 32 len mem[_178]])
                    s = s + 4400 * 10^18
                    continue 
                if sha3(mem[_178 + 32 len mem[_178]]) % 2048 >> 245 % 10:
                    mem[_170 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_170 + 152] = this.address
                    mem[_170 + 184] = ext_call.return_data[0] + 1
                    mem[_170 + 216] = msg.sender
                    require ext_code.size(stor203)
                    call stor203.0xeb0b4453 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] + 1, msg.sender
                else:
                    mem[_170 + 152] = Mask(112, 0, sha3(mem[_178 + 32 len mem[_178]])) >> 144
                    staticcall stor204.0x9e6dee4a with:
                            gas gas_remaining wei
                           args (Mask(112, 0, _180) >> 144)
                    mem[_170 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _170 + ceil32(return_data.size) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_170 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_170 + ceil32(return_data.size) + 152] = this.address
                    mem[_170 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                    if ext_call.return_data[12 len 20]:
                        mem[_170 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                    else:
                        mem[_170 + ceil32(return_data.size) + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _180
                s = s + 4400 * 10^18
                continue 
        else:
            mem[ceil32(return_data.size) + (32 * arg1) + 160 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
            idx = 0
            s = 0
            s = 0
            while idx < arg1:
                if ext_call.return_data[0] == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -idx - 1:
                    revert with 'NH{q', 17
                if block.number < 1:
                    revert with 'NH{q', 17
                _171 = mem[64]
                mem[mem[64] + 32] = tx.origin
                mem[mem[64] + 52] = block.hash(block.number - 1)
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = ext_call.return_data[0] + idx
                _181 = mem[64]
                mem[mem[64]] = 116
                mem[64] = mem[64] + 148
                _183 = sha3(mem[_181 + 32 len mem[_181]])
                if ext_call.return_data[0] + 1 <= 20000:
                    if s > 0xffffffffffffffffffffffffffffffffffffffffffffff88bcdde8197c9fffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_181 + 32 len mem[_181]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_181 + 32 len mem[_181]])
                        s = s + 2200 * 10^18
                        continue 
                    if sha3(mem[_181 + 32 len mem[_181]]) % 2048 >> 245 % 10:
                        mem[_171 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_171 + 152] = this.address
                        mem[_171 + 184] = ext_call.return_data[0] + 1
                        mem[_171 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_171 + 152] = Mask(112, 0, sha3(mem[_181 + 32 len mem[_181]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _183) >> 144)
                        mem[_171 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _171 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_171 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_171 + ceil32(return_data.size) + 152] = this.address
                        mem[_171 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_171 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_171 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _183
                    s = s + 2200 * 10^18
                    continue 
                if ext_call.return_data[0] + 1 > 40000:
                    if s > 0xfffffffffffffffffffffffffffffffffffffffffffffe9a3699b84c75dfffff:
                        revert with 'NH{q', 17
                    if uint16(uint16(sha3(mem[_181 + 32 len mem[_181]])) % 100) > 10:
                        if not ext_call.return_data[0] + 1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = sha3(mem[_181 + 32 len mem[_181]])
                        s = s + 6600 * 10^18
                        continue 
                    if sha3(mem[_181 + 32 len mem[_181]]) % 2048 >> 245 % 10:
                        mem[_171 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_171 + 152] = this.address
                        mem[_171 + 184] = ext_call.return_data[0] + 1
                        mem[_171 + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    else:
                        mem[_171 + 152] = Mask(112, 0, sha3(mem[_181 + 32 len mem[_181]])) >> 144
                        staticcall stor204.0x9e6dee4a with:
                                gas gas_remaining wei
                               args (Mask(112, 0, _183) >> 144)
                        mem[_171 + 148] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _171 + ceil32(return_data.size) + 148
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_171 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                        mem[_171 + ceil32(return_data.size) + 152] = this.address
                        mem[_171 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                        if ext_call.return_data[12 len 20]:
                            mem[_171 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                        else:
                            mem[_171 + ceil32(return_data.size) + 216] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0xeb0b4453 with:
                                 gas gas_remaining wei
                                args address(this.address), ext_call.return_data[0] + 1, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _183
                    s = s + 6600 * 10^18
                    continue 
                if s > 0xffffffffffffffffffffffffffffffffffffffffffffff1179bbd032f93fffff:
                    revert with 'NH{q', 17
                if uint16(uint16(sha3(mem[_181 + 32 len mem[_181]])) % 100) > 10:
                    if not ext_call.return_data[0] + 1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = sha3(mem[_181 + 32 len mem[_181]])
                    s = s + 4400 * 10^18
                    continue 
                if sha3(mem[_181 + 32 len mem[_181]]) % 2048 >> 245 % 10:
                    mem[_171 + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_171 + 152] = this.address
                    mem[_171 + 184] = ext_call.return_data[0] + 1
                    mem[_171 + 216] = msg.sender
                    require ext_code.size(stor203)
                    call stor203.0xeb0b4453 with:
                         gas gas_remaining wei
                        args address(this.address), ext_call.return_data[0] + 1, msg.sender
                else:
                    mem[_171 + 152] = Mask(112, 0, sha3(mem[_181 + 32 len mem[_181]])) >> 144
                    staticcall stor204.0x9e6dee4a with:
                            gas gas_remaining wei
                           args (Mask(112, 0, _183) >> 144)
                    mem[_171 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _171 + ceil32(return_data.size) + 148
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_171 + ceil32(return_data.size) + 148] = 0xeb0b445300000000000000000000000000000000000000000000000000000000
                    mem[_171 + ceil32(return_data.size) + 152] = this.address
                    mem[_171 + ceil32(return_data.size) + 184] = ext_call.return_data[0] + 1
                    if ext_call.return_data[12 len 20]:
                        mem[_171 + ceil32(return_data.size) + 216] = address(ext_call.return_data[0])
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, address(ext_call.return_data[0])
                    else:
                        mem[_171 + ceil32(return_data.size) + 216] = msg.sender
                        require ext_code.size(stor203)
                        call stor203.0xeb0b4453 with:
                             gas gas_remaining wei
                            args address(this.address), ext_call.return_data[0] + 1, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _183
                s = s + 4400 * 10^18
                continue 
    require ext_code.size(stor202)
    call stor202.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}



}
