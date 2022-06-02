contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint8 stor3;

function owner() {
    return owner
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_5ed9a37f(?) {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor3 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAdmins(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeAdmins(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Caller not owner or admin'
    if stor1[address(msg.sender)]:
        if arg2 >= 20 * 10^18:
            revert with 0, 'Exceed max withdraw amount'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_4d659348(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg3.length - arg2.length != 1:
        revert with 0, 'Invalid token - pair length'
    require arg3.length - 1 < arg3.length
    require 0 < arg3.length
    if mem[(32 * arg2.length) + 172 len 20] != mem[(32 * arg3.length - 1) + (32 * arg2.length) + 172 len 20]:
        revert with 0, 'Invalid path'
    idx = 0
    s = arg1
    while idx < arg2.length:
        if idx == arg2.length - 1:
            if idx < arg3.length:
                _1495 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx + 1 < arg3.length:
                    _1502 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                    if idx < arg2.length:
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_1495) == address(_1495):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * ext_call.return_data[18 len 14]):
                                    idx = idx + 1
                                    s = 997 * s * ext_call.return_data[50 len 14] / (997 * s) + (1000 * ext_call.return_data[18 len 14])
                                    continue 
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * ext_call.return_data[50 len 14]):
                                    idx = idx + 1
                                    s = 997 * s * ext_call.return_data[18 len 14] / (997 * s) + (1000 * ext_call.return_data[50 len 14])
                                    continue 
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_1502) == address(_1495):
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * ext_call.return_data[18 len 14]):
                                    idx = idx + 1
                                    s = 997 * s * ext_call.return_data[50 len 14] / (997 * s) + (1000 * ext_call.return_data[18 len 14])
                                    continue 
                            else:
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * ext_call.return_data[50 len 14]):
                                    idx = idx + 1
                                    s = 997 * s * ext_call.return_data[18 len 14] / (997 * s) + (1000 * ext_call.return_data[50 len 14])
                                    continue 
        else:
            if idx + 1 < arg2.length:
                if idx < arg3.length:
                    _1504 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if idx + 1 < arg3.length:
                        _1514 = mem[(32 * idx + 1) + (32 * arg2.length) + 160]
                        if idx < arg2.length:
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_1504) == address(_1504):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * ext_call.return_data[18 len 14]):
                                        idx = idx + 1
                                        s = 997 * s * ext_call.return_data[50 len 14] / (997 * s) + (1000 * ext_call.return_data[18 len 14])
                                        continue 
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * ext_call.return_data[50 len 14]):
                                        idx = idx + 1
                                        s = 997 * s * ext_call.return_data[18 len 14] / (997 * s) + (1000 * ext_call.return_data[50 len 14])
                                        continue 
                            else:
                                if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_1514) == address(_1504):
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * ext_call.return_data[18 len 14]):
                                        idx = idx + 1
                                        s = 997 * s * ext_call.return_data[50 len 14] / (997 * s) + (1000 * ext_call.return_data[18 len 14])
                                        continue 
                                else:
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * ext_call.return_data[50 len 14]):
                                        idx = idx + 1
                                        s = 997 * s * ext_call.return_data[18 len 14] / (997 * s) + (1000 * ext_call.return_data[50 len 14])
                                        continue 
        revert
    if stor3:
        require 0 < arg3.length
        _1491 = mem[(32 * arg2.length) + 160]
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = mem[140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = arg1
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 68
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * arg2.length) + (32 * arg3.length) + 260 len 64] = 0, mem[140 len 20], Mask(224, 32, arg1) >> 32
        mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4] = uint32(arg1)
        call address(_1491).mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[(32 * arg2.length) + (32 * arg3.length) + 324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg2.length:
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4431 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4431))
                                        call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4431))
                                    call address(_4431).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    else:
                        require idx + 1 < arg2.length
                        _4328 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4455 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4455))
                                        call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4328)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4455))
                                    call address(_4455).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4328), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4434 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4434))
                                        call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4434))
                                    call address(_4434).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    else:
                        require idx + 1 < arg2.length
                        _4330 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4456 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4456))
                                        call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4330)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4456))
                                    call address(_4456).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4330), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = return_data.size
            mem[(32 * arg2.length) + (32 * arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4437 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4437))
                                        call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4437))
                                    call address(_4437).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    else:
                        require idx + 1 < arg2.length
                        _4332 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4457 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4457))
                                        call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4332)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4457))
                                    call address(_4457).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4332), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * arg2.length) + (32 * arg3.length) + 292]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4440 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4440))
                                        call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4440))
                                    call address(_4440).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    else:
                        require idx + 1 < arg2.length
                        _4334 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4458 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4458))
                                        call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4334)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4458))
                                    call address(_4458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4334), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
    else:
        if s <= arg1:
            revert with 0, 'Revert'
        if s <= arg1 + arg4:
            revert with 0, 'Revert'
        require 0 < arg3.length
        _1511 = mem[(32 * arg2.length) + 160]
        require 0 < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = mem[140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = arg1
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 68
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[(32 * arg2.length) + (32 * arg3.length) + 260 len 64] = 0, mem[140 len 20], Mask(224, 32, arg1) >> 32
        mem[(32 * arg2.length) + (32 * arg3.length) + 352 len 4] = uint32(arg1)
        call address(_1511).mem[(32 * arg2.length) + (32 * arg3.length) + 224 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[(32 * arg2.length) + (32 * arg3.length) + 324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not arg2.length:
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4443 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4443))
                                        call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4443))
                                    call address(_4443).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    else:
                        require idx + 1 < arg2.length
                        _4336 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4459 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4459))
                                        call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4336)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4459))
                                    call address(_4459).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4336), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4446 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4446))
                                        call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4446))
                                    call address(_4446).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    else:
                        require idx + 1 < arg2.length
                        _4338 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4460 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                        require ext_code.size(address(_4460))
                                        call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + 264] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 296] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 328] = address(_4338)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 360] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + 392] = 0
                                    require ext_code.size(address(_4460))
                                    call address(_4460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4338), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + 424]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 260] = return_data.size
            mem[(32 * arg2.length) + (32 * arg3.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4449 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4449))
                                        call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4449))
                                    call address(_4449).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    else:
                        require idx + 1 < arg2.length
                        _4340 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4461 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4461))
                                        call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4340)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4461))
                                    call address(_4461).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4340), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require return_data.size >= 32
                if not mem[(32 * arg2.length) + (32 * arg3.length) + 292]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = 0
                s = arg1
                while idx < arg2.length:
                    if idx == arg2.length - 1:
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4452 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4452))
                                        call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = this.address
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4452))
                                    call address(_4452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    else:
                        require idx + 1 < arg2.length
                        _4342 = mem[(32 * idx + 1) + 128]
                        require idx < arg3.length
                        require idx + 1 < arg3.length
                        require idx < arg2.length
                        _4462 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] < mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            if not mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                        else:
                            if not mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'ZERO_ADDRESS'
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                    else:
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                        require ext_code.size(address(_4462))
                                        call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                continue 
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                            mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 261] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 0
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                            else:
                                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 265] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx) + (32 * arg2.length) + 172 len 20]:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 0
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                                else:
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 297] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 329] = address(_4342)
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 361] = 128
                                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 393] = 0
                                    require ext_code.size(address(_4462))
                                    call address(_4462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_4342), 128, 0, mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 425]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
    if not stor3:
        if s <= arg1:
            revert with 0, 'Revert after'
        if s < arg1 + arg4:
            revert with 0, 'Revert after'
}



}
