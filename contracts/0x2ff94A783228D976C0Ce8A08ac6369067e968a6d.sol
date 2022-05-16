contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint8 stor101;
mapping of uint8 stor102;
uint256 sub_65260f22;
mapping of uint8 stor104;

function sub_1b03da67(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor102[address(arg1)])
}

function sub_40c7981f(?) {
    require calldata.size - 4 >= 32
    return bool(stor104[arg1])
}

function sub_65260f22(?) {
    return sub_65260f22
}

function owner() {
    return owner
}

function sub_dae19cdf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_32ed06f8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor102[address(arg1)] = 0
    else:
        stor102[address(arg1)] = 1
    emit 0xdd13175d: address(arg1), bool(arg2)
}

function sub_db7629a3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        stor101[address(arg1)] = 0
    else:
        stor101[address(arg1)] = 1
    emit 0x5aee63e4: address(arg1), bool(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: caller is not the arbitrager'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
}

function sub_25314958(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not stor101[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: caller is not the arbitrager'
    if arg2:
        if not stor101[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: caller is not the arbitrager'
        if not address(arg1):
            revert with 0, 'HOGWalletAVAX: token is 0'
        require ext_code.size(address(arg1))
        call address(arg1).0x17633fdf with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xac062def: address(arg3), arg2, sub_65260f22, address(arg1)
        if 1 > !sub_65260f22:
            revert with 0, 17
        sub_65260f22++
}

function sub_f38679c2(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not stor102[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: caller is not the tracer'
    if not stor102[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: caller is not the tracer'
    if stor104[arg4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HOGWalletAVAX: nonce already synced'
    stor104[arg4] = 1
    if not address(arg1):
        revert with 0, 'HOGWalletAVAX: token is 0'
    require ext_code.size(address(arg1))
    call address(arg1).superMint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unlock(address(arg3), arg2, arg4, address(arg1));
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_65260f22 = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            sub_65260f22 = 0
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                sub_65260f22 = 0
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    sub_65260f22 = 0
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        sub_65260f22 = 0
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sub_65260f22 = 0
                        uint8(stor0.field_8) = 0
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdb7629a3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0xaeb5cd5e(?????):
                    require unknown_0xdae19cdf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor101[address(arg1)])
                require not msg.value
                require calldata.size - 4 >= 32
                if not stor101[msg.sender]:
                    revert with 0, 'HOGWalletAVAX: caller is not the arbitrager'
                call msg.sender with:
                   value arg1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
            else:
                if unknown_0xdb7629a3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not arg2:
                        stor101[address(arg1)] = 0
                    else:
                        stor101[address(arg1)] = 1
                    emit 0x5aee63e4: address(arg1), bool(arg2)
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                    else:
                        if unknown_0xf38679c2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require arg1 == address(arg1)
                            require arg3 == address(arg3)
                            if not stor102[msg.sender]:
                                revert with 0, 'HOGWalletAVAX: caller is not the tracer'
                            if not stor102[msg.sender]:
                                revert with 0, 'HOGWalletAVAX: caller is not the tracer'
                            if stor104[arg4]:
                                revert with 0, 'HOGWalletAVAX: nonce already synced'
                            stor104[arg4] = 1
                            if not address(arg1):
                                revert with 0, 'HOGWalletAVAX: token is 0'
                            require ext_code.size(address(arg1))
                            call address(arg1).superMint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg3), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Unlock(address(arg3), arg2, arg4, address(arg1));
                        else:
                            require unknown_0xf3fef3a3(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1):
                                call msg.sender with:
                                   value arg2 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
                            else:
                                mem[228 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, mem[228 len 28]
                                call address(arg1).mem[228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[232 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                                    require not mem[96]
                                    emit Withdraw(arg2, address(arg1), msg.sender);
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[260] == bool(mem[260])
                                    if not mem[260]:
                                        revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                            emit Withdraw(arg2, address(arg1), msg.sender);
        else:
            if unknown_0x40c7981f(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1b03da67(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor102[address(arg1)])
                if uint32(call.func_hash) >> 224 != unknown_0x25314958(?????):
                    require unknown_0x32ed06f8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not arg2:
                        stor102[address(arg1)] = 0
                    else:
                        stor102[address(arg1)] = 1
                    emit 0xdd13175d: address(arg1), bool(arg2)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg3 == address(arg3)
                    if not stor101[msg.sender]:
                        revert with 0, 'HOGWalletAVAX: caller is not the arbitrager'
                    if arg2:
                        if not stor101[msg.sender]:
                            revert with 0, 'HOGWalletAVAX: caller is not the arbitrager'
                        if not address(arg1):
                            revert with 0, 'HOGWalletAVAX: token is 0'
                        require ext_code.size(address(arg1))
                        call address(arg1).0x17633fdf with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xac062def: address(arg3), arg2, sub_65260f22, address(arg1)
                        if 1 > !sub_65260f22:
                            revert with 0, 17
                        sub_65260f22++
            else:
                if unknown_0x40c7981f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return bool(stor104[arg1])
                if unknown_0x65260f22(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_65260f22
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require unknown_0x8129fc1c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        sub_65260f22 = 0
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            sub_65260f22 = 0
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                sub_65260f22 = 0
                            else:
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                    sub_65260f22 = 0
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(owner, msg.sender);
                                        sub_65260f22 = 0
                                    else:
                                        uint16(stor0.field_0) = 257
                                        owner = msg.sender
                                        emit OwnershipTransferred(owner, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        sub_65260f22 = 0
                                        uint8(stor0.field_8) = 0
}



}
