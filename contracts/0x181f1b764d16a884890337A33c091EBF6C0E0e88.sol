contract main {




// =====================  Runtime code  =====================


#
#  - sub_bff51d71(?)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 paused;
uint256 FEE;
uint256 sub_6c54601b;
address treasuryAddress;
uint32 stor204;
address defaultStrategyAddress;
mapping of uint32 strategies;
mapping of uint8 stor206;

function sub_2b69eb2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor206[arg1])
}

function strategies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(strategies[arg1])
}

function paused() {
    return bool(paused)
}

function treasury() {
    return treasuryAddress
}

function sub_6c54601b(?) {
    return sub_6c54601b
}

function owner() {
    return owner
}

function FEE() {
    return FEE
}

function defaultStrategy() {
    return address(defaultStrategyAddress)
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

function setFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    FEE = arg1
    sub_6c54601b = arg2
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function getStrategy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(strategies[address(arg1)]):
        return address(strategies[address(arg1)])
    return address(defaultStrategyAddress)
}

function sub_57bee944(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(defaultStrategyAddress) = address(arg1)
}

function setStrategy(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(strategies[address(arg1)]) = arg2
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

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function sub_2fbffaeb(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 206
        stor206[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a9f4143e(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = address(cd[4])
    address(defaultStrategyAddress) = address(cd[36])
    FEE = cd[68]
    sub_6c54601b = cd[100]
    idx = 0
    while idx < ('cd', 132).length:
        require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[132] + 36)])
        mem[32] = 206
        stor206[address(cd[((32 * idx) + cd[132] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getAmountsOut(address arg1, uint256 arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[0] = arg1
    mem[96] = 0xbb7b9c7600000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[164] = 96
    mem[196] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 228
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(strategies[address(arg1)]):
        require ext_code.size(address(strategies[address(arg1)]))
        staticcall address(strategies[address(arg1)]).0xbb7b9c76 with:
                gas gas_remaining wei
               args address(arg1), arg2, Array(len=arg3.length, data=mem[228 len 32 * arg3.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _28 = mem[96 len 4], address(arg1) << 64
        require mem[96 len 4], address(arg1) << 64 <= test266151307()
        require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
        _30 = mem[mem[96 len 4], address(arg1) << 64 + 96]
        if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _30
        require return_data.size >= _28 + (32 * _30) + 32
        mem[ceil32(return_data.size) + 128 len 32 * _30] = mem[_28 + 128 len 32 * _30]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _30
        mem[mem[64] + 64 len 32 * _30] = mem[ceil32(return_data.size) + 128 len 32 * _30]
        return Array(len=_30, data=mem[mem[64] + 64 len 32 * _30])
    require ext_code.size(address(defaultStrategyAddress))
    staticcall address(defaultStrategyAddress).0xbb7b9c76 with:
            gas gas_remaining wei
           args address(arg1), arg2, Array(len=arg3.length, data=mem[228 len 32 * arg3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _29 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _31 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _31
    require return_data.size >= _29 + (32 * _31) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _31] = mem[_29 + 128 len 32 * _31]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _31
    mem[mem[64] + 64 len 32 * _31] = mem[ceil32(return_data.size) + 128 len 32 * _31]
    return Array(len=_31, data=mem[mem[64] + 64 len 32 * _31])
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor101 = 1
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor101 = 1
            paused = 0
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor101 = 1
                paused = 0
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor101 = 1
                    paused = 0
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101 = 1
                        paused = 0
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor101 = 1
                            paused = 0
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor101 = 1
                                paused = 0
                            else:
                                uint16(stor0.field_0) = 257
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        paused = 0
                                    else:
                                        uint16(stor0.field_0) = 257
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            paused = 0
                                        else:
                                            uint16(stor0.field_0) = 257
                                            paused = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function sub_ae25e886(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor101 = 2
        if paused:
            revert with 0, 'Pausable: paused'
        else:
            if cd[196] < block.timestamp:
                revert with 0, 'Deadline exceeded'
            else:
                if not address(cd[4]):
                    revert with 0, 'Missing router address'
                else:
                    if 0 >= ('cd', 132).length:
                        revert with 0, 50
                    else:
                        require ('cd', 132)[0] == address(('cd', 132)[0])
                        if address(strategies[address(cd[4])]):
                            mem[100] = address(strategies[address(cd[4])])
                            require ext_code.size(address(('cd', 132)[0]))
                            staticcall address(('cd', 132)[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(strategies[address(cd[4])])
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 132] = msg.sender
                                mem[ceil32(return_data.size) + 164] = address(strategies[address(cd[4])])
                                mem[ceil32(return_data.size) + 196] = cd[68]
                                mem[ceil32(return_data.size) + 96] = 100
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                                mem[ceil32(return_data.size) + 228] = 32
                                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(('cd', 132)[0])):
                                    revert with 0, 'Address: call to non-contract'
                                else:
                                    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(strategies[address(cd[4])]), cd[68], 0
                                    mem[ceil32(return_data.size) + 392] = 0
                                    call address(('cd', 132)[0]) with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(strategies[address(cd[4])]), cd[68], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(strategies[address(cd[4])]), cd[68], 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            else:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(address(('cd', 132)[0]))
                                                staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(strategies[address(cd[4])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    else:
                                                        if address(strategies[address(cd[4])]):
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + 520
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                            call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                        else:
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + 520
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(defaultStrategyAddress))
                                                            call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                            else:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(strategies[address(cd[4])]), mem[132 len 28] == bool(uint32(strategies[address(cd[4])]), mem[132 len 28])
                                                if not uint32(strategies[address(cd[4])]), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    require ext_code.size(address(('cd', 132)[0]))
                                                    staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(strategies[address(cd[4])])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if address(strategies[address(cd[4])]):
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + 520
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                            else:
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + 520
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                    else:
                                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                        else:
                                            if not return_data.size:
                                                require ext_code.size(address(('cd', 132)[0]))
                                                staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(strategies[address(cd[4])])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    else:
                                                        if address(strategies[address(cd[4])]):
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                            call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                        else:
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(defaultStrategyAddress))
                                                            call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                            else:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                if not mem[ceil32(return_data.size) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    require ext_code.size(address(('cd', 132)[0]))
                                                    staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(strategies[address(cd[4])])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if address(strategies[address(cd[4])]):
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                            else:
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                        else:
                            mem[100] = address(defaultStrategyAddress)
                            require ext_code.size(address(('cd', 132)[0]))
                            staticcall address(('cd', 132)[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(defaultStrategyAddress)
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 132] = msg.sender
                                mem[ceil32(return_data.size) + 164] = address(defaultStrategyAddress)
                                mem[ceil32(return_data.size) + 196] = cd[68]
                                mem[ceil32(return_data.size) + 96] = 100
                                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                                mem[ceil32(return_data.size) + 228] = 32
                                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(('cd', 132)[0])):
                                    revert with 0, 'Address: call to non-contract'
                                else:
                                    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(defaultStrategyAddress), cd[68], 0
                                    mem[ceil32(return_data.size) + 392] = 0
                                    call address(('cd', 132)[0]) with:
                                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(defaultStrategyAddress), cd[68], 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(defaultStrategyAddress), cd[68], 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if ext_call.return_data[0]:
                                                revert with memory
                                                  from 128
                                                   len ext_call.return_data[0]
                                            else:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                        else:
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(address(('cd', 132)[0]))
                                                staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(defaultStrategyAddress)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    else:
                                                        if address(strategies[address(cd[4])]):
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + 520
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                            call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                        else:
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + 520
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(defaultStrategyAddress))
                                                            call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                            else:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(stor204), mem[132 len 28] == bool(uint32(stor204), mem[132 len 28])
                                                if not uint32(stor204), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    require ext_code.size(address(('cd', 132)[0]))
                                                    staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(defaultStrategyAddress)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if address(strategies[address(cd[4])]):
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + 520
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                            else:
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + 520
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + 520 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                    else:
                                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                revert with 0, 'SafeERC20: low-level call failed'
                                        else:
                                            if not return_data.size:
                                                require ext_code.size(address(('cd', 132)[0]))
                                                staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(defaultStrategyAddress)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    else:
                                                        if address(strategies[address(cd[4])]):
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                            call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                        else:
                                                            idx = 0
                                                            s = cd[132] + 36
                                                            t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                            while idx < ('cd', 132).length:
                                                                require cd[s] == address(cd[s])
                                                                mem[t] = address(cd[s])
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            require ext_code.size(address(defaultStrategyAddress))
                                                            call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                 gas gas_remaining wei
                                                                args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                if eth.balance(this.address) < eth.balance(this.address):
                                                                    revert with 0, 17
                                                                else:
                                                                    if not FEE:
                                                                        if eth.balance(this.address) < 0:
                                                                            revert with 0, 'Address: insufficient balance'
                                                                        else:
                                                                            call address(cd[164]) with:
                                                                                 gas gas_remaining wei
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                            else:
                                                                                if not ext_call.success:
                                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                else:
                                                                                    if 0 < cd[100]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        if not address(cd[36]):
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not sub_6c54601b:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                            else:
                                                require return_data.size >= 32
                                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                if not mem[ceil32(return_data.size) + 324]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                else:
                                                    require ext_code.size(address(('cd', 132)[0]))
                                                    staticcall address(('cd', 132)[0]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(defaultStrategyAddress)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if address(strategies[address(cd[4])]):
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                call address(strategies[address(cd[4])]).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                            else:
                                                                idx = 0
                                                                s = cd[132] + 36
                                                                t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521
                                                                while idx < ('cd', 132).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                call address(defaultStrategyAddress).0x9c91fcb5 with:
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), 0, cd[100], 192, address(this.address), cd[196], ('cd', 132).length, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 32 * ('cd', 132).length]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not FEE:
                                                                            if eth.balance(this.address) < 0:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[164]) with:
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        if 0 < cd[100]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            if not address(cd[36]):
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 'Address: insufficient balance'
                                                                                else:
                                                                                    call address(cd[164]) with:
                                                                                         gas gas_remaining wei
                                                                                    if not return_data.size:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        if not ext_call.success:
                                                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                        else:
                                                                                            if 0 < cd[100]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                if not sub_6c54601b:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 'Address: insufficient balance'
                                                                                    else:
                                                                                        call address(cd[164]) with:
                                                                                             gas gas_remaining wei
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                        else:
                                                                                            if not ext_call.success:
                                                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                            else:
                                                                                                if 0 < cd[100]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
}

function sub_7551fcec(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor101 = 2
        if paused:
            revert with 0, 'Pausable: paused'
        else:
            if cd[164] < block.timestamp:
                revert with 0, 'Deadline exceeded'
            else:
                if not address(cd[4]):
                    revert with 0, 'Missing router address'
                else:
                    if not FEE:
                        if ('cd', 100).length < 1:
                            revert with 0, 17
                        else:
                            if ('cd', 100).length - 1 >= ('cd', 100).length:
                                revert with 0, 50
                            else:
                                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(cd[132])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if address(strategies[address(cd[4])]):
                                        idx = 0
                                        s = cd[100] + 36
                                        t = ceil32(return_data.size) + 292
                                        while idx < ('cd', 100).length:
                                            require cd[s] == address(cd[s])
                                            mem[t] = address(cd[s])
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(strategies[address(cd[4])]))
                                        call address(strategies[address(cd[4])]).0xfde1adda with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(cd[132])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 17
                                                else:
                                                    if 0 < cd[68]:
                                                        revert with 0, 'Slippage too low'
                                                    else:
                                                        stor101 = 1
                                                        return 0
                                    else:
                                        idx = 0
                                        s = cd[100] + 36
                                        t = ceil32(return_data.size) + 292
                                        while idx < ('cd', 100).length:
                                            require cd[s] == address(cd[s])
                                            mem[t] = address(cd[s])
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(defaultStrategyAddress))
                                        call address(defaultStrategyAddress).0xfde1adda with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(cd[132])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 17
                                                else:
                                                    if 0 < cd[68]:
                                                        revert with 0, 'Slippage too low'
                                                    else:
                                                        stor101 = 1
                                                        return 0
                    else:
                        if msg.value:
                            if msg.value and FEE > -1 / msg.value:
                                revert with 0, 17
                            else:
                                if not address(cd[36]):
                                    if not msg.value * FEE / 10000:
                                        if ('cd', 100).length < 1:
                                            revert with 0, 17
                                        else:
                                            if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                revert with 0, 50
                                            else:
                                                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(cd[132])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if address(strategies[address(cd[4])]):
                                                        idx = 0
                                                        s = cd[100] + 36
                                                        t = ceil32(return_data.size) + 292
                                                        while idx < ('cd', 100).length:
                                                            require cd[s] == address(cd[s])
                                                            mem[t] = address(cd[s])
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(address(strategies[address(cd[4])]))
                                                        call address(strategies[address(cd[4])]).0xfde1adda with:
                                                           value msg.value wei
                                                             gas gas_remaining wei
                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[132])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                    revert with 0, 17
                                                                else:
                                                                    if 0 < cd[68]:
                                                                        revert with 0, 'Slippage too low'
                                                                    else:
                                                                        stor101 = 1
                                                                        return 0
                                                    else:
                                                        idx = 0
                                                        s = cd[100] + 36
                                                        t = ceil32(return_data.size) + 292
                                                        while idx < ('cd', 100).length:
                                                            require cd[s] == address(cd[s])
                                                            mem[t] = address(cd[s])
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(address(defaultStrategyAddress))
                                                        call address(defaultStrategyAddress).0xfde1adda with:
                                                           value msg.value wei
                                                             gas gas_remaining wei
                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[132])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                    revert with 0, 17
                                                                else:
                                                                    if 0 < cd[68]:
                                                                        revert with 0, 'Slippage too low'
                                                                    else:
                                                                        stor101 = 1
                                                                        return 0
                                    else:
                                        if eth.balance(this.address) < msg.value * FEE / 10000:
                                            revert with 0, 'Address: insufficient balance'
                                        else:
                                            call treasuryAddress with:
                                               value msg.value * FEE / 10000 wei
                                                 gas gas_remaining wei
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                'Address: unable to send value, recipient may have reverted'
                                                else:
                                                    emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                    if msg.value < msg.value * FEE / 10000:
                                                        revert with 0, 17
                                                    else:
                                                        if ('cd', 100).length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                revert with 0, 50
                                                            else:
                                                                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[132])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if address(strategies[address(cd[4])]):
                                                                        idx = 0
                                                                        s = cd[100] + 36
                                                                        t = ceil32(return_data.size) + 292
                                                                        while idx < ('cd', 100).length:
                                                                            require cd[s] == address(cd[s])
                                                                            mem[t] = address(cd[s])
                                                                            idx = idx + 1
                                                                            s = s + 32
                                                                            t = t + 32
                                                                            continue 
                                                                        require ext_code.size(address(strategies[address(cd[4])]))
                                                                        call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                           value msg.value - (msg.value * FEE / 10000) wei
                                                                             gas gas_remaining wei
                                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if 0 < cd[68]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        idx = 0
                                                                        s = cd[100] + 36
                                                                        t = ceil32(return_data.size) + 292
                                                                        while idx < ('cd', 100).length:
                                                                            require cd[s] == address(cd[s])
                                                                            mem[t] = address(cd[s])
                                                                            idx = idx + 1
                                                                            s = s + 32
                                                                            t = t + 32
                                                                            continue 
                                                                        require ext_code.size(address(defaultStrategyAddress))
                                                                        call address(defaultStrategyAddress).0xfde1adda with:
                                                                           value msg.value - (msg.value * FEE / 10000) wei
                                                                             gas gas_remaining wei
                                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if 0 < cd[68]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                            else:
                                                if not ext_call.success:
                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                else:
                                                    emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                    if msg.value < msg.value * FEE / 10000:
                                                        revert with 0, 17
                                                    else:
                                                        if ('cd', 100).length < 1:
                                                            revert with 0, 17
                                                        else:
                                                            if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                revert with 0, 50
                                                            else:
                                                                require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(cd[132])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if address(strategies[address(cd[4])]):
                                                                        idx = 0
                                                                        s = cd[100] + 36
                                                                        t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                        while idx < ('cd', 100).length:
                                                                            require cd[s] == address(cd[s])
                                                                            mem[t] = address(cd[s])
                                                                            idx = idx + 1
                                                                            s = s + 32
                                                                            t = t + 32
                                                                            continue 
                                                                        require ext_code.size(address(strategies[address(cd[4])]))
                                                                        call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                           value msg.value - (msg.value * FEE / 10000) wei
                                                                             gas gas_remaining wei
                                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if 0 < cd[68]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                                                    else:
                                                                        idx = 0
                                                                        s = cd[100] + 36
                                                                        t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                        while idx < ('cd', 100).length:
                                                                            require cd[s] == address(cd[s])
                                                                            mem[t] = address(cd[s])
                                                                            idx = idx + 1
                                                                            s = s + 32
                                                                            t = t + 32
                                                                            continue 
                                                                        require ext_code.size(address(defaultStrategyAddress))
                                                                        call address(defaultStrategyAddress).0xfde1adda with:
                                                                           value msg.value - (msg.value * FEE / 10000) wei
                                                                             gas gas_remaining wei
                                                                            args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if 0 < cd[68]:
                                                                                        revert with 0, 'Slippage too low'
                                                                                    else:
                                                                                        stor101 = 1
                                                                                        return 0
                                else:
                                    if not sub_6c54601b:
                                        if msg.value * FEE / 10000 < 0:
                                            revert with 0, 17
                                        else:
                                            if not msg.value * FEE / 10000:
                                                if ('cd', 100).length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                        revert with 0, 50
                                                    else:
                                                        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(cd[132])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if address(strategies[address(cd[4])]):
                                                                idx = 0
                                                                s = cd[100] + 36
                                                                t = ceil32(return_data.size) + 292
                                                                while idx < ('cd', 100).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                   value msg.value wei
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[132])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if 0 < cd[68]:
                                                                                revert with 0, 'Slippage too low'
                                                                            else:
                                                                                stor101 = 1
                                                                                return 0
                                                            else:
                                                                idx = 0
                                                                s = cd[100] + 36
                                                                t = ceil32(return_data.size) + 292
                                                                while idx < ('cd', 100).length:
                                                                    require cd[s] == address(cd[s])
                                                                    mem[t] = address(cd[s])
                                                                    idx = idx + 1
                                                                    s = s + 32
                                                                    t = t + 32
                                                                    continue 
                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                call address(defaultStrategyAddress).0xfde1adda with:
                                                                   value msg.value wei
                                                                     gas gas_remaining wei
                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[132])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if 0 < cd[68]:
                                                                                revert with 0, 'Slippage too low'
                                                                            else:
                                                                                stor101 = 1
                                                                                return 0
                                            else:
                                                if eth.balance(this.address) < msg.value * FEE / 10000:
                                                    revert with 0, 'Address: insufficient balance'
                                                else:
                                                    call treasuryAddress with:
                                                       value msg.value * FEE / 10000 wei
                                                         gas gas_remaining wei
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                            if msg.value < msg.value * FEE / 10000:
                                                                revert with 0, 17
                                                            else:
                                                                if ('cd', 100).length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[132])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if address(strategies[address(cd[4])]):
                                                                                idx = 0
                                                                                s = cd[100] + 36
                                                                                t = ceil32(return_data.size) + 292
                                                                                while idx < ('cd', 100).length:
                                                                                    require cd[s] == address(cd[s])
                                                                                    mem[t] = address(cd[s])
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                                call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                   value msg.value - (msg.value * FEE / 10000) wei
                                                                                     gas gas_remaining wei
                                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if 0 < cd[68]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                idx = 0
                                                                                s = cd[100] + 36
                                                                                t = ceil32(return_data.size) + 292
                                                                                while idx < ('cd', 100).length:
                                                                                    require cd[s] == address(cd[s])
                                                                                    mem[t] = address(cd[s])
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                                call address(defaultStrategyAddress).0xfde1adda with:
                                                                                   value msg.value - (msg.value * FEE / 10000) wei
                                                                                     gas gas_remaining wei
                                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if 0 < cd[68]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                    else:
                                                        if not ext_call.success:
                                                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                        else:
                                                            emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                            if msg.value < msg.value * FEE / 10000:
                                                                revert with 0, 17
                                                            else:
                                                                if ('cd', 100).length < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                        revert with 0, 50
                                                                    else:
                                                                        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[132])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if address(strategies[address(cd[4])]):
                                                                                idx = 0
                                                                                s = cd[100] + 36
                                                                                t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                while idx < ('cd', 100).length:
                                                                                    require cd[s] == address(cd[s])
                                                                                    mem[t] = address(cd[s])
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                                                call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                   value msg.value - (msg.value * FEE / 10000) wei
                                                                                     gas gas_remaining wei
                                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if 0 < cd[68]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                                                            else:
                                                                                idx = 0
                                                                                s = cd[100] + 36
                                                                                t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                while idx < ('cd', 100).length:
                                                                                    require cd[s] == address(cd[s])
                                                                                    mem[t] = address(cd[s])
                                                                                    idx = idx + 1
                                                                                    s = s + 32
                                                                                    t = t + 32
                                                                                    continue 
                                                                                require ext_code.size(address(defaultStrategyAddress))
                                                                                call address(defaultStrategyAddress).0xfde1adda with:
                                                                                   value msg.value - (msg.value * FEE / 10000) wei
                                                                                     gas gas_remaining wei
                                                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if 0 < cd[68]:
                                                                                                revert with 0, 'Slippage too low'
                                                                                            else:
                                                                                                stor101 = 1
                                                                                                return 0
                                    else:
                                        if msg.value * FEE / 10000:
                                            if msg.value * FEE / 10000 and sub_6c54601b > -1 / msg.value * FEE / 10000:
                                                revert with 0, 17
                                            else:
                                                if msg.value * FEE / 10000 < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                    revert with 0, 17
                                                else:
                                                    if not (msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000):
                                                        if not msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                            if ('cd', 100).length < 1:
                                                                revert with 0, 17
                                                            else:
                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                    revert with 0, 50
                                                                else:
                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(cd[132])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if address(strategies[address(cd[4])]):
                                                                            idx = 0
                                                                            s = cd[100] + 36
                                                                            t = ceil32(return_data.size) + 292
                                                                            while idx < ('cd', 100).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                               value msg.value wei
                                                                                 gas gas_remaining wei
                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[132])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if 0 < cd[68]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                                        else:
                                                                            idx = 0
                                                                            s = cd[100] + 36
                                                                            t = ceil32(return_data.size) + 292
                                                                            while idx < ('cd', 100).length:
                                                                                require cd[s] == address(cd[s])
                                                                                mem[t] = address(cd[s])
                                                                                idx = idx + 1
                                                                                s = s + 32
                                                                                t = t + 32
                                                                                continue 
                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                               value msg.value wei
                                                                                 gas gas_remaining wei
                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(cd[132])
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if 0 < cd[68]:
                                                                                            revert with 0, 'Slippage too low'
                                                                                        else:
                                                                                            stor101 = 1
                                                                                            return 0
                                                        else:
                                                            if eth.balance(this.address) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                revert with 0, 'Address: insufficient balance'
                                                            else:
                                                                call address(cd[36]) with:
                                                                   value msg.value * FEE / 10000 * sub_6c54601b / 10000 wei
                                                                     gas gas_remaining wei
                                                                if not return_data.size:
                                                                    if not ext_call.success:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    'Address: unable to send value, recipient may have reverted'
                                                                    else:
                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                        if msg.value < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ('cd', 100).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if address(strategies[address(cd[4])]):
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + 292
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                                        else:
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + 292
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                else:
                                                                    if not ext_call.success:
                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                    else:
                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                        if msg.value < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if ('cd', 100).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if address(strategies[address(cd[4])]):
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                                        else:
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                    else:
                                                        if eth.balance(this.address) < (msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000):
                                                            revert with 0, 'Address: insufficient balance'
                                                        else:
                                                            call treasuryAddress with:
                                                               value (msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                 gas gas_remaining wei
                                                            if not return_data.size:
                                                                if not ext_call.success:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                'Address: unable to send value, recipient may have reverted'
                                                                else:
                                                                    emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), treasuryAddress, 0
                                                                    if msg.value < (msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                            if ('cd', 100).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if address(strategies[address(cd[4])]):
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + 292
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                                        else:
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + 292
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                        else:
                                                                            if eth.balance(this.address) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[36]) with:
                                                                                   value msg.value * FEE / 10000 * sub_6c54601b / 10000 wei
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                    'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                                        if msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if ('cd', 100).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[132])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if address(strategies[address(cd[4])]):
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + 292
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                                        else:
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + 292
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                                        if msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if ('cd', 100).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[132])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if address(strategies[address(cd[4])]):
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                                        else:
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                            else:
                                                                if not ext_call.success:
                                                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                else:
                                                                    emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), treasuryAddress, 0
                                                                    if msg.value < (msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000):
                                                                        revert with 0, 17
                                                                    else:
                                                                        if not msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                            if ('cd', 100).length < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                    revert with 0, 50
                                                                                else:
                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args address(cd[132])
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if address(strategies[address(cd[4])]):
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                                        else:
                                                                                            idx = 0
                                                                                            s = cd[100] + 36
                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                            while idx < ('cd', 100).length:
                                                                                                require cd[s] == address(cd[s])
                                                                                                mem[t] = address(cd[s])
                                                                                                idx = idx + 1
                                                                                                s = s + 32
                                                                                                t = t + 32
                                                                                                continue 
                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                               value msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) wei
                                                                                                 gas gas_remaining wei
                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(cd[132])
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 0 < cd[68]:
                                                                                                            revert with 0, 'Slippage too low'
                                                                                                        else:
                                                                                                            stor101 = 1
                                                                                                            return 0
                                                                        else:
                                                                            if eth.balance(this.address) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                revert with 0, 'Address: insufficient balance'
                                                                            else:
                                                                                call address(cd[36]) with:
                                                                                   value msg.value * FEE / 10000 * sub_6c54601b / 10000 wei
                                                                                     gas gas_remaining wei
                                                                                if not return_data.size:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                                        if msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if ('cd', 100).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[132])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if address(strategies[address(cd[4])]):
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                                        else:
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                else:
                                                                                    if not ext_call.success:
                                                                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                                                    else:
                                                                                        emit 0xfebf6afb: ((msg.value * FEE / 10000) - (msg.value * FEE / 10000 * sub_6c54601b / 10000)), address(cd[36]), 0
                                                                                        if msg.value - (msg.value * FEE / 10000) + (msg.value * FEE / 10000 * sub_6c54601b / 10000) < msg.value * FEE / 10000 * sub_6c54601b / 10000:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if ('cd', 100).length < 1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                                                    revert with 0, 50
                                                                                                else:
                                                                                                    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(cd[132])
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if address(strategies[address(cd[4])]):
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = (4 * ceil32(return_data.size)) + 294
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(strategies[address(cd[4])]))
                                                                                                            call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 294 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                                                                                        else:
                                                                                                            idx = 0
                                                                                                            s = cd[100] + 36
                                                                                                            t = (4 * ceil32(return_data.size)) + 294
                                                                                                            while idx < ('cd', 100).length:
                                                                                                                require cd[s] == address(cd[s])
                                                                                                                mem[t] = address(cd[s])
                                                                                                                idx = idx + 1
                                                                                                                s = s + 32
                                                                                                                t = t + 32
                                                                                                                continue 
                                                                                                            require ext_code.size(address(defaultStrategyAddress))
                                                                                                            call address(defaultStrategyAddress).0xfde1adda with:
                                                                                                               value msg.value - (msg.value * FEE / 10000) wei
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[(4 * ceil32(return_data.size)) + 294 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                                                staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(cd[132])
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 0 < cd[68]:
                                                                                                                            revert with 0, 'Slippage too low'
                                                                                                                        else:
                                                                                                                            stor101 = 1
                                                                                                                            return 0
                                        else:
                                            if msg.value * FEE / 10000 < 0:
                                                revert with 0, 17
                                            else:
                                                if not msg.value * FEE / 10000:
                                                    if ('cd', 100).length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                            revert with 0, 50
                                                        else:
                                                            require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args address(cd[132])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if address(strategies[address(cd[4])]):
                                                                    idx = 0
                                                                    s = cd[100] + 36
                                                                    t = ceil32(return_data.size) + 292
                                                                    while idx < ('cd', 100).length:
                                                                        require cd[s] == address(cd[s])
                                                                        mem[t] = address(cd[s])
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    require ext_code.size(address(strategies[address(cd[4])]))
                                                                    call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[132])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 0 < cd[68]:
                                                                                    revert with 0, 'Slippage too low'
                                                                                else:
                                                                                    stor101 = 1
                                                                                    return 0
                                                                else:
                                                                    idx = 0
                                                                    s = cd[100] + 36
                                                                    t = ceil32(return_data.size) + 292
                                                                    while idx < ('cd', 100).length:
                                                                        require cd[s] == address(cd[s])
                                                                        mem[t] = address(cd[s])
                                                                        idx = idx + 1
                                                                        s = s + 32
                                                                        t = t + 32
                                                                        continue 
                                                                    require ext_code.size(address(defaultStrategyAddress))
                                                                    call address(defaultStrategyAddress).0xfde1adda with:
                                                                       value msg.value wei
                                                                         gas gas_remaining wei
                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(cd[132])
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if 0 < cd[68]:
                                                                                    revert with 0, 'Slippage too low'
                                                                                else:
                                                                                    stor101 = 1
                                                                                    return 0
                                                else:
                                                    if eth.balance(this.address) < msg.value * FEE / 10000:
                                                        revert with 0, 'Address: insufficient balance'
                                                    else:
                                                        call treasuryAddress with:
                                                           value msg.value * FEE / 10000 wei
                                                             gas gas_remaining wei
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                                if msg.value < msg.value * FEE / 10000:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 100).length < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if address(strategies[address(cd[4])]):
                                                                                    idx = 0
                                                                                    s = cd[100] + 36
                                                                                    t = ceil32(return_data.size) + 292
                                                                                    while idx < ('cd', 100).length:
                                                                                        require cd[s] == address(cd[s])
                                                                                        mem[t] = address(cd[s])
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    require ext_code.size(address(strategies[address(cd[4])]))
                                                                                    call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                       value msg.value - (msg.value * FEE / 10000) wei
                                                                                         gas gas_remaining wei
                                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[132])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 0 < cd[68]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    idx = 0
                                                                                    s = cd[100] + 36
                                                                                    t = ceil32(return_data.size) + 292
                                                                                    while idx < ('cd', 100).length:
                                                                                        require cd[s] == address(cd[s])
                                                                                        mem[t] = address(cd[s])
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    require ext_code.size(address(defaultStrategyAddress))
                                                                                    call address(defaultStrategyAddress).0xfde1adda with:
                                                                                       value msg.value - (msg.value * FEE / 10000) wei
                                                                                         gas gas_remaining wei
                                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[132])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 0 < cd[68]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                        else:
                                                            if not ext_call.success:
                                                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                                                            else:
                                                                emit 0xfebf6afb: (msg.value * FEE / 10000), treasuryAddress, 0
                                                                if msg.value < msg.value * FEE / 10000:
                                                                    revert with 0, 17
                                                                else:
                                                                    if ('cd', 100).length < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if ('cd', 100).length - 1 >= ('cd', 100).length:
                                                                            revert with 0, 50
                                                                        else:
                                                                            require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(cd[132])
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if address(strategies[address(cd[4])]):
                                                                                    idx = 0
                                                                                    s = cd[100] + 36
                                                                                    t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                    while idx < ('cd', 100).length:
                                                                                        require cd[s] == address(cd[s])
                                                                                        mem[t] = address(cd[s])
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    require ext_code.size(address(strategies[address(cd[4])]))
                                                                                    call address(strategies[address(cd[4])]).0xfde1adda with:
                                                                                       value msg.value - (msg.value * FEE / 10000) wei
                                                                                         gas gas_remaining wei
                                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[132])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 0 < cd[68]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                                                                                else:
                                                                                    idx = 0
                                                                                    s = cd[100] + 36
                                                                                    t = ceil32(return_data.size) + ceil32(return_data.size) + 293
                                                                                    while idx < ('cd', 100).length:
                                                                                        require cd[s] == address(cd[s])
                                                                                        mem[t] = address(cd[s])
                                                                                        idx = idx + 1
                                                                                        s = s + 32
                                                                                        t = t + 32
                                                                                        continue 
                                                                                    require ext_code.size(address(defaultStrategyAddress))
                                                                                    call address(defaultStrategyAddress).0xfde1adda with:
                                                                                       value msg.value - (msg.value * FEE / 10000) wei
                                                                                         gas gas_remaining wei
                                                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args address(cd[132])
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 0 < cd[68]:
                                                                                                    revert with 0, 'Slippage too low'
                                                                                                else:
                                                                                                    stor101 = 1
                                                                                                    return 0
                        else:
                            if not address(cd[36]):
                                if ('cd', 100).length < 1:
                                    revert with 0, 17
                                else:
                                    if ('cd', 100).length - 1 >= ('cd', 100).length:
                                        revert with 0, 50
                                    else:
                                        require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(cd[132])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if address(strategies[address(cd[4])]):
                                                idx = 0
                                                s = cd[100] + 36
                                                t = ceil32(return_data.size) + 292
                                                while idx < ('cd', 100).length:
                                                    require cd[s] == address(cd[s])
                                                    mem[t] = address(cd[s])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(strategies[address(cd[4])]))
                                                call address(strategies[address(cd[4])]).0xfde1adda with:
                                                   value msg.value wei
                                                     gas gas_remaining wei
                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(cd[132])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if 0 < cd[68]:
                                                                revert with 0, 'Slippage too low'
                                                            else:
                                                                stor101 = 1
                                                                return 0
                                            else:
                                                idx = 0
                                                s = cd[100] + 36
                                                t = ceil32(return_data.size) + 292
                                                while idx < ('cd', 100).length:
                                                    require cd[s] == address(cd[s])
                                                    mem[t] = address(cd[s])
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(address(defaultStrategyAddress))
                                                call address(defaultStrategyAddress).0xfde1adda with:
                                                   value msg.value wei
                                                     gas gas_remaining wei
                                                    args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(cd[132])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        else:
                                                            if 0 < cd[68]:
                                                                revert with 0, 'Slippage too low'
                                                            else:
                                                                stor101 = 1
                                                                return 0
                            else:
                                if not sub_6c54601b:
                                    if ('cd', 100).length < 1:
                                        revert with 0, 17
                                    else:
                                        if ('cd', 100).length - 1 >= ('cd', 100).length:
                                            revert with 0, 50
                                        else:
                                            require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(cd[132])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if address(strategies[address(cd[4])]):
                                                    idx = 0
                                                    s = cd[100] + 36
                                                    t = ceil32(return_data.size) + 292
                                                    while idx < ('cd', 100).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(strategies[address(cd[4])]))
                                                    call address(strategies[address(cd[4])]).0xfde1adda with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(cd[132])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            else:
                                                                if 0 < cd[68]:
                                                                    revert with 0, 'Slippage too low'
                                                                else:
                                                                    stor101 = 1
                                                                    return 0
                                                else:
                                                    idx = 0
                                                    s = cd[100] + 36
                                                    t = ceil32(return_data.size) + 292
                                                    while idx < ('cd', 100).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(defaultStrategyAddress))
                                                    call address(defaultStrategyAddress).0xfde1adda with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(cd[132])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            else:
                                                                if 0 < cd[68]:
                                                                    revert with 0, 'Slippage too low'
                                                                else:
                                                                    stor101 = 1
                                                                    return 0
                                else:
                                    if ('cd', 100).length < 1:
                                        revert with 0, 17
                                    else:
                                        if ('cd', 100).length - 1 >= ('cd', 100).length:
                                            revert with 0, 50
                                        else:
                                            require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
                                            require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                            staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(cd[132])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if address(strategies[address(cd[4])]):
                                                    idx = 0
                                                    s = cd[100] + 36
                                                    t = ceil32(return_data.size) + 292
                                                    while idx < ('cd', 100).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(strategies[address(cd[4])]))
                                                    call address(strategies[address(cd[4])]).0xfde1adda with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(cd[132])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            else:
                                                                if 0 < cd[68]:
                                                                    revert with 0, 'Slippage too low'
                                                                else:
                                                                    stor101 = 1
                                                                    return 0
                                                else:
                                                    idx = 0
                                                    s = cd[100] + 36
                                                    t = ceil32(return_data.size) + 292
                                                    while idx < ('cd', 100).length:
                                                        require cd[s] == address(cd[s])
                                                        mem[t] = address(cd[s])
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(defaultStrategyAddress))
                                                    call address(defaultStrategyAddress).0xfde1adda with:
                                                       value msg.value wei
                                                         gas gas_remaining wei
                                                        args address(cd[4]), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(cd[132]), cd[164]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
                                                        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(cd[132])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                revert with 0, 17
                                                            else:
                                                                if 0 < cd[68]:
                                                                    revert with 0, 'Slippage too low'
                                                                else:
                                                                    stor101 = 1
                                                                    return 0
}



}
