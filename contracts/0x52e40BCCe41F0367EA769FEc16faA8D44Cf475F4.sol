contract main {




// =====================  Runtime code  =====================


#
#  - getOrCreateReserve(address arg1)
#
const REVISION = 210


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor51;
address owner;
address stor358;
address stor359;
uint256 reserveBytecodeHash;
mapping of address reserve;
array of struct stor362;
mapping of uint256 stor363;
address sub_d88a0c48Address;

function sub_532cc278(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor363[address(arg1)])
}

function owner() payable {
    return owner
}

function reserveBytecodeHash() payable {
    return reserveBytecodeHash
}

function getReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserve[address(arg1)]
}

function sub_d88a0c48(?) payable {
    return sub_d88a0c48Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8195 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ce97a558(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8195 len 32]
    sub_d88a0c48Address = address(arg1)
}

function upgrade() payable {
    require ext_code.size(sub_d88a0c48Address)
    call sub_d88a0c48Address.0xf633418b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8195 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[8111 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function registerLendable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8195 len 32]
    if stor363[address(arg1)]:
        revert with 0, '', 0
    if not stor363[address(arg1)]:
        stor362.length++
        stor362[stor362.length].field_0 = arg1
        stor362[stor362.length].field_160 = 0
        stor363[address(arg1)] = stor362.length
    return 1
}

function getAllLendables() payable {
    if stor362.length:
        mem[128] = uint256(stor362.field_0)
        idx = 128
        s = 0
        while (32 * stor362.length) + 96 > idx:
            mem[idx + 32] = stor362[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor362.length, data=mem[128 len 32 * stor362.length])
    mem[(32 * stor362.length) + 128] = 32
    mem[(32 * stor362.length) + 160] = stor362.length
    mem[(32 * stor362.length) + 192 len 32 * stor362.length] = mem[128 len 32 * stor362.length]
    return memory
      from (32 * stor362.length) + 128
       len (96 * stor362.length) + 64
}

function sub_745dcd2f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8195 len 32]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 363
        if not stor363[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 363
            if not stor363[address(cd[((32 * idx) + cd[4] + 36)])]:
                stor362.length++
                stor362[stor362.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
                stor362[stor362.length].field_160 = 0
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 363
                stor363[address(cd[((32 * idx) + cd[4] + 36)])] = stor362.length
        idx = idx + 1
        continue 
    return 1
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
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
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
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
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[8149 len 46], mem[210 len 18]
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
    if 210 <= stor51:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[8227 len 40], mem[204 len 24]
    stor51 = 210
    if uint8(stor0.field_8):
        reserveBytecodeHash = 0x100000000000000000000000000000000000000000000000000000000000000
        stor358 = arg1
        stor359 = arg2
    else:
        uint8(stor0.field_8) = 0
        reserveBytecodeHash = 0x100000000000000000000000000000000000000000000000000000000000000
        stor358 = arg1
        stor359 = arg2
        uint8(stor0.field_8) = 0
}

function sub_7bf8c2fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor358)
    staticcall stor358.0x2fb03d01 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0x4e53000000000000000000000000000000000000000000000000000000000000
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    mem[0] = address(arg1)
    mem[32] = 361
    if reserve[address(arg1)]:
        require ext_code.size(reserve[address(arg1)])
        staticcall reserve[address(arg1)].implementation() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdde43cba with:
                gas gas_remaining wei
        if not ext_call.success:
            require ext_code.size(sub_d88a0c48Address)
            call sub_d88a0c48Address.0xf633418b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(reserve[address(arg1)])
            call reserve[address(arg1)].upgradeTo(address arg1) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            if ext_call.return_data[0] < 210:
                require ext_code.size(sub_d88a0c48Address)
                call sub_d88a0c48Address.0xf633418b with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(reserve[address(arg1)])
                call reserve[address(arg1)].upgradeTo(address arg1) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor359)
        call stor359.0x8d9a3cf0 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return reserve[address(arg1)]
    mem[ceil32(return_data.size) + 160] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _16 = mem[ceil32(return_data.size) + 160]
    require mem[ceil32(return_data.size) + 160] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 191 < ceil32(return_data.size) + return_data.size + 160
    _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160] <= test266151307()
    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 192 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 160] + 160]) + 192
    mem[(2 * ceil32(return_data.size)) + 160] = _18
    require return_data.size >= _18 + _16 + 32
    mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_18)] = mem[ceil32(return_data.size) + _16 + 192 len ceil32(_18)]
    if ceil32(_18) <= _18:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1444 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1447 = mem[_1444]
        require mem[_1444] <= test266151307()
        require _1444 + mem[_1444] + 31 < _1444 + return_data.size
        _1449 = mem[_1444 + mem[_1444]]
        require mem[_1444 + mem[_1444]] <= test266151307()
        require ceil32(mem[_1444 + mem[_1444]]) + 32 >= 0 and _1444 + ceil32(return_data.size) + ceil32(mem[_1444 + mem[_1444]]) + 32 <= test266151307()
        mem[64] = _1444 + ceil32(return_data.size) + ceil32(mem[_1444 + mem[_1444]]) + 32
        mem[_1444 + ceil32(return_data.size)] = _1449
        require return_data.size >= _1449 + _1447 + 32
        mem[_1444 + ceil32(return_data.size) + 32 len ceil32(_1449)] = mem[_1444 + _1447 + 32 len ceil32(_1449)]
        if ceil32(_1449) <= _1449:
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor359)
            call stor359.0xf21be588 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2837 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2841 = mem[_2837]
            require mem[_2837] == mem[_2837 + 12 len 20]
            _2845 = mem[64]
            mem[mem[64] + 36] = stor358
            mem[mem[64] + 68] = address(_2841)
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = _18
            mem[mem[64] + 228 len ceil32(_18)] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_18)]
            if ceil32(_18) <= _18:
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1449
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1449)] = mem[_1444 + ceil32(return_data.size) + 32 len ceil32(_1449)]
                if ceil32(_1449) <= _1449:
                    mem[mem[64] + 164] = address(arg1)
                    _5557 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 380] = 96
                    _5765 = mem[_5557]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412] = mem[_5557]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 444 len ceil32(_5765)] = mem[_5557 + 32 len ceil32(_5765)]
                    if ceil32(_5765) > _5765:
                        mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + _5765 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412 len ceil32(_5765) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1449 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5574 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 380] = 96
                    _5773 = mem[_5574]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412] = mem[_5574]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 444 len ceil32(_5773)] = mem[_5574 + 32 len ceil32(_5773)]
                    if ceil32(_5773) > _5773:
                        mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + _5773 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412 len ceil32(_5773) + 32]
            else:
                mem[mem[64] + _18 + 228] = 0
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1449
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1449)] = mem[_1444 + ceil32(return_data.size) + 32 len ceil32(_1449)]
                if ceil32(_1449) <= _1449:
                    mem[mem[64] + 164] = address(arg1)
                    _5559 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 380] = 96
                    _5766 = mem[_5559]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412] = mem[_5559]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 444 len ceil32(_5766)] = mem[_5559 + 32 len ceil32(_5766)]
                    if ceil32(_5766) > _5766:
                        mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + _5766 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412 len ceil32(_5766) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1449 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5577 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 380] = 96
                    _5774 = mem[_5577]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412] = mem[_5577]
                    mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 444 len ceil32(_5774)] = mem[_5577 + 32 len ceil32(_5774)]
                    if ceil32(_5774) > _5774:
                        mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + _5774 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2845 + ceil32(return_data.size) + 412 len ceil32(_5774) + 32]
        else:
            mem[_1444 + ceil32(return_data.size) + _1449 + 32] = 0
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor359)
            call stor359.0xf21be588 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2843 = mem[_2839]
            require mem[_2839] == mem[_2839 + 12 len 20]
            _2847 = mem[64]
            mem[mem[64] + 36] = stor358
            mem[mem[64] + 68] = address(_2843)
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = _18
            mem[mem[64] + 228 len ceil32(_18)] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_18)]
            if ceil32(_18) <= _18:
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1449
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1449)] = mem[_1444 + ceil32(return_data.size) + 32 len ceil32(_1449)]
                if ceil32(_1449) <= _1449:
                    mem[mem[64] + 164] = address(arg1)
                    _5561 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 380] = 96
                    _5767 = mem[_5561]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412] = mem[_5561]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 444 len ceil32(_5767)] = mem[_5561 + 32 len ceil32(_5767)]
                    if ceil32(_5767) > _5767:
                        mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + _5767 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412 len ceil32(_5767) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1449 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5580 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 380] = 96
                    _5775 = mem[_5580]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412] = mem[_5580]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 444 len ceil32(_5775)] = mem[_5580 + 32 len ceil32(_5775)]
                    if ceil32(_5775) > _5775:
                        mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + _5775 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412 len ceil32(_5775) + 32]
            else:
                mem[mem[64] + _18 + 228] = 0
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1449
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1449)] = mem[_1444 + ceil32(return_data.size) + 32 len ceil32(_1449)]
                if ceil32(_1449) <= _1449:
                    mem[mem[64] + 164] = address(arg1)
                    _5563 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 380] = 96
                    _5768 = mem[_5563]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412] = mem[_5563]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 444 len ceil32(_5768)] = mem[_5563 + 32 len ceil32(_5768)]
                    if ceil32(_5768) > _5768:
                        mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + _5768 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412 len ceil32(_5768) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1449 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5583 = mem[64]
                    mem[mem[64]] = ceil32(_1449) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 292] = address(arg1)
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 260] = 20
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 380] = 96
                    _5776 = mem[_5583]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412] = mem[_5583]
                    mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 444 len ceil32(_5776)] = mem[_5583 + 32 len ceil32(_5776)]
                    if ceil32(_5776) > _5776:
                        mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + _5776 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1449) + ceil32(_18) + _2847 + ceil32(return_data.size) + 412 len ceil32(_5776) + 32]
    else:
        mem[(2 * ceil32(return_data.size)) + _18 + 192] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1446 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1448 = mem[_1446]
        require mem[_1446] <= test266151307()
        require _1446 + mem[_1446] + 31 < _1446 + return_data.size
        _1451 = mem[_1446 + mem[_1446]]
        require mem[_1446 + mem[_1446]] <= test266151307()
        require ceil32(mem[_1446 + mem[_1446]]) + 32 >= 0 and _1446 + ceil32(return_data.size) + ceil32(mem[_1446 + mem[_1446]]) + 32 <= test266151307()
        mem[64] = _1446 + ceil32(return_data.size) + ceil32(mem[_1446 + mem[_1446]]) + 32
        mem[_1446 + ceil32(return_data.size)] = _1451
        require return_data.size >= _1451 + _1448 + 32
        mem[_1446 + ceil32(return_data.size) + 32 len ceil32(_1451)] = mem[_1446 + _1448 + 32 len ceil32(_1451)]
        if ceil32(_1451) <= _1451:
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor359)
            call stor359.0xf21be588 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2842 = mem[_2838]
            require mem[_2838] == mem[_2838 + 12 len 20]
            _2846 = mem[64]
            mem[mem[64] + 36] = stor358
            mem[mem[64] + 68] = address(_2842)
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = _18
            mem[mem[64] + 228 len ceil32(_18)] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_18)]
            if ceil32(_18) <= _18:
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1451
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1451)] = mem[_1446 + ceil32(return_data.size) + 32 len ceil32(_1451)]
                if ceil32(_1451) <= _1451:
                    mem[mem[64] + 164] = address(arg1)
                    _5565 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 380] = 96
                    _5769 = mem[_5565]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412] = mem[_5565]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 444 len ceil32(_5769)] = mem[_5565 + 32 len ceil32(_5769)]
                    if ceil32(_5769) > _5769:
                        mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + _5769 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412 len ceil32(_5769) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1451 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5586 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 380] = 96
                    _5777 = mem[_5586]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412] = mem[_5586]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 444 len ceil32(_5777)] = mem[_5586 + 32 len ceil32(_5777)]
                    if ceil32(_5777) > _5777:
                        mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + _5777 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412 len ceil32(_5777) + 32]
            else:
                mem[mem[64] + _18 + 228] = 0
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1451
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1451)] = mem[_1446 + ceil32(return_data.size) + 32 len ceil32(_1451)]
                if ceil32(_1451) <= _1451:
                    mem[mem[64] + 164] = address(arg1)
                    _5567 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 380] = 96
                    _5770 = mem[_5567]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412] = mem[_5567]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 444 len ceil32(_5770)] = mem[_5567 + 32 len ceil32(_5770)]
                    if ceil32(_5770) > _5770:
                        mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + _5770 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412 len ceil32(_5770) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1451 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5589 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 380] = 96
                    _5778 = mem[_5589]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412] = mem[_5589]
                    mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 444 len ceil32(_5778)] = mem[_5589 + 32 len ceil32(_5778)]
                    if ceil32(_5778) > _5778:
                        mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + _5778 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2846 + ceil32(return_data.size) + 412 len ceil32(_5778) + 32]
        else:
            mem[_1446 + ceil32(return_data.size) + _1451 + 32] = 0
            mem[mem[64] + 4] = address(arg1)
            require ext_code.size(stor359)
            call stor359.0xf21be588 with:
                 gas gas_remaining wei
                args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2840 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2844 = mem[_2840]
            require mem[_2840] == mem[_2840 + 12 len 20]
            _2848 = mem[64]
            mem[mem[64] + 36] = stor358
            mem[mem[64] + 68] = address(_2844)
            mem[mem[64] + 100] = 160
            mem[mem[64] + 196] = _18
            mem[mem[64] + 228 len ceil32(_18)] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(_18)]
            if ceil32(_18) <= _18:
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1451
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1451)] = mem[_1446 + ceil32(return_data.size) + 32 len ceil32(_1451)]
                if ceil32(_1451) <= _1451:
                    mem[mem[64] + 164] = address(arg1)
                    _5569 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 380] = 96
                    _5771 = mem[_5569]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412] = mem[_5569]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 444 len ceil32(_5771)] = mem[_5569 + 32 len ceil32(_5771)]
                    if ceil32(_5771) > _5771:
                        mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + _5771 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412 len ceil32(_5771) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1451 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5592 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 380] = 96
                    _5779 = mem[_5592]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412] = mem[_5592]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 444 len ceil32(_5779)] = mem[_5592 + 32 len ceil32(_5779)]
                    if ceil32(_5779) > _5779:
                        mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + _5779 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412 len ceil32(_5779) + 32]
            else:
                mem[mem[64] + _18 + 228] = 0
                mem[mem[64] + 132] = ceil32(_18) + 192
                mem[ceil32(_18) + mem[64] + 228] = _1451
                mem[ceil32(_18) + mem[64] + 260 len ceil32(_1451)] = mem[_1446 + ceil32(return_data.size) + 32 len ceil32(_1451)]
                if ceil32(_1451) <= _1451:
                    mem[mem[64] + 164] = address(arg1)
                    _5571 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 380] = 96
                    _5772 = mem[_5571]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412] = mem[_5571]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 444 len ceil32(_5772)] = mem[_5571 + 32 len ceil32(_5772)]
                    if ceil32(_5772) > _5772:
                        mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + _5772 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412 len ceil32(_5772) + 32]
                else:
                    mem[ceil32(_18) + mem[64] + _1451 + 260] = 0
                    mem[mem[64] + 164] = address(arg1)
                    _5595 = mem[64]
                    mem[mem[64]] = ceil32(_1451) + ceil32(_18) + 228
                    mem[mem[64] + 32 len 4] = initialize(address arg1, address arg2, string arg3, string arg4, address arg5)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 292] = address(arg1)
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 260] = 20
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312 len 2371] = code.data[5740 len 2371]
                    create2 contract with 0 wei
                                    salt: sha3(address(arg1))
                                    code: code.data[5740 len 2371]
                    if not create2.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d88a0c48Address)
                    call sub_d88a0c48Address.0xf633418b with:
                         gas gas_remaining wei
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + 312] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 312] = 0xcf7a1d7700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 316] = address(ext_call.return_data[0])
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 348] = this.address
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 380] = 96
                    _5780 = mem[_5595]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412] = mem[_5595]
                    mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 444 len ceil32(_5780)] = mem[_5595 + 32 len ceil32(_5780)]
                    if ceil32(_5780) > _5780:
                        mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + _5780 + 444] = 0
                    require ext_code.size(address(create2.new_address))
                    call address(create2.new_address).initialize(address arg1, address arg2, bytes arg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(this.address), 96, mem[ceil32(_1451) + ceil32(_18) + _2848 + ceil32(return_data.size) + 412 len ceil32(_5780) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    reserve[address(arg1)] = address(create2.new_address)
    require ext_code.size(address(create2.new_address))
    staticcall address(create2.new_address).implementation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdde43cba with:
            gas gas_remaining wei
    if not ext_call.success:
        require ext_code.size(sub_d88a0c48Address)
        call sub_d88a0c48Address.0xf633418b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(create2.new_address))
        call address(create2.new_address).upgradeTo(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        if ext_call.return_data[0] < 210:
            require ext_code.size(sub_d88a0c48Address)
            call sub_d88a0c48Address.0xf633418b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).upgradeTo(address arg1) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor359)
    call stor359.0x8d9a3cf0 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
