contract main {




// =====================  Runtime code  =====================


#
#  - sub_417b779c(?)
#  - sub_a257020b(?)
#  - sub_db27df67(?)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
mapping of uint8 stor201;
mapping of uint8 stor202;
mapping of uint256 stor203;
mapping of uint256 sub_e34a423c;
mapping of struct deposits;
uint256 lastWithdrawID;
uint256 lastRefundedID;
address relayerAddress;
address vaultConfigAddress;

function lastRefundedID() {
    return lastRefundedID
}

function deposits(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1].field_0, deposits[arg1].field_256
}

function paused() {
    return bool(stor151)
}

function hasBeenRefunded(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor202[arg1])
}

function vaultConfig() {
    return vaultConfigAddress
}

function hasBeenWithdrawn(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor201[arg1])
}

function relayer() {
    return relayerAddress
}

function owner() {
    return owner
}

function lastWithdrawID() {
    return lastWithdrawID
}

function sub_e34a423c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_e34a423c[arg1][arg2]
}

function sub_204c4c3e(?) {
    require calldata.size - 4 >= 32
    if stor202[arg1]:
        return 2
    if not stor201[arg1]:
        return 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    relayerAddress = arg1
}

function sub_5faafcaa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultConfigAddress = address(arg1)
}

function pause() {
    if stor151:
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not stor151:
        revert with 0, 'Pausable: not paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
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

function sub_ad9c080d(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        if relayerAddress != msg.sender:
            revert with 0, 'ERR: PERMISSIONS'
    if stor202[cd[132]]:
        revert with 0, 'ERR: ALREADY REFUNDED'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x2cf084cd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    s = cd[164] + 36
    t = ceil32(return_data.size) + 196
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x10135723 with:
            gas gas_remaining wei
           args address(cd[4]), Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 164).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[68]:
        revert with 0, 'ERR: VAULT BAL'
    if deposits[cd[132]].field_0 != address(cd[4]):
        revert with 0, 'ERR: INVALID DEPOSIT'
    if cd[100] != deposits[cd[132]].field_256:
        revert with 0, 'ERR: INVALID DEPOSIT'
    stor202[cd[132]] = 1
    lastRefundedID = cd[132]
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x2cf084cd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    s = cd[164] + 36
    t = (4 * ceil32(return_data.size)) + 228
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa94d44d1 with:
         gas gas_remaining wei
        args Array(len=('cd', 164).length, data=mem[(4 * ceil32(return_data.size)) + 228 len 32 * ('cd', 164).length]), address(cd[4]), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbeabacc8 with:
         gas gas_remaining wei
        args address(cd[4]), address(cd[36]), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    deposits[cd[132]].field_0 = 0
    deposits[cd[132]].field_256 = 0
    emit 0x32a706f8: cd[68], cd[100], cd[132], address(cd[4]), address(cd[36])
    stor101 = 1
}

function sub_794e6074(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ERR: INVALID ADDRESS'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ERR: BALANCE'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x2cf084cd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xc612f6ed: ext_call.return_data[0], address(arg1)
}

function sub_834c8b94(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        if relayerAddress != msg.sender:
            revert with 0, 'ERR: PERMISSIONS'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not arg2:
        revert with 0, 'ERR: AMOUNT'
    if stor202[arg4]:
        revert with 0, 'REFUNDED'
    require ext_code.size(address(arg3))
    call address(arg3).underlyingToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor202[arg4] = 1
    lastRefundedID = arg4
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ERR: TOKEN NOT WHITELISTED'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x93a33b7c with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0xf00fc9ff with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: TOKEN NOT WHITELISTED'
    require ext_code.size(vaultConfigAddress)
    if ext_call.return_data[12 len 20] == address(arg3):
        staticcall vaultConfigAddress.0xf00fc9ff with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall vaultConfigAddress.0x93a33b7c with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(arg3):
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x93a33b7c with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0x494dfe09: arg2, arg4, address(ext_call.return_data[0]), address(arg3), address(arg1)
    stor101 = 1
}

function sub_027d2365(?) {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    require calldata.size - 228 >= 96
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not arg2:
        revert with 0, 'ERR: AMOUNT'
    if stor151:
        revert with 0, 'ERR: PAUSED'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x90d50447 with:
            gas gas_remaining wei
           args arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'ERR: PAUSED NETWORK'
    if not address(arg3):
        revert with 0, 'ERR: INVALID ADDRESS'
    require ext_code.size(address(arg1))
    call address(arg1).underlyingToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(vaultConfigAddress)
    if arg7 != chainid:
        staticcall vaultConfigAddress.0xf7c28e2f with:
                gas gas_remaining wei
               args arg7, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: TOKEN NOT WHITELISTED DESTINATION'
    staticcall vaultConfigAddress.0xf00fc9ff with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(arg1):
        if block.number < stor203[msg.sender][address(ext_call.return_data[0])]:
            revert with 0, 'ERR: LIQUIDITY STILL LOCKED'
    else:
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x93a33b7c with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(arg1):
            revert with 0, 'ERR: TOKEN NOT WHITELISTED'
        if block.timestamp < sub_e34a423c[msg.sender][address(ext_call.return_data[0])]:
            revert with 0, 'ERR: LIQUIDITY STILL LOCKED'
        if address(ext_call.return_data[0]) != address(arg3):
            revert with 0, 'ERR: TOKEN OUT DIFFERENT'
    require ext_code.size(vaultConfigAddress)
    call vaultConfigAddress.0x6f8dcb3d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'ERR: BALANCE LOW'
    require ext_code.size(address(arg1))
    call address(arg1).burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg10 == bool(arg10)
    emit 0xcbefaee1: address(arg1), arg2, address(ext_call.return_data[0]), address(arg4), arg5, arg7, Array(len=arg6.length, data=arg6[all]), ext_call.return_data[0], arg8, arg9, bool(arg10), msg.sender, address(ext_call.return_data[0]), address(arg3)
    stor101 = 1
    return ext_call.return_data[0]
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor151 = 0
        stor101 = 1
        vaultConfigAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor151 = 0
            stor101 = 1
            vaultConfigAddress = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor151 = 0
                stor101 = 1
                vaultConfigAddress = arg1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor151 = 0
                    stor101 = 1
                    vaultConfigAddress = arg1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stor151 = 0
                        stor101 = 1
                        vaultConfigAddress = arg1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = 0
                            stor101 = 1
                            vaultConfigAddress = arg1
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor151 = 0
                                stor101 = 1
                                vaultConfigAddress = arg1
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor151 = 0
                                    stor101 = 1
                                    vaultConfigAddress = arg1
                                else:
                                    uint16(stor0.field_0) = 257
                                    stor151 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor101 = 1
                                        vaultConfigAddress = arg1
                                    else:
                                        uint16(stor0.field_0) = 257
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            stor101 = 1
                                            vaultConfigAddress = arg1
                                        else:
                                            uint16(stor0.field_0) = 257
                                            stor101 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            vaultConfigAddress = arg1
                                            uint8(stor0.field_8) = 0
}

function sub_29de6838(?) {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == address(arg6)
    require arg9 == bool(arg9)
    mem[100] = arg4
    mem[132] = address(arg2)
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0xf7c28e2f with:
            gas gas_remaining wei
           args arg4, address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ERR: TOKEN NOT WHITELISTED DESTINATION'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'ERR: PAUSED'
    mem[ceil32(return_data.size) + 100] = arg4
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x90d50447 with:
            gas gas_remaining wei
           args arg4
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'ERR: PAUSED NETWORK'
    if arg1 <= 0:
        revert with 0, 'ERR: AMOUNT'
    require ext_code.size(vaultConfigAddress)
    call vaultConfigAddress.0x6f8dcb3d with:
         gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = arg7
    mem[(4 * ceil32(return_data.size)) + 128] = arg5
    mem[(4 * ceil32(return_data.size)) + 160] = arg8
    mem[(4 * ceil32(return_data.size)) + 196] = address(arg2)
    mem[(4 * ceil32(return_data.size)) + 228] = arg1
    require ext_code.size(vaultConfigAddress)
    call vaultConfigAddress.inTokenTransferLimits(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR: TRANSFER LIMITS'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0x4f0e0ef3 with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) != ext_call.return_data[12 len 20]:
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x2cf084cd with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 228] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 292] = arg1
        mem[(8 * ceil32(return_data.size)) + 192] = 100
        mem[(8 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(8 * ceil32(return_data.size)) + 224 len 4] = unknown_0x23b872dd(?????)
        mem[(8 * ceil32(return_data.size)) + 324] = 32
        mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 388 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
        mem[(8 * ceil32(return_data.size)) + 488] = 0
        call address(arg2) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg4), address(arg2) << 64 == bool(uint32(arg4), address(arg2) << 64)
                if not uint32(arg4), address(arg2) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                if not mem[(8 * ceil32(return_data.size)) + 420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(address(arg2))
        call address(arg2).deposit() with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x2cf084cd with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 260] = arg1
        mem[(8 * ceil32(return_data.size)) + 192] = 68
        mem[(8 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
        mem[(8 * ceil32(return_data.size)) + 292] = 32
        mem[(8 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg2)):
            revert with 0, 'Address: call to non-contract'
        mem[(8 * ceil32(return_data.size)) + 356 len 96] = 0, ext_call.return_data[12 len 20], arg1, 0
        mem[(8 * ceil32(return_data.size)) + 424] = 0
        call address(arg2) with:
           funct Mask(32, 224, 0, ext_call.return_data[12 len 20], arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, ext_call.return_data[12 len 20], arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg4), address(arg2) << 64 == bool(uint32(arg4), address(arg2) << 64)
                if not uint32(arg4), address(arg2) << 64:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(8 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(8 * ceil32(return_data.size)) + 388] == bool(mem[(8 * ceil32(return_data.size)) + 388])
                if not mem[(8 * ceil32(return_data.size)) + 388]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    deposits[ext_call.return_data[0]].field_0 = address(arg2)
    deposits[ext_call.return_data[0]].field_256 = arg1
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.0xf7c28e2f with:
            gas gas_remaining wei
           args arg4, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x54bcd2f2: ext_call.return_data[12 len 20], arg1, address(arg3), ext_call.return_data[0], arg5, address(arg6), arg7, arg8, bool(arg9), msg.sender, address(arg2), arg4
    stor101 = 1
    return ext_call.return_data[0]
}

function sub_d8101f06(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        if msg.value <= 0:
            revert with 0, 'ERR: AMOUNT'
    if not msg.value:
        if not address(arg2):
            revert with 0, 'ERR: INVALID TOKEN'
        mem[100] = address(arg2)
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0xf00fc9ff with:
                gas gas_remaining wei
               args address(arg2)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: TOKEN NOT WHITELISTED'
        if not msg.value:
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 196] = arg1
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call address(arg2) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x93a33b7c with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0xeb013520 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_e34a423c[msg.sender][address(arg2)] < block.timestamp + ext_call.return_data[0]:
                sub_e34a423c[msg.sender][address(arg2)] = block.timestamp + ext_call.return_data[0]
            emit 0xca9df381: arg1, address(arg2), msg.sender
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'ERR: NOT WRAPPED'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 < msg.value:
                revert with 0, 'ERR: LESS wETH THAN ETH'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 164] = 0
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x93a33b7c with:
                    gas gas_remaining wei
                   args address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0xeb013520 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_e34a423c[msg.sender][address(arg2)] < block.timestamp + ext_call.return_data[0]:
                sub_e34a423c[msg.sender][address(arg2)] = block.timestamp + ext_call.return_data[0]
            emit 0xca9df381: 0, address(arg2), msg.sender
    else:
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x4f0e0ef3 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0xf00fc9ff with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: WETH NOT WHITELISTED'
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x4f0e0ef3 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not msg.value:
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 196] = msg.value
            mem[(6 * ceil32(return_data.size)) + 96] = 100
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 228] = 32
            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                    if not mem[(6 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x93a33b7c with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0xeb013520 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_e34a423c[msg.sender][address(ext_call.return_data[0])] < block.timestamp + ext_call.return_data[0]:
                sub_e34a423c[msg.sender][address(ext_call.return_data[0])] = block.timestamp + ext_call.return_data[0]
            emit 0xca9df381: msg.value, address(ext_call.return_data[0]), msg.sender
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'ERR: NOT WRAPPED'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 < msg.value:
                revert with 0, 'ERR: LESS wETH THAN ETH'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 164] = 0
            mem[(8 * ceil32(return_data.size)) + 96] = 68
            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + 196] = 32
            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
            mem[(8 * ceil32(return_data.size)) + 328] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x93a33b7c with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0xeb013520 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp > !ext_call.return_data[0]:
                revert with 0, 17
            if sub_e34a423c[msg.sender][address(ext_call.return_data[0])] < block.timestamp + ext_call.return_data[0]:
                sub_e34a423c[msg.sender][address(ext_call.return_data[0])] = block.timestamp + ext_call.return_data[0]
            emit 0xca9df381: 0, address(ext_call.return_data[0]), msg.sender
    stor101 = 1
}

function sub_dbbf41c1(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if stor151:
        revert with 0, 'Pausable: paused'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.minLimitLiquidityBlocks() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < ext_call.return_data[0]:
        revert with 0, 'ERR: BLOCK RANGE'
    require ext_code.size(vaultConfigAddress)
    staticcall vaultConfigAddress.maxLimitLiquidityBlocks() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'ERR: BLOCK RANGE'
    if arg1 <= 0:
        if msg.value <= 0:
            revert with 0, 'ERR: AMOUNT'
    if not msg.value:
        if not address(arg2):
            revert with 0, 'ERR: INVALID TOKEN'
        mem[(2 * ceil32(return_data.size)) + 100] = address(arg2)
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0xf00fc9ff with:
                gas gas_remaining wei
               args address(arg2)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: TOKEN NOT WHITELISTED'
        if not msg.value:
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 196] = arg1
            mem[(6 * ceil32(return_data.size)) + 96] = 100
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 228] = 32
            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call address(arg2) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                    if not mem[(6 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            if arg3:
                staticcall vaultConfigAddress.0xf00fc9ff with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.number > !arg3:
                    revert with 0, 17
                if stor203[msg.sender][address(arg2)] < block.number + arg3:
                    stor203[msg.sender][address(arg2)] = block.number + arg3
                emit 0x70c95db2: arg1, arg3, address(arg2), msg.sender
            else:
                staticcall vaultConfigAddress.0x93a33b7c with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vaultConfigAddress)
                staticcall vaultConfigAddress.0xeb013520 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_e34a423c[msg.sender][address(arg2)] < block.timestamp + ext_call.return_data[0]:
                    sub_e34a423c[msg.sender][address(arg2)] = block.timestamp + ext_call.return_data[0]
                emit 0xca9df381: arg1, address(arg2), msg.sender
        else:
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(arg2))
            call address(arg2).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'ERR: NOT WRAPPED'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 < msg.value:
                revert with 0, 'ERR: LESS wETH THAN ETH'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 164] = 0
            mem[(8 * ceil32(return_data.size)) + 96] = 68
            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(8 * ceil32(return_data.size)) + 196] = 32
            mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg2)):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
            mem[(8 * ceil32(return_data.size)) + 328] = 0
            call address(arg2) with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                    if not mem[(8 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            if arg3:
                staticcall vaultConfigAddress.0xf00fc9ff with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.number > !arg3:
                    revert with 0, 17
                if stor203[msg.sender][address(arg2)] < block.number + arg3:
                    stor203[msg.sender][address(arg2)] = block.number + arg3
                emit 0x70c95db2: 0, arg3, address(arg2), msg.sender
            else:
                staticcall vaultConfigAddress.0x93a33b7c with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vaultConfigAddress)
                staticcall vaultConfigAddress.0xeb013520 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_e34a423c[msg.sender][address(arg2)] < block.timestamp + ext_call.return_data[0]:
                    sub_e34a423c[msg.sender][address(arg2)] = block.timestamp + ext_call.return_data[0]
                emit 0xca9df381: 0, address(arg2), msg.sender
    else:
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x4f0e0ef3 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0xf00fc9ff with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ERR: WETH NOT WHITELISTED'
        require ext_code.size(vaultConfigAddress)
        staticcall vaultConfigAddress.0x4f0e0ef3 with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not msg.value:
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
            mem[(8 * ceil32(return_data.size)) + 196] = msg.value
            mem[(8 * ceil32(return_data.size)) + 96] = 100
            mem[(8 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(8 * ceil32(return_data.size)) + 228] = 32
            mem[(8 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0
            mem[(8 * ceil32(return_data.size)) + 392] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], msg.value, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 324] == bool(mem[(8 * ceil32(return_data.size)) + 324])
                    if not mem[(8 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            if arg3:
                staticcall vaultConfigAddress.0xf00fc9ff with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.number > !arg3:
                    revert with 0, 17
                if stor203[msg.sender][address(ext_call.return_data[0])] < block.number + arg3:
                    stor203[msg.sender][address(ext_call.return_data[0])] = block.number + arg3
                emit 0x70c95db2: msg.value, arg3, address(ext_call.return_data[0]), msg.sender
            else:
                staticcall vaultConfigAddress.0x93a33b7c with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vaultConfigAddress)
                staticcall vaultConfigAddress.0xeb013520 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_e34a423c[msg.sender][address(ext_call.return_data[0])] < block.timestamp + ext_call.return_data[0]:
                    sub_e34a423c[msg.sender][address(ext_call.return_data[0])] = block.timestamp + ext_call.return_data[0]
                emit 0xca9df381: msg.value, address(ext_call.return_data[0]), msg.sender
        else:
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'ERR: NOT WRAPPED'
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if 0 < msg.value:
                revert with 0, 'ERR: LESS wETH THAN ETH'
            require ext_code.size(vaultConfigAddress)
            staticcall vaultConfigAddress.0x2cf084cd with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(11 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
            mem[(11 * ceil32(return_data.size)) + 164] = 0
            mem[(11 * ceil32(return_data.size)) + 96] = 68
            mem[(11 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(11 * ceil32(return_data.size)) + 196] = 32
            mem[(11 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[(11 * ceil32(return_data.size)) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
            mem[(11 * ceil32(return_data.size)) + 328] = 0
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(11 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(11 * ceil32(return_data.size)) + 292] == bool(mem[(11 * ceil32(return_data.size)) + 292])
                    if not mem[(11 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(vaultConfigAddress)
            if arg3:
                staticcall vaultConfigAddress.0xf00fc9ff with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if block.number > !arg3:
                    revert with 0, 17
                if stor203[msg.sender][address(ext_call.return_data[0])] < block.number + arg3:
                    stor203[msg.sender][address(ext_call.return_data[0])] = block.number + arg3
                emit 0x70c95db2: 0, arg3, address(ext_call.return_data[0]), msg.sender
            else:
                staticcall vaultConfigAddress.0x93a33b7c with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vaultConfigAddress)
                staticcall vaultConfigAddress.0xeb013520 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp > !ext_call.return_data[0]:
                    revert with 0, 17
                if sub_e34a423c[msg.sender][address(ext_call.return_data[0])] < block.timestamp + ext_call.return_data[0]:
                    sub_e34a423c[msg.sender][address(ext_call.return_data[0])] = block.timestamp + ext_call.return_data[0]
                emit 0xca9df381: 0, address(ext_call.return_data[0]), msg.sender
    stor101 = 1
}



}
