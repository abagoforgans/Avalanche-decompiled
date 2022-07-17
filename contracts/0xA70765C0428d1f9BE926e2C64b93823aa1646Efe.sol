contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint32 stor1;
uint64 stor1;
uint64 stor1; offset 168
address stor1;
address stor2;
uint8 stor3; offset 240
uint64 stor3;
uint64 stor3; offset 200
address stor3;

function owner() {
    return owner
}

function sub_b05fb26f(?) {
    return bool(uint8(stor1.field_160))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x4c7ababd with:
         gas gas_remaining wei
        args 0, uint32(stor1.field_0), address(arg1), owner, address(stor3.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEth() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    if uint8(stor3.field_240):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfering is locked. Wait for the previous transaction to complete'
    uint8(stor3.field_240) = 1
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor3.field_240) = 0
}

function sub_4c02bf0b(?) {
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor2.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(uint8(stor1.field_160)), 
           stor1.field_0 % 1099511627776,
           address(this.address),
           owner,
           stor2,
           address(stor3.field_0),
           stor3.field_0 % 1099511627776,
           stor3.field_0 % 1099511627776,
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function withdraw() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    if uint8(stor3.field_240):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfering is locked. Wait for the previous transaction to complete'
    uint8(stor3.field_240) = 1
    if block.timestamp % 1099511627776 < 0 or stor3.field_200 % 1099511627776:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wait until unlockTime to withdraw'
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdrew()
    uint8(stor3.field_240) = 0
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    if uint8(stor3.field_240):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfering is locked. Wait for the previous transaction to complete'
    uint8(stor3.field_240) = 1
    if stor2 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Use 'withdraw' to withdraw the primary locked token'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    uint8(stor3.field_240) = 0
}

function sub_d88e7f4e(?) {
    require calldata.size - 4 >= 64
    require arg2 == arg2 % 1099511627776
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can execute this function'
    if uint8(stor3.field_240):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfering is locked. Wait for the previous transaction to complete'
    uint8(stor3.field_240) = 1
    if arg2 % 1099511627776:
        if arg2 % 1099511627776 < stor3.field_200 % 1099511627776:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'New unlock time must be a future time beyond the previous value'
        if arg2 % 1099511627776 < block.timestamp % 1099511627776:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'New unlock time must be a future time beyond the previous value'
        stor3.field_200 % 1099511627776 = arg2 % 1099511627776
        emit 0xd316ae96: (arg2 % 1099511627776)
    if arg1:
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        emit Deposited(0);
    uint8(stor3.field_240) = 0
}

function sub_af74e629(?) payable {
    mem[64] = 96
    require not msg.value
    if uint8(stor1.field_160):
        delegate 0x77110f67c0ef3c98c43570bade06046ef6549876.0x2590dc9d with:
             gas gas_remaining wei
            args stor2
        mem[96 len 192] = delegate.return_data[0 len 192]
        if not delegate.return_code:
            if return_data.size <= 3:
                if not return_data.size:
                    return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                else:
                    return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
            else:
                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                    if not return_data.size:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    else:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                else:
                    if return_data.size >= 68:
                        mem[96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                        if delegate.return_data[0] <= test266151307() and delegate.return_data[0] + 36 <= return_data.size:
                            if mem[delegate.return_data[0] + 96] <= test266151307():
                                if delegate.return_data[0] + mem[delegate.return_data[0] + 96] + 32 <= return_data.size - 4:
                                    if floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 96] + 31) + 97 < 96 or floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 96] + 31) + 97 > test266151307():
                                        revert with 0, 65
                                    else:
                                        if delegate.return_data[0] + 96:
                                            return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                                        else:
                                            if not return_data.size:
                                                return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                                            else:
                                                return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                                else:
                                    if not return_data.size:
                                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                                    else:
                                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                            else:
                                if not return_data.size:
                                    return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                                else:
                                    return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                        else:
                            if not return_data.size:
                                return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                            else:
                                return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    else:
                        if not return_data.size:
                            return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                        else:
                            return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
        else:
            require return_data.size >= 192
            require delegate.return_data[0] == delegate.return_data[12 len 20]
            require delegate.return_data[32] == delegate.return_data[44 len 20]
            return 1, 
                   stor1.field_0 % 1099511627776,
                   address(delegate.return_data[0]),
                   address(delegate.return_data[32]),
                   delegate.return_data[64],
                   delegate.return_data[96],
                   delegate.return_data[128],
                   delegate.return_data[160]
    else:
        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xa0ef91df(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Only the owner can execute this function'
                if uint8(stor3.field_240):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Transfering is locked. Wait for the previous transaction to complete'
                uint8(stor3.field_240) = 1
                if block.timestamp % 1099511627776 < 0 or stor3.field_200 % 1099511627776:
                    revert with 0, 'Wait until unlockTime to withdraw'
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Withdrew()
            else:
                if unknown_0x4c02bf0b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    staticcall stor2.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return bool(uint8(stor1.field_160)), 
                           stor1.field_0 % 1099511627776,
                           address(this.address),
                           owner,
                           stor2,
                           address(stor3.field_0),
                           stor3.field_0 % 1099511627776,
                           stor3.field_0 % 1099511627776,
                           ext_call.return_data[0],
                           ext_call.return_data[0]
                if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Only the owner can execute this function'
                if uint8(stor3.field_240):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Transfering is locked. Wait for the previous transaction to complete'
                uint8(stor3.field_240) = 1
                if stor2 == address(arg1):
                    revert with 0, 'Use 'withdraw' to withdraw the primary locked token'
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args owner, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            uint8(stor3.field_240) = 0
        else:
            if unknown_0xa0ef91df(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Only the owner can execute this function'
                if uint8(stor3.field_240):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Transfering is locked. Wait for the previous transaction to complete'
                uint8(stor3.field_240) = 1
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor3.field_240) = 0
            else:
                if unknown_0xaf74e629(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not uint8(stor1.field_160):
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    delegate 0x77110f67c0ef3c98c43570bade06046ef6549876.0x2590dc9d with:
                         gas gas_remaining wei
                        args stor2
                    mem[128 len 192] = delegate.return_data[0 len 192]
                    if delegate.return_code:
                        require return_data.size >= 192
                        require delegate.return_data[0] == delegate.return_data[12 len 20]
                        require delegate.return_data[32] == delegate.return_data[44 len 20]
                        return 1, 
                               stor1.field_0 % 1099511627776,
                               address(delegate.return_data[0]),
                               address(delegate.return_data[32]),
                               delegate.return_data[64],
                               delegate.return_data[96],
                               delegate.return_data[128],
                               delegate.return_data[160]
                    if return_data.size <= 3:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    if return_data.size < 68:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    mem[128 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if delegate.return_data[0] > test266151307() or delegate.return_data[0] + 36 > return_data.size:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    if mem[delegate.return_data[0] + 128] > test266151307():
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    if delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 32 > return_data.size - 4:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    if floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129 < 128 or floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129 > test266151307():
                        revert with 0, 65
                    mem[64] = floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129
                    if delegate.return_data[0] + 128:
                        _117 = floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129
                        mem[floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129] = 0
                        mem[mem[64] + 32] = stor1.field_168 % 1099511627776
                        mem[mem[64] + 64] = 0
                        mem[_117 + 96] = 0
                        mem[_117 + 128] = 0
                        mem[_117 + 160] = 0
                        mem[_117 + 192] = 0
                        mem[_117 + 224] = 0
                        return memory
                          from mem[64]
                           len _117 + -mem[64] + 256
                    if return_data.size:
                        return 0, stor1.field_0 % 1099511627776, 0, 0, 0, 0, 0, 0
                    _131 = floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129
                    mem[floor32(delegate.return_data[0] + mem[delegate.return_data[0] + 128] + 31) + 129] = 0
                    mem[mem[64] + 32] = stor1.field_168 % 1099511627776
                    mem[mem[64] + 64] = 0
                    mem[_131 + 96] = 0
                    mem[_131 + 128] = 0
                    mem[_131 + 160] = 0
                    mem[_131 + 192] = 0
                    mem[_131 + 224] = 0
                    return memory
                      from mem[64]
                       len _131 + -mem[64] + 256
                if unknown_0xb05fb26f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor1.field_160))
                if uint32(call.func_hash) >> 224 != unknown_0xd88e7f4e(?????):
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Only the owner can execute this function'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                    require ext_code.size(address(stor1.field_0))
                    call address(stor1.field_0).0x4c7ababd with:
                         gas gas_remaining wei
                        args stor1.field_0 % 1099511627776, address(arg1), owner, address(stor3.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == arg2 % 1099511627776
                    if owner != msg.sender:
                        revert with 0, 'Only the owner can execute this function'
                    if uint8(stor3.field_240):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Transfering is locked. Wait for the previous transaction to complete'
                    uint8(stor3.field_240) = 1
                    if arg2 % 1099511627776:
                        if arg2 % 1099511627776 < stor3.field_200 % 1099511627776:
                            revert with 0, 'New unlock time must be a future time beyond the previous value'
                        if arg2 % 1099511627776 < block.timestamp % 1099511627776:
                            revert with 0, 'New unlock time must be a future time beyond the previous value'
                        stor3.field_200 % 1099511627776 = arg2 % 1099511627776
                        emit 0xd316ae96: (arg2 % 1099511627776)
                    if arg1:
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call stor2.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        emit Deposited(0);
                    uint8(stor3.field_240) = 0
}



}
