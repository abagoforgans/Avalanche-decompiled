contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6eca7ae(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
address owner;
uint256 stor151;
address stor201;
address stor202;
uint16 stor203;
uint256 sub_814af25f;
uint16 stor204;
uint256 referralShare;

function paused() {
    return bool(paused)
}

function sub_814af25f(?) {
    return uint256(sub_814af25f)
}

function owner() {
    return owner
}

function referralShare() {
    return uint256(referralShare)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_e217e08a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor201 = address(arg1)
    emit 0x2b6b913e: address(arg1), msg.sender
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

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        uint256(sub_814af25f) = 1500
        uint256(referralShare) = 500
        stor201 = arg1
        stor202 = arg2
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    uint256(sub_814af25f) = 1500
    uint256(referralShare) = 500
    stor201 = arg1
    stor202 = arg2
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor151 = 1
}

function sub_aca6cadf(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not arg3:
        revert with 0, 'PlatformPayment: zero amount'
    if arg3 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PlatformPayment: wrong amount sent'
    require ext_code.size(stor201)
    if 0 == uint256(referralShare):
        staticcall stor201.0xaeb54111 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
            if uint16(stor203) < uint16(stor203):
                revert with 0, 17
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg3 and 10000 > -1 / arg3:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 17
            if arg3 < 0:
                revert with 0, 17
            if arg3 < 10000 * arg3 / 10000:
                revert with 0, 17
            if 0 > !(arg3 - (10000 * arg3 / 10000)):
                revert with 0, 17
            require ext_code.size(stor201)
            staticcall stor201.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            call ext_call.return_data[12 len 20] with:
               value arg3 - (10000 * arg3 / 10000) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'PlatformPayment: wetspace transfer failed'
            require ext_code.size(stor202)
            staticcall stor202.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            call ext_call.return_data[12 len 20] with:
               value 10000 * arg3 / 10000 wei
                 gas gas_remaining wei
        else:
            if uint16(stor203) < ext_call.return_data[30 len 2]:
                revert with 0, 17
            if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                revert with 0, 17
            if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                revert with 0, 17
            if arg3 and 0 > -1 / arg3:
                revert with 0, 17
            if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                revert with 0, 17
            if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                revert with 0, 17
            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                revert with 0, 17
            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                revert with 0, 17
            if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                revert with 0, 17
            require ext_code.size(stor201)
            staticcall stor201.0xcbb666d8 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            call ext_call.return_data[12 len 20] with:
               value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'PlatformPayment: wetspace transfer failed'
            require ext_code.size(stor202)
            staticcall stor202.0x917b9f14 with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            call ext_call.return_data[12 len 20] with:
               value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                 gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'PlatformPayment: creator transfer failed'
        if uint256(referralShare):
            require ext_code.size(stor201)
            staticcall stor201.0xcf0b882f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > 0:
                if not ext_call.return_data[0]:
                    require ext_code.size(stor201)
                    call stor201.0x2a3a1f8d with:
                         gas gas_remaining wei
                        args arg1, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
    else:
        staticcall stor201.0x728a9224 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor201)
        if not ext_call.return_data[12 len 20]:
            staticcall stor201.0xaeb54111 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
                if uint16(stor203) < uint16(stor203):
                    revert with 0, 17
                if arg3 and 0 > -1 / arg3:
                    revert with 0, 17
                if arg3 and 0 > -1 / arg3:
                    revert with 0, 17
                if arg3 and 10000 > -1 / arg3:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0, 17
                if arg3 < 0:
                    revert with 0, 17
                if arg3 < 10000 * arg3 / 10000:
                    revert with 0, 17
                if 0 > !(arg3 - (10000 * arg3 / 10000)):
                    revert with 0, 17
                require ext_code.size(stor201)
                staticcall stor201.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                call ext_call.return_data[12 len 20] with:
                   value arg3 - (10000 * arg3 / 10000) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                require ext_code.size(stor202)
                staticcall stor202.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                call ext_call.return_data[12 len 20] with:
                   value 10000 * arg3 / 10000 wei
                     gas gas_remaining wei
            else:
                if uint16(stor203) < ext_call.return_data[30 len 2]:
                    revert with 0, 17
                if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                    revert with 0, 17
                if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                    revert with 0, 17
                if arg3 and 0 > -1 / arg3:
                    revert with 0, 17
                if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                    revert with 0, 17
                if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                    revert with 0, 17
                if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                    revert with 0, 17
                if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                    revert with 0, 17
                if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                    revert with 0, 17
                require ext_code.size(stor201)
                staticcall stor201.0xcbb666d8 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                call ext_call.return_data[12 len 20] with:
                   value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                require ext_code.size(stor202)
                staticcall stor202.0x917b9f14 with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                call ext_call.return_data[12 len 20] with:
                   value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                     gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'PlatformPayment: creator transfer failed'
            if uint256(referralShare):
                require ext_code.size(stor201)
                staticcall stor201.0xcf0b882f with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > 0:
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor201)
                        call stor201.0x2a3a1f8d with:
                             gas gas_remaining wei
                            args arg1, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
        else:
            staticcall stor201.0xcf0b882f with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                require ext_code.size(stor201)
                staticcall stor201.0xaeb54111 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
                    if uint16(stor203) < uint16(stor203):
                        revert with 0, 17
                    if arg3 and 0 > -1 / arg3:
                        revert with 0, 17
                    if arg3 and 0 > -1 / arg3:
                        revert with 0, 17
                    if arg3 and 10000 > -1 / arg3:
                        revert with 0, 17
                    if arg3 < 0:
                        revert with 0, 17
                    if arg3 < 0:
                        revert with 0, 17
                    if arg3 < 10000 * arg3 / 10000:
                        revert with 0, 17
                    if 0 > !(arg3 - (10000 * arg3 / 10000)):
                        revert with 0, 17
                    require ext_code.size(stor201)
                    staticcall stor201.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call ext_call.return_data[12 len 20] with:
                       value arg3 - (10000 * arg3 / 10000) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'PlatformPayment: wetspace transfer failed'
                    require ext_code.size(stor202)
                    staticcall stor202.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call ext_call.return_data[12 len 20] with:
                       value 10000 * arg3 / 10000 wei
                         gas gas_remaining wei
                else:
                    if uint16(stor203) < ext_call.return_data[30 len 2]:
                        revert with 0, 17
                    if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                        revert with 0, 17
                    if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                        revert with 0, 17
                    if arg3 and 0 > -1 / arg3:
                        revert with 0, 17
                    if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                        revert with 0, 17
                    if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                        revert with 0, 17
                    if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                        revert with 0, 17
                    if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                        revert with 0, 17
                    if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                        revert with 0, 17
                    require ext_code.size(stor201)
                    staticcall stor201.0xcbb666d8 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call ext_call.return_data[12 len 20] with:
                       value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'PlatformPayment: wetspace transfer failed'
                    require ext_code.size(stor202)
                    staticcall stor202.0x917b9f14 with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    call ext_call.return_data[12 len 20] with:
                       value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'PlatformPayment: creator transfer failed'
                if uint256(referralShare):
                    require ext_code.size(stor201)
                    staticcall stor201.0xcf0b882f with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 > 0:
                        if not ext_call.return_data[0]:
                            require ext_code.size(stor201)
                            call stor201.0x2a3a1f8d with:
                                 gas gas_remaining wei
                                args arg1, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
            else:
                if ext_call.return_data[0] <= 0:
                    if not address(ext_call.return_data[0]):
                        require ext_code.size(stor201)
                        staticcall stor201.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
                            if uint16(stor203) < uint16(stor203):
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 10000 > -1 / arg3:
                                revert with 0, 17
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 < 10000 * arg3 / 10000:
                                revert with 0, 17
                            if 0 > !(arg3 - (10000 * arg3 / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (10000 * arg3 / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value 10000 * arg3 / 10000 wei
                                 gas gas_remaining wei
                        else:
                            if uint16(stor203) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'PlatformPayment: creator transfer failed'
                        if uint256(referralShare):
                            require ext_code.size(stor201)
                            staticcall stor201.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor201)
                                    call stor201.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
                    else:
                        if uint16(stor203) < uint16(stor204):
                            revert with 0, 17
                        if 10000 < uint16(stor204):
                            revert with 0, 17
                        require ext_code.size(stor201)
                        staticcall stor201.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] <= uint256(sub_814af25f):
                            if uint16(uint16(stor203) - uint16(stor204)) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if uint16(-uint16(stor204) + 10000) < uint16(uint16(uint16(stor203) - uint16(stor204)) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg3 and uint16(uint16(uint16(stor203) - uint16(stor204)) - ext_call.return_data[30 len 2]) > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(stor204) > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(stor204) / 10000:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(stor204) / 10000) < arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000:
                                revert with 0, 17
                            if arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            if arg3 * uint16(stor204) / 10000:
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 * uint16(stor204) / 10000 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: referral transfer failed'
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000 wei
                                 gas gas_remaining wei
                        else:
                            if uint16(uint16(stor203) - uint16(stor204)) < uint16(uint16(stor203) - uint16(stor204)):
                                revert with 0, 17
                            if uint16(-uint16(stor204) + 10000) < 0:
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(stor204) > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(-uint16(stor204) + 10000) > -1 / arg3:
                                revert with 0, 17
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 < arg3 * uint16(stor204) / 10000:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(stor204) / 10000) < arg3 * uint16(-uint16(stor204) + 10000) / 10000:
                                revert with 0, 17
                            if 0 > !(arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(-uint16(stor204) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(-uint16(stor204) + 10000) / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            if arg3 * uint16(stor204) / 10000:
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 * uint16(stor204) / 10000 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: referral transfer failed'
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 * uint16(-uint16(stor204) + 10000) / 10000 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'PlatformPayment: creator transfer failed'
                        if uint256(referralShare):
                            require ext_code.size(stor201)
                            staticcall stor201.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor201)
                                    call stor201.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbddf9e76: address(arg2), arg3, arg3 * uint16(stor204) / 10000, msg.sender, arg1, arg4
                else:
                    require ext_code.size(stor201)
                    staticcall stor201.0xaefa058d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > !ext_call.return_data[0]:
                        revert with 0, 17
                    if 2 * ext_call.return_data[0] < block.timestamp:
                        require ext_code.size(stor201)
                        staticcall stor201.0xaeb54111 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
                            if uint16(stor203) < uint16(stor203):
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 10000 > -1 / arg3:
                                revert with 0, 17
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 < 0:
                                revert with 0, 17
                            if arg3 < 10000 * arg3 / 10000:
                                revert with 0, 17
                            if 0 > !(arg3 - (10000 * arg3 / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (10000 * arg3 / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value 10000 * arg3 / 10000 wei
                                 gas gas_remaining wei
                        else:
                            if uint16(stor203) < ext_call.return_data[30 len 2]:
                                revert with 0, 17
                            if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                                revert with 0, 17
                            if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                                revert with 0, 17
                            if arg3 and 0 > -1 / arg3:
                                revert with 0, 17
                            if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                                revert with 0, 17
                            if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                revert with 0, 17
                            if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                revert with 0, 17
                            if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xcbb666d8 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: wetspace transfer failed'
                            require ext_code.size(stor202)
                            staticcall stor202.0x917b9f14 with:
                                    gas gas_remaining wei
                                   args address(arg2)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            call ext_call.return_data[12 len 20] with:
                               value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'PlatformPayment: creator transfer failed'
                        if uint256(referralShare):
                            require ext_code.size(stor201)
                            staticcall stor201.0xcf0b882f with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg1 > 0:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(stor201)
                                    call stor201.0x2a3a1f8d with:
                                         gas gas_remaining wei
                                        args arg1, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
                    else:
                        if not address(ext_call.return_data[0]):
                            require ext_code.size(stor201)
                            staticcall stor201.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] > uint256(sub_814af25f):
                                if uint16(stor203) < uint16(stor203):
                                    revert with 0, 17
                                if arg3 and 0 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and 0 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and 10000 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < 0:
                                    revert with 0, 17
                                if arg3 < 0:
                                    revert with 0, 17
                                if arg3 < 10000 * arg3 / 10000:
                                    revert with 0, 17
                                if 0 > !(arg3 - (10000 * arg3 / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor201)
                                staticcall stor201.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 - (10000 * arg3 / 10000) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                                require ext_code.size(stor202)
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value 10000 * arg3 / 10000 wei
                                     gas gas_remaining wei
                            else:
                                if uint16(stor203) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if 10000 < uint16(uint16(stor203) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if arg3 and uint16(uint16(stor203) - ext_call.return_data[30 len 2]) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and 0 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < 0:
                                    revert with 0, 17
                                if arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000:
                                    revert with 0, 17
                                if arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(stor203) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor201)
                                staticcall stor201.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 - (arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                                require ext_code.size(stor202)
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 * uint16(-uint16(uint16(stor203) - uint16(ext_call.return_data[0])) + 10000) / 10000 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: creator transfer failed'
                            if uint256(referralShare):
                                require ext_code.size(stor201)
                                staticcall stor201.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor201)
                                        call stor201.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args arg1, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbddf9e76: address(arg2), arg3, 0, msg.sender, arg1, arg4
                        else:
                            if uint16(stor203) < uint16(stor204):
                                revert with 0, 17
                            if 10000 < uint16(stor204):
                                revert with 0, 17
                            require ext_code.size(stor201)
                            staticcall stor201.0xaeb54111 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[30 len 2] <= uint256(sub_814af25f):
                                if uint16(uint16(stor203) - uint16(stor204)) < ext_call.return_data[30 len 2]:
                                    revert with 0, 17
                                if uint16(-uint16(stor204) + 10000) < uint16(uint16(uint16(stor203) - uint16(stor204)) - ext_call.return_data[30 len 2]):
                                    revert with 0, 17
                                if arg3 and uint16(uint16(uint16(stor203) - uint16(stor204)) - ext_call.return_data[30 len 2]) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and uint16(stor204) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000:
                                    revert with 0, 17
                                if arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) < arg3 * uint16(stor204) / 10000:
                                    revert with 0, 17
                                if arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(stor204) / 10000) < arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000:
                                    revert with 0, 17
                                if arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000 > !(arg3 - (arg3 * uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0])) / 10000) - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor201)
                                staticcall stor201.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                                require ext_code.size(stor202)
                                if arg3 * uint16(stor204) / 10000:
                                    staticcall stor202.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    call ext_call.return_data[12 len 20] with:
                                       value arg3 * uint16(stor204) / 10000 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'PlatformPayment: referral transfer failed'
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 * uint16(uint16(-uint16(stor204) + 10000) - uint16(uint16(uint16(stor203) - uint16(stor204)) - uint16(ext_call.return_data[0]))) / 10000 wei
                                     gas gas_remaining wei
                            else:
                                if uint16(uint16(stor203) - uint16(stor204)) < uint16(uint16(stor203) - uint16(stor204)):
                                    revert with 0, 17
                                if uint16(-uint16(stor204) + 10000) < 0:
                                    revert with 0, 17
                                if arg3 and 0 > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and uint16(stor204) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and uint16(-uint16(stor204) + 10000) > -1 / arg3:
                                    revert with 0, 17
                                if arg3 < 0:
                                    revert with 0, 17
                                if arg3 < arg3 * uint16(stor204) / 10000:
                                    revert with 0, 17
                                if arg3 - (arg3 * uint16(stor204) / 10000) < arg3 * uint16(-uint16(stor204) + 10000) / 10000:
                                    revert with 0, 17
                                if 0 > !(arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(-uint16(stor204) + 10000) / 10000)):
                                    revert with 0, 17
                                require ext_code.size(stor201)
                                staticcall stor201.0xcbb666d8 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 - (arg3 * uint16(stor204) / 10000) - (arg3 * uint16(-uint16(stor204) + 10000) / 10000) wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'PlatformPayment: wetspace transfer failed'
                                require ext_code.size(stor202)
                                if arg3 * uint16(stor204) / 10000:
                                    staticcall stor202.0x917b9f14 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    call ext_call.return_data[12 len 20] with:
                                       value arg3 * uint16(stor204) / 10000 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'PlatformPayment: referral transfer failed'
                                staticcall stor202.0x917b9f14 with:
                                        gas gas_remaining wei
                                       args address(arg2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                call ext_call.return_data[12 len 20] with:
                                   value arg3 * uint16(-uint16(stor204) + 10000) / 10000 wei
                                     gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'PlatformPayment: creator transfer failed'
                            if uint256(referralShare):
                                require ext_code.size(stor201)
                                staticcall stor201.0xcf0b882f with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg1 > 0:
                                    if not ext_call.return_data[0]:
                                        require ext_code.size(stor201)
                                        call stor201.0x2a3a1f8d with:
                                             gas gas_remaining wei
                                            args arg1, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            emit 0xbddf9e76: address(arg2), arg3, arg3 * uint16(stor204) / 10000, msg.sender, arg1, arg4
    stor151 = 1
}



}
