contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct swapInfo;
uint256 SWAPINFOCOUNTER;
address DEVADDRESS;

function SWAPINFOCOUNTER() payable {
    return SWAPINFOCOUNTER
}

function SWAPINFOLIST(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return swapInfo[arg1].field_0, 
           swapInfo[arg1].field_256,
           swapInfo[arg1].field_512,
           swapInfo[arg1].field_768,
           swapInfo[arg1].field_1024,
           swapInfo[arg1].field_1280,
           swapInfo[arg1].field_1536
}

function swapInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return swapInfo[arg1].field_0, 
           swapInfo[arg1].field_256,
           swapInfo[arg1].field_512,
           swapInfo[arg1].field_768,
           swapInfo[arg1].field_1024,
           swapInfo[arg1].field_1280,
           swapInfo[arg1].field_1536
}

function owner() payable {
    return owner
}

function DEVADDRESS() payable {
    return DEVADDRESS
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

function testSwap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if swapInfo[arg1].field_1536 and arg2 > -1 / swapInfo[arg1].field_1536:
        revert with 'NH{q', 17
    return (swapInfo[arg1].field_1536 * arg2 / 10^18)
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

function withdrawRemaining(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if swapInfo[arg1].field_768 >= block.timestamp:
        revert with 0, 'swap must have closed'
    require ext_code.size(swapInfo[arg1].field_256)
    staticcall swapInfo[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(swapInfo[arg1].field_256)
    call swapInfo[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    SWAPINFOCOUNTER++
    swapInfo[stor3].field_0 = arg1
    swapInfo[stor3].field_256 = arg2
    swapInfo[stor3].field_512 = arg3
    swapInfo[stor3].field_768 = arg4
    swapInfo[stor3].field_1024 = arg5
    swapInfo[stor3].field_1280 = arg6
    swapInfo[stor3].field_1536 = arg7
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 <= 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '1 is the minimum that can be swapped'
    if swapInfo[arg1].field_512 >= block.timestamp:
        revert with 0, 'swap must have opened'
    if swapInfo[arg1].field_768 <= block.timestamp:
        revert with 0, 'swap must have not be closed'
    if swapInfo[arg1].field_1536 and arg2 > -1 / swapInfo[arg1].field_1536:
        revert with 'NH{q', 17
    require ext_code.size(swapInfo[arg1].field_0)
    call swapInfo[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, DEVADDRESS, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(swapInfo[arg1].field_256)
    call swapInfo[arg1].field_256.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, swapInfo[arg1].field_1536 * arg2 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Swapped(swapInfo[arg1].field_0, swapInfo[arg1].field_256, arg2, swapInfo[arg1].field_1536 * arg2 / 10^18, msg.sender);
    stor1 = 1
}

function swaps() payable {
    if SWAPINFOCOUNTER > test266151307():
        revert with 'NH{q', 65
    mem[96] = SWAPINFOCOUNTER
    mem[64] = (32 * SWAPINFOCOUNTER) + 128
    if not SWAPINFOCOUNTER:
        if var28002 >= SWAPINFOCOUNTER:
            mem[(32 * SWAPINFOCOUNTER) + 128] = 32
            mem[(32 * SWAPINFOCOUNTER) + 160] = SWAPINFOCOUNTER
            idx = 0
            s = 128
            t = (32 * SWAPINFOCOUNTER) + 192
            while idx < mem[96]:
                _128 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_128 + 44 len 20]
                mem[t + 64] = mem[_128 + 64]
                mem[t + 96] = mem[_128 + 96]
                mem[t + 128] = mem[_128 + 128]
                mem[t + 160] = mem[_128 + 160]
                mem[t + 192] = mem[_128 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len (257 * SWAPINFOCOUNTER) + -mem[64] + 192
        if var40003 > -2:
            revert with 'NH{q', 17
        mem[0] = var42002 + 1
        mem[32] = 2
        mem[64] = (32 * SWAPINFOCOUNTER) + 352
        mem[(32 * SWAPINFOCOUNTER) + 128] = swapInfo[var42002 + 1].field_0
        mem[(32 * SWAPINFOCOUNTER) + 160] = swapInfo[var42002 + 1].field_256
        mem[(32 * SWAPINFOCOUNTER) + 192] = swapInfo[var42002 + 1].field_512
        mem[(32 * SWAPINFOCOUNTER) + 224] = swapInfo[var42002 + 1].field_768
        mem[(32 * SWAPINFOCOUNTER) + 256] = swapInfo[var42002 + 1].field_1024
        mem[(32 * SWAPINFOCOUNTER) + 288] = swapInfo[var42002 + 1].field_1280
        mem[(32 * SWAPINFOCOUNTER) + 320] = swapInfo[var42002 + 1].field_1536
        s = var42002 + 1
        idx = var42007
        while idx < SWAPINFOCOUNTER:
            mem[(32 * idx) + 128] = (32 * SWAPINFOCOUNTER) + 128
            if idx == -1:
                revert with 'NH{q', 17
            if idx + 1 >= SWAPINFOCOUNTER:
                _359 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = SWAPINFOCOUNTER
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < SWAPINFOCOUNTER:
                    _381 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_381 + 44 len 20]
                    mem[u + 64] = mem[_381 + 64]
                    mem[u + 96] = mem[_381 + 96]
                    mem[u + 128] = mem[_381 + 128]
                    mem[u + 160] = mem[_381 + 160]
                    mem[u + 192] = mem[_381 + 192]
                    mem[0] = s
                    mem[32] = 2
                    mem[64] = mem[64] + 224
                    mem[(32 * SWAPINFOCOUNTER) + 128] = swapInfo[s].field_0
                    mem[(32 * SWAPINFOCOUNTER) + 160] = swapInfo[var42002 + 1].field_256
                    mem[(32 * SWAPINFOCOUNTER) + 192] = swapInfo[var42002 + 1].field_512
                    mem[(32 * SWAPINFOCOUNTER) + 224] = swapInfo[var42002 + 1].field_768
                    mem[(32 * SWAPINFOCOUNTER) + 256] = swapInfo[var42002 + 1].field_1024
                    mem[(32 * SWAPINFOCOUNTER) + 288] = swapInfo[var42002 + 1].field_1280
                    mem[(32 * SWAPINFOCOUNTER) + 320] = swapInfo[var42002 + 1].field_1536
                    idx = idx + 1
                    t = t + 32
                    u = u + 224
                    continue 
                return memory
                  from mem[64]
                   len _359 + (224 * SWAPINFOCOUNTER) + -mem[64] + 64
            if idx + 1 > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 3
            mem[32] = 2
            mem[64] = mem[64] + 224
            mem[(32 * SWAPINFOCOUNTER) + 128] = swapInfo[idx + 3].field_0
            mem[(32 * SWAPINFOCOUNTER) + 160] = swapInfo[var42002 + 1].field_256
            mem[(32 * SWAPINFOCOUNTER) + 192] = swapInfo[var42002 + 1].field_512
            mem[(32 * SWAPINFOCOUNTER) + 224] = swapInfo[var42002 + 1].field_768
            mem[(32 * SWAPINFOCOUNTER) + 256] = swapInfo[var42002 + 1].field_1024
            mem[(32 * SWAPINFOCOUNTER) + 288] = swapInfo[var42002 + 1].field_1280
            mem[(32 * SWAPINFOCOUNTER) + 320] = swapInfo[var42002 + 1].field_1536
            s = idx + 2
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * SWAPINFOCOUNTER) + 352
        mem[(32 * SWAPINFOCOUNTER) + 128] = 0
        mem[(32 * SWAPINFOCOUNTER) + 160] = 0
        mem[(32 * SWAPINFOCOUNTER) + 192] = 0
        mem[(32 * SWAPINFOCOUNTER) + 224] = 0
        mem[(32 * SWAPINFOCOUNTER) + 256] = 0
        mem[(32 * SWAPINFOCOUNTER) + 288] = 0
        mem[(32 * SWAPINFOCOUNTER) + 320] = 0
        mem[var10001] = (32 * SWAPINFOCOUNTER) + 128
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(32 * SWAPINFOCOUNTER) + 128] = 0
            mem[(32 * SWAPINFOCOUNTER) + 160] = 0
            mem[(32 * SWAPINFOCOUNTER) + 192] = 0
            mem[(32 * SWAPINFOCOUNTER) + 224] = 0
            mem[(32 * SWAPINFOCOUNTER) + 256] = 0
            mem[(32 * SWAPINFOCOUNTER) + 288] = 0
            mem[(32 * SWAPINFOCOUNTER) + 320] = 0
            mem[s + 32] = (32 * SWAPINFOCOUNTER) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if var35002 >= SWAPINFOCOUNTER:
            _165 = mem[64]
            mem[mem[64]] = 32
            _166 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _166:
                _204 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_204 + 44 len 20]
                mem[t + 64] = mem[_204 + 64]
                mem[t + 96] = mem[_204 + 96]
                mem[t + 128] = mem[_204 + 128]
                mem[t + 160] = mem[_204 + 160]
                mem[t + 192] = mem[_204 + 192]
                idx = idx + 1
                s = s + 32
                t = t + 224
                continue 
            return memory
              from mem[64]
               len _165 + (224 * _166) + -mem[64] + 64
        if var47003 > -2:
            revert with 'NH{q', 17
        mem[0] = var49002 + 1
        mem[32] = 2
        _405 = mem[64]
        mem[64] = mem[64] + 224
        mem[_405] = swapInfo[var49002 + 1].field_0
        mem[_405 + 32] = swapInfo[var49002 + 1].field_256
        mem[_405 + 64] = swapInfo[var49002 + 1].field_512
        mem[_405 + 96] = swapInfo[var49002 + 1].field_768
        mem[_405 + 128] = swapInfo[var49002 + 1].field_1024
        mem[_405 + 160] = swapInfo[var49002 + 1].field_1280
        mem[_405 + 192] = swapInfo[var49002 + 1].field_1536
        _406 = mem[96]
        s = var49002 + 1
        idx = var49007
        while idx < _406:
            mem[(32 * idx) + 128] = _405
            if idx == -1:
                revert with 'NH{q', 17
            if idx + 1 >= SWAPINFOCOUNTER:
                _407 = mem[64]
                mem[mem[64]] = 32
                _408 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _408:
                    _418 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_418 + 44 len 20]
                    mem[u + 64] = mem[_418 + 64]
                    mem[u + 96] = mem[_418 + 96]
                    mem[u + 128] = mem[_418 + 128]
                    mem[u + 160] = mem[_418 + 160]
                    mem[u + 192] = mem[_418 + 192]
                    mem[0] = s
                    mem[32] = 2
                    _405 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_405] = swapInfo[s].field_0
                    mem[_405 + 32] = swapInfo[var49002 + 1].field_256
                    mem[_405 + 64] = swapInfo[var49002 + 1].field_512
                    mem[_405 + 96] = swapInfo[var49002 + 1].field_768
                    mem[_405 + 128] = swapInfo[var49002 + 1].field_1024
                    mem[_405 + 160] = swapInfo[var49002 + 1].field_1280
                    mem[_405 + 192] = swapInfo[var49002 + 1].field_1536
                    idx = idx + 1
                    t = t + 32
                    u = u + 224
                    continue 
                return memory
                  from mem[64]
                   len _407 + (224 * _408) + -mem[64] + 64
            if idx + 1 > -2:
                revert with 'NH{q', 17
            mem[0] = idx + 3
            mem[32] = 2
            _405 = mem[64]
            mem[64] = mem[64] + 224
            mem[_405] = swapInfo[idx + 3].field_0
            mem[_405 + 32] = swapInfo[var49002 + 1].field_256
            mem[_405 + 64] = swapInfo[var49002 + 1].field_512
            mem[_405 + 96] = swapInfo[var49002 + 1].field_768
            mem[_405 + 128] = swapInfo[var49002 + 1].field_1024
            mem[_405 + 160] = swapInfo[var49002 + 1].field_1280
            mem[_405 + 192] = swapInfo[var49002 + 1].field_1536
            s = idx + 2
            idx = idx + 1
            continue 
    revert with 'NH{q', 50
}



}
