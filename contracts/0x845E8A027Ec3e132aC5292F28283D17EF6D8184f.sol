contract main {




// =====================  Runtime code  =====================


#
#  - sub_5c73cc3f(?)
#  - sub_d08f8f06(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_ffe6e7d7Address;
address sub_a64fb0a6Address;
address sub_ddaa1196Address;
uint32 stor154;
address claimAddress;
uint256 stor154;
address sub_3ec4d4d6Address;
address sub_b014bb9fAddress;
address sub_5bfb7508Address;

function sub_3ec4d4d6(?) {
    return sub_3ec4d4d6Address
}

function claim() {
    return address(claimAddress)
}

function sub_5bfb7508(?) {
    return sub_5bfb7508Address
}

function owner() {
    return owner
}

function sub_a64fb0a6(?) {
    return sub_a64fb0a6Address
}

function sub_b014bb9f(?) {
    return sub_b014bb9fAddress
}

function sub_ddaa1196(?) {
    return sub_ddaa1196Address
}

function sub_ffe6e7d7(?) {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c673e248(?) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    if not arg6:
        revert with 0, 'S:6'
    if not arg7:
        revert with 0, 'S:7'
    sub_ffe6e7d7Address = arg1
    sub_a64fb0a6Address = arg2
    sub_ddaa1196Address = arg3
    address(claimAddress) = arg4
    sub_3ec4d4d6Address = arg5
    sub_b014bb9fAddress = arg6
    sub_5bfb7508Address = arg7
}

function sub_3b40950b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0xba4611d9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = arg1
    while idx <= ext_call.return_data[0]:
        mem[100] = idx
        require ext_code.size(sub_b014bb9fAddress)
        staticcall sub_b014bb9fAddress.0xec269cfc with:
                gas gas_remaining wei
               args idx
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == 9:
            idx = idx + 1
            continue 
        if ext_call.return_data[0] == 11:
            idx = idx + 1
            continue 
        if idx <= ext_call.return_data[0]:
            return idx
        return ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_d92395df(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SFSTI: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.0xf511bdfe with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 1
    stor101 = 1
}

function sub_32527194(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 2:
        revert with 0, 'SFPFVTV: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.0xf511bdfe with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 3
    require ext_code.size(sub_b014bb9fAddress)
    call sub_b014bb9fAddress.0x3d2f5bda with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_41cfe515(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 3:
        revert with 0, 'SFVTC: 1'
    require ext_code.size(sub_b014bb9fAddress)
    staticcall sub_b014bb9fAddress.0xe31edbb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SFVTC: 2'
    require ext_code.size(sub_b014bb9fAddress)
    staticcall sub_b014bb9fAddress.0x3b3e7413 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    if not ext_call.return_data[0]:
        call sub_3ec4d4d6Address.0xf511bdfe with:
             gas gas_remaining wei
            args arg1, 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
    else:
        call sub_3ec4d4d6Address.0xf511bdfe with:
             gas gas_remaining wei
            args arg1, 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 6
        require ext_code.size(sub_b014bb9fAddress)
        call sub_b014bb9fAddress.0x157a3c0b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_22fcd678(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 10:
        revert with 0, 'STP: 1'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.0xf511bdfe with:
         gas gas_remaining wei
        args arg1, 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xbaa7402e: arg1, ext_call.return_data[0], 11
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x5707add3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ddaa1196Address)
    staticcall sub_ddaa1196Address.0xf83d2e00 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ddaa1196Address)
    call sub_ddaa1196Address.0xcdc30eec with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 3, address(ext_call.return_data[0])
    require ext_code.size(sub_ddaa1196Address)
    staticcall sub_ddaa1196Address.0xc956655c with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0xcef63600 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3ec4d4d6Address)
    call sub_3ec4d4d6Address.0xacce75c4 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function sub_7ed9c4da(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 6:
        revert with 0, 'SFCTV: 1'
    require ext_code.size(sub_b014bb9fAddress)
    staticcall sub_b014bb9fAddress.0x24ae44d6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'SFCTV: 2'
    require ext_code.size(sub_b014bb9fAddress)
    staticcall sub_b014bb9fAddress.0xff5c102a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3ec4d4d6Address)
        call sub_3ec4d4d6Address.0xf511bdfe with:
             gas gas_remaining wei
            args arg1, 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xbaa7402e: arg1, ext_call.return_data[0], 5
    else:
        require ext_code.size(sub_b014bb9fAddress)
        staticcall sub_b014bb9fAddress.0x28597c9d with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 6:
            if ext_call.return_data[0] != 5:
                revert with 0, 'STV: 1'
        require ext_code.size(sub_3ec4d4d6Address)
        if ext_call.return_data[0] == 1:
            call sub_3ec4d4d6Address.0xf511bdfe with:
                 gas gas_remaining wei
                args arg1, 8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 8
        else:
            call sub_3ec4d4d6Address.0xf511bdfe with:
                 gas gas_remaining wei
                args arg1, 9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 9
        if ext_call.return_data[0] != 1:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x5707add3 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x4bd54e40 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            staticcall sub_ddaa1196Address.0xf83d2e00 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ddaa1196Address)
            call sub_ddaa1196Address.0xcdc30eec with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x54a3a739: ext_call.return_data[0], ext_call.return_data[0], 0, address(ext_call.return_data[0])
    stor101 = 1
}

function sub_f2172daa(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if stor101 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor101 = 2
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 8:
        revert with 0, 'STPR: 1'
    if arg2 <= 0:
        revert with 0, 'STPR: 2'
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0xa24a429a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == ext_call.return_data[12 len 20]:
        if arg2 != msg.value:
            revert with 0, 'STPR: 3'
        require ext_code.size(sub_3ec4d4d6Address)
        call sub_3ec4d4d6Address.0x68fee94b with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0xcef63600 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_3ec4d4d6Address)
        staticcall sub_3ec4d4d6Address.0xaf3785f0 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'STPR: 5'
        if ext_call.return_data[0] == ext_call.return_data[0]:
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address.0xf511bdfe with:
                 gas gas_remaining wei
                args arg1, 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xbaa7402e: arg1, ext_call.return_data[0], 10
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                require ext_code.size(address(claimAddress))
                call address(claimAddress).0x47e7ef24 with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
            else:
                if ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(claimAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[218 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor154), uint32(stor154), ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor154)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor154), uint32(stor154), ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor154):
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(claimAddress))
                call address(claimAddress).0x47e7ef24 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_5bfb7508Address)
            call sub_5bfb7508Address.settlePaymentForClaim(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ext_call.return_data[0], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'STPR: 4'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address.0x68fee94b with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0xcef63600 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0xaf3785f0 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'STPR: 5'
            if ext_call.return_data[0] == ext_call.return_data[0]:
                require ext_code.size(sub_3ec4d4d6Address)
                staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3ec4d4d6Address)
                call sub_3ec4d4d6Address.0xf511bdfe with:
                     gas gas_remaining wei
                    args arg1, 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xbaa7402e: arg1, ext_call.return_data[0], 10
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    require ext_code.size(address(claimAddress))
                    call address(claimAddress).0x47e7ef24 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                else:
                    if ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(claimAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[414 len 2],
                                        0,
                                        mem[420 len 4]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[456 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor154), uint32(stor154), ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor154)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[520 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                    else:
                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[488]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(address(claimAddress))
                    call address(claimAddress).0x47e7ef24 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_5bfb7508Address)
                call sub_5bfb7508Address.settlePaymentForClaim(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0], arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_3ec4d4d6Address)
            call sub_3ec4d4d6Address.0x68fee94b with:
                 gas gas_remaining wei
                args arg1, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0xcef63600 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.0xaf3785f0 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'STPR: 5'
            if ext_call.return_data[0] == ext_call.return_data[0]:
                require ext_code.size(sub_3ec4d4d6Address)
                staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3ec4d4d6Address)
                call sub_3ec4d4d6Address.0xf511bdfe with:
                     gas gas_remaining wei
                    args arg1, 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xbaa7402e: arg1, ext_call.return_data[0], 10
                if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
                    require ext_code.size(address(claimAddress))
                    call address(claimAddress).0x47e7ef24 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5bfb7508Address)
                    call sub_5bfb7508Address.settlePaymentForClaim(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0], arg1
                else:
                    if ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(claimAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 415 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor154), uint32(stor154), ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 549 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor154)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 521 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                        require ext_code.size(address(claimAddress))
                        call address(claimAddress).0x47e7ef24 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5bfb7508Address)
                        call sub_5bfb7508Address.settlePaymentForClaim(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0], arg1
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(address(claimAddress))
                        call address(claimAddress).0x47e7ef24 with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5bfb7508Address)
                        call sub_5bfb7508Address.settlePaymentForClaim(address rg1, uint256 rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0], arg1, mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}



}
