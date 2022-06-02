contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint8 stor3;
mapping of struct sub_84dc97dc;

function sub_84dc97dc(?) {
    require calldata.size - 4 >= 32
    return sub_84dc97dc[arg1].field_0, sub_84dc97dc[arg1].field_256
}

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
    mem[196 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not transfer(address arg1, uint256 arg2), Mask(224, 32, msg.sender) >> 32:
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
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    mem[0] = msg.sender
    mem[32] = 1
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
        if idx == mem[96] - 1:
            if idx < mem[(32 * arg2.length) + 128]:
                _2087 = mem[(32 * idx) + (32 * arg2.length) + 160]
                if idx + 1 < mem[(32 * arg2.length) + 128]:
                    if idx < mem[96]:
                        _2105 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _2122 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2122] = 0
                        mem[_2122 + 32] = 0
                        mem[0] = address(_2105)
                        mem[32] = 4
                        _2130 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2130] = sub_84dc97dc[address(_2105)].field_0
                        mem[_2130 + 32] = sub_84dc97dc[address(_2105)].field_256
                        require ext_code.size(address(_2105))
                        if not sub_84dc97dc[address(_2105)].field_0:
                            staticcall address(_2105).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_2105))
                            staticcall address(_2105).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _2217 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2217] = address(ext_call.return_data[0])
                            mem[_2217 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_2105)
                            mem[32] = 4
                            sub_84dc97dc[address(_2105)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_2105)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_2105))
                            staticcall address(_2105).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_2087) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                    idx = idx + 1
                                    s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    continue 
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                    idx = idx + 1
                                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    continue 
                        else:
                            if sub_84dc97dc[address(_2105)].field_256:
                                staticcall address(_2105).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_2087) == sub_84dc97dc[address(_2105)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        continue 
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        continue 
                            else:
                                staticcall address(_2105).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_2105))
                                staticcall address(_2105).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _2242 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2242] = address(ext_call.return_data[0])
                                mem[_2242 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_2105)
                                mem[32] = 4
                                sub_84dc97dc[address(_2105)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_2105)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_2105))
                                staticcall address(_2105).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_2087) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        continue 
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        continue 
        else:
            if idx + 1 < mem[96]:
                if idx < mem[(32 * arg2.length) + 128]:
                    _2096 = mem[(32 * idx) + (32 * arg2.length) + 160]
                    if idx + 1 < mem[(32 * arg2.length) + 128]:
                        if idx < mem[96]:
                            _2109 = mem[(32 * idx) + 128]
                            if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                                revert with 0, 'Invalid token pair'
                            _2131 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2131] = 0
                            mem[_2131 + 32] = 0
                            mem[0] = address(_2109)
                            mem[32] = 4
                            _2136 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2136] = sub_84dc97dc[address(_2109)].field_0
                            mem[_2136 + 32] = sub_84dc97dc[address(_2109)].field_256
                            require ext_code.size(address(_2109))
                            if not sub_84dc97dc[address(_2109)].field_0:
                                staticcall address(_2109).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_2109))
                                staticcall address(_2109).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _2247 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2247] = address(ext_call.return_data[0])
                                mem[_2247 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_2109)
                                mem[32] = 4
                                sub_84dc97dc[address(_2109)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_2109)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_2109))
                                staticcall address(_2109).getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_2096) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        continue 
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        idx = idx + 1
                                        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                        continue 
                            else:
                                if sub_84dc97dc[address(_2109)].field_256:
                                    staticcall address(_2109).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if s <= 0:
                                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                    if address(_2096) == sub_84dc97dc[address(_2109)].field_0:
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                            idx = idx + 1
                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            continue 
                                    else:
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            idx = idx + 1
                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            continue 
                                else:
                                    staticcall address(_2109).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(_2109))
                                    staticcall address(_2109).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _2283 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2283] = address(ext_call.return_data[0])
                                    mem[_2283 + 32] = address(ext_call.return_data[0])
                                    mem[0] = address(_2109)
                                    mem[32] = 4
                                    sub_84dc97dc[address(_2109)].field_0 = address(ext_call.return_data[0])
                                    sub_84dc97dc[address(_2109)].field_256 = address(ext_call.return_data[0])
                                    require ext_code.size(address(_2109))
                                    staticcall address(_2109).getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    if s <= 0:
                                        revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                    if address(_2096) == address(ext_call.return_data[0]):
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])):
                                            idx = idx + 1
                                            s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                            continue 
                                    else:
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                        if (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            idx = idx + 1
                                            s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                            continue 
        revert
    if stor3:
        require 0 < mem[(32 * arg2.length) + 128]
        _2083 = mem[(32 * arg2.length) + 160]
        require 0 < mem[96]
        _2098 = mem[64]
        mem[mem[64] + 36] = mem[140 len 20]
        mem[mem[64] + 68] = arg1
        _2099 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2099 + 32 len 4] = transfer(address arg1, uint256 arg2)
        _2102 = mem[_2099]
        mem[_2098 + 100 len floor32(mem[_2099])] = mem[_2099 + 32 len floor32(mem[_2099])]
        mem[_2098 + floor32(mem[_2099]) + -(mem[_2099] % 32) + 132 len mem[_2099] % 32] = mem[_2099 + -(mem[_2099] % 32) + floor32(mem[_2099]) + 64 len mem[_2099] % 32]
        call address(_2083).mem[_2098 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_2098 + 104 len _2102 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not mem[96]:
                _5999 = mem[96]
                idx = 0
                s = arg1
                while idx < _5999:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6041 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6127 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6175] = 0
                        mem[_6175 + 32] = 0
                        mem[0] = address(_6127)
                        mem[32] = 4
                        _6200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6200] = sub_84dc97dc[address(_6127)].field_0
                        mem[_6200 + 32] = sub_84dc97dc[address(_6127)].field_256
                        require ext_code.size(address(_6127))
                        if not sub_84dc97dc[address(_6127)].field_0:
                            staticcall address(_6127).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6127))
                            staticcall address(_6127).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6520 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6520] = address(ext_call.return_data[0])
                            mem[_6520 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6127)
                            mem[32] = 4
                            sub_84dc97dc[address(_6127)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6127)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6127))
                            staticcall address(_6127).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6041) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6041) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6041) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6127))
                                call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6127))
                                call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6127)].field_256:
                                staticcall address(_6127).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6041) == sub_84dc97dc[address(_6127)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6041) == sub_84dc97dc[address(_6127)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6127))
                                        call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6127))
                                        call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6041) == sub_84dc97dc[address(_6127)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6127).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6127))
                                staticcall address(_6127).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6578 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6578] = address(ext_call.return_data[0])
                                mem[_6578 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6127)
                                mem[32] = 4
                                sub_84dc97dc[address(_6127)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6127)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6127))
                                staticcall address(_6127).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6041) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6041) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6127))
                                        call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6127))
                                        call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6041) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6127))
                                    call address(_6127).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6024 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6083 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6151 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6201] = 0
                        mem[_6201 + 32] = 0
                        mem[0] = address(_6151)
                        mem[32] = 4
                        _6224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6224] = sub_84dc97dc[address(_6151)].field_0
                        mem[_6224 + 32] = sub_84dc97dc[address(_6151)].field_256
                        require ext_code.size(address(_6151))
                        if not sub_84dc97dc[address(_6151)].field_0:
                            staticcall address(_6151).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6151))
                            staticcall address(_6151).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6583 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6583] = address(ext_call.return_data[0])
                            mem[_6583 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6151)
                            mem[32] = 4
                            sub_84dc97dc[address(_6151)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6151)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6151))
                            staticcall address(_6151).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6083) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6083) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6024), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6083) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6024)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6151))
                                call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6024), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6024)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6151))
                                call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6151)].field_256:
                                staticcall address(_6151).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6083) == sub_84dc97dc[address(_6151)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6083) == sub_84dc97dc[address(_6151)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6024)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6151))
                                        call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6024), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6024)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6151))
                                        call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6083) == sub_84dc97dc[address(_6151)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6024), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6151).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6151))
                                staticcall address(_6151).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6688 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6688] = address(ext_call.return_data[0])
                                mem[_6688 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6151)
                                mem[32] = 4
                                sub_84dc97dc[address(_6151)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6151)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6151))
                                staticcall address(_6151).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6083) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6083) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6024)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6151))
                                        call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6024), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6024)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6151))
                                        call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6083) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6024), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6024)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6151))
                                    call address(_6151).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6024), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                _6000 = mem[96]
                idx = 0
                s = arg1
                while idx < _6000:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6046 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6130 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6178] = 0
                        mem[_6178 + 32] = 0
                        mem[0] = address(_6130)
                        mem[32] = 4
                        _6203 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6203] = sub_84dc97dc[address(_6130)].field_0
                        mem[_6203 + 32] = sub_84dc97dc[address(_6130)].field_256
                        require ext_code.size(address(_6130))
                        if not sub_84dc97dc[address(_6130)].field_0:
                            staticcall address(_6130).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6130))
                            staticcall address(_6130).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6527 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6527] = address(ext_call.return_data[0])
                            mem[_6527 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6130)
                            mem[32] = 4
                            sub_84dc97dc[address(_6130)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6130)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6130))
                            staticcall address(_6130).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6046) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6046) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6046) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6130))
                                call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6130))
                                call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6130)].field_256:
                                staticcall address(_6130).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6046) == sub_84dc97dc[address(_6130)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6046) == sub_84dc97dc[address(_6130)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6130))
                                        call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6130))
                                        call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6046) == sub_84dc97dc[address(_6130)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6130).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6130))
                                staticcall address(_6130).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6591 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6591] = address(ext_call.return_data[0])
                                mem[_6591 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6130)
                                mem[32] = 4
                                sub_84dc97dc[address(_6130)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6130)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6130))
                                staticcall address(_6130).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6046) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6046) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6130))
                                        call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6130))
                                        call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6046) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6130))
                                    call address(_6130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6026 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6089 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6152 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6204] = 0
                        mem[_6204 + 32] = 0
                        mem[0] = address(_6152)
                        mem[32] = 4
                        _6226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6226] = sub_84dc97dc[address(_6152)].field_0
                        mem[_6226 + 32] = sub_84dc97dc[address(_6152)].field_256
                        require ext_code.size(address(_6152))
                        if not sub_84dc97dc[address(_6152)].field_0:
                            staticcall address(_6152).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6152))
                            staticcall address(_6152).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6596 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6596] = address(ext_call.return_data[0])
                            mem[_6596 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6152)
                            mem[32] = 4
                            sub_84dc97dc[address(_6152)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6152)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6152))
                            staticcall address(_6152).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6089) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6089) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6026), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6089) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6026)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6152))
                                call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6026), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6026)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6152))
                                call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6152)].field_256:
                                staticcall address(_6152).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6089) == sub_84dc97dc[address(_6152)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6089) == sub_84dc97dc[address(_6152)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6026)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6152))
                                        call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6026), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6026)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6152))
                                        call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6089) == sub_84dc97dc[address(_6152)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6026), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6152).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6152))
                                staticcall address(_6152).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6701] = address(ext_call.return_data[0])
                                mem[_6701 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6152)
                                mem[32] = 4
                                sub_84dc97dc[address(_6152)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6152)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6152))
                                staticcall address(_6152).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6089) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6089) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6026)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6152))
                                        call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6026), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6026)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6152))
                                        call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6089) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6026), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6026)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6152))
                                    call address(_6152).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6026), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
        else:
            mem[64] = _2098 + ceil32(return_data.size) + 101
            mem[_2098 + 100] = return_data.size
            mem[_2098 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                _6001 = mem[96]
                idx = 0
                s = arg1
                while idx < _6001:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6051 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6133 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6181] = 0
                        mem[_6181 + 32] = 0
                        mem[0] = address(_6133)
                        mem[32] = 4
                        _6206 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6206] = sub_84dc97dc[address(_6133)].field_0
                        mem[_6206 + 32] = sub_84dc97dc[address(_6133)].field_256
                        require ext_code.size(address(_6133))
                        if not sub_84dc97dc[address(_6133)].field_0:
                            staticcall address(_6133).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6133))
                            staticcall address(_6133).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6534] = address(ext_call.return_data[0])
                            mem[_6534 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6133)
                            mem[32] = 4
                            sub_84dc97dc[address(_6133)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6133)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6133))
                            staticcall address(_6133).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6051) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6051) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6051) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6133))
                                call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6133))
                                call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6133)].field_256:
                                staticcall address(_6133).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6051) == sub_84dc97dc[address(_6133)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6051) == sub_84dc97dc[address(_6133)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6133))
                                        call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6133))
                                        call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6051) == sub_84dc97dc[address(_6133)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6133).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6133))
                                staticcall address(_6133).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6604 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6604] = address(ext_call.return_data[0])
                                mem[_6604 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6133)
                                mem[32] = 4
                                sub_84dc97dc[address(_6133)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6133)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6133))
                                staticcall address(_6133).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6051) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6051) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6133))
                                        call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6133))
                                        call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6051) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6133))
                                    call address(_6133).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6028 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6095 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6153 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6207] = 0
                        mem[_6207 + 32] = 0
                        mem[0] = address(_6153)
                        mem[32] = 4
                        _6228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6228] = sub_84dc97dc[address(_6153)].field_0
                        mem[_6228 + 32] = sub_84dc97dc[address(_6153)].field_256
                        require ext_code.size(address(_6153))
                        if not sub_84dc97dc[address(_6153)].field_0:
                            staticcall address(_6153).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6153))
                            staticcall address(_6153).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6609 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6609] = address(ext_call.return_data[0])
                            mem[_6609 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6153)
                            mem[32] = 4
                            sub_84dc97dc[address(_6153)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6153)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6153))
                            staticcall address(_6153).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6095) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6095) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6028), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6095) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6028)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6153))
                                call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6028), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6028)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6153))
                                call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6153)].field_256:
                                staticcall address(_6153).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6095) == sub_84dc97dc[address(_6153)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6095) == sub_84dc97dc[address(_6153)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6028)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6153))
                                        call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6028), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6028)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6153))
                                        call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6095) == sub_84dc97dc[address(_6153)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6028), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6153).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6153))
                                staticcall address(_6153).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6714 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6714] = address(ext_call.return_data[0])
                                mem[_6714 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6153)
                                mem[32] = 4
                                sub_84dc97dc[address(_6153)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6153)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6153))
                                staticcall address(_6153).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6095) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6095) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6028)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6153))
                                        call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6028), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6028)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6153))
                                        call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6095) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6028), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6028)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6153))
                                    call address(_6153).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6028), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_2098 + 132]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                _6002 = mem[96]
                idx = 0
                s = arg1
                while idx < _6002:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6056 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6136 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6184 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6184] = 0
                        mem[_6184 + 32] = 0
                        mem[0] = address(_6136)
                        mem[32] = 4
                        _6209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6209] = sub_84dc97dc[address(_6136)].field_0
                        mem[_6209 + 32] = sub_84dc97dc[address(_6136)].field_256
                        require ext_code.size(address(_6136))
                        if not sub_84dc97dc[address(_6136)].field_0:
                            staticcall address(_6136).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6136))
                            staticcall address(_6136).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6541 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6541] = address(ext_call.return_data[0])
                            mem[_6541 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6136)
                            mem[32] = 4
                            sub_84dc97dc[address(_6136)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6136)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6136))
                            staticcall address(_6136).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6056) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6056) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6056) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6136))
                                call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6136))
                                call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6136)].field_256:
                                staticcall address(_6136).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6056) == sub_84dc97dc[address(_6136)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6056) == sub_84dc97dc[address(_6136)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6136))
                                        call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6136))
                                        call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6056) == sub_84dc97dc[address(_6136)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6136).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6136))
                                staticcall address(_6136).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6617 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6617] = address(ext_call.return_data[0])
                                mem[_6617 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6136)
                                mem[32] = 4
                                sub_84dc97dc[address(_6136)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6136)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6136))
                                staticcall address(_6136).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6056) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6056) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6136))
                                        call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6136))
                                        call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6056) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6136))
                                    call address(_6136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6030 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6101 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6154 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6210] = 0
                        mem[_6210 + 32] = 0
                        mem[0] = address(_6154)
                        mem[32] = 4
                        _6230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6230] = sub_84dc97dc[address(_6154)].field_0
                        mem[_6230 + 32] = sub_84dc97dc[address(_6154)].field_256
                        require ext_code.size(address(_6154))
                        if not sub_84dc97dc[address(_6154)].field_0:
                            staticcall address(_6154).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6154))
                            staticcall address(_6154).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6622] = address(ext_call.return_data[0])
                            mem[_6622 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6154)
                            mem[32] = 4
                            sub_84dc97dc[address(_6154)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6154)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6154))
                            staticcall address(_6154).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6101) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6101) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6030), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6101) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6030)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6154))
                                call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6030), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6030)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6154))
                                call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6154)].field_256:
                                staticcall address(_6154).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6101) == sub_84dc97dc[address(_6154)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6101) == sub_84dc97dc[address(_6154)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6030)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6154))
                                        call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6030), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6030)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6154))
                                        call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6101) == sub_84dc97dc[address(_6154)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6030), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6154).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6154))
                                staticcall address(_6154).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6727 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6727] = address(ext_call.return_data[0])
                                mem[_6727 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6154)
                                mem[32] = 4
                                sub_84dc97dc[address(_6154)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6154)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6154))
                                staticcall address(_6154).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6101) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6101) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6030)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6154))
                                        call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6030), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6030)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6154))
                                        call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6101) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6030), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6030)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6154))
                                    call address(_6154).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6030), 128, 0, mem[mem[64] + 164]
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
        require 0 < mem[(32 * arg2.length) + 128]
        _2103 = mem[(32 * arg2.length) + 160]
        require 0 < mem[96]
        _2114 = mem[64]
        mem[mem[64] + 36] = mem[140 len 20]
        mem[mem[64] + 68] = arg1
        _2115 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2115 + 32 len 4] = transfer(address arg1, uint256 arg2)
        _2118 = mem[_2115]
        mem[_2114 + 100 len floor32(mem[_2115])] = mem[_2115 + 32 len floor32(mem[_2115])]
        mem[_2114 + floor32(mem[_2115]) + -(mem[_2115] % 32) + 132 len mem[_2115] % 32] = mem[_2115 + -(mem[_2115] % 32) + floor32(mem[_2115]) + 64 len mem[_2115] % 32]
        call address(_2103).mem[_2114 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_2114 + 104 len _2118 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not mem[96]:
                _6003 = mem[96]
                idx = 0
                s = arg1
                while idx < _6003:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6061 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6139 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6187] = 0
                        mem[_6187 + 32] = 0
                        mem[0] = address(_6139)
                        mem[32] = 4
                        _6212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6212] = sub_84dc97dc[address(_6139)].field_0
                        mem[_6212 + 32] = sub_84dc97dc[address(_6139)].field_256
                        require ext_code.size(address(_6139))
                        if not sub_84dc97dc[address(_6139)].field_0:
                            staticcall address(_6139).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6139))
                            staticcall address(_6139).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6548 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6548] = address(ext_call.return_data[0])
                            mem[_6548 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6139)
                            mem[32] = 4
                            sub_84dc97dc[address(_6139)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6139)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6139))
                            staticcall address(_6139).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6061) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6061) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6061) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6139))
                                call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6139))
                                call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6139)].field_256:
                                staticcall address(_6139).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6061) == sub_84dc97dc[address(_6139)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6061) == sub_84dc97dc[address(_6139)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6139))
                                        call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6139))
                                        call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6061) == sub_84dc97dc[address(_6139)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6139).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6139))
                                staticcall address(_6139).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6630 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6630] = address(ext_call.return_data[0])
                                mem[_6630 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6139)
                                mem[32] = 4
                                sub_84dc97dc[address(_6139)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6139)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6139))
                                staticcall address(_6139).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6061) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6061) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6139))
                                        call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6139))
                                        call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6061) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6139))
                                    call address(_6139).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6032 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6107 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6155 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6213 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6213] = 0
                        mem[_6213 + 32] = 0
                        mem[0] = address(_6155)
                        mem[32] = 4
                        _6232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6232] = sub_84dc97dc[address(_6155)].field_0
                        mem[_6232 + 32] = sub_84dc97dc[address(_6155)].field_256
                        require ext_code.size(address(_6155))
                        if not sub_84dc97dc[address(_6155)].field_0:
                            staticcall address(_6155).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6155))
                            staticcall address(_6155).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6635 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6635] = address(ext_call.return_data[0])
                            mem[_6635 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6155)
                            mem[32] = 4
                            sub_84dc97dc[address(_6155)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6155)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6155))
                            staticcall address(_6155).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6107) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6107) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6032), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6107) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6032)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6155))
                                call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6032), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6032)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6155))
                                call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6155)].field_256:
                                staticcall address(_6155).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6107) == sub_84dc97dc[address(_6155)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6107) == sub_84dc97dc[address(_6155)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6032)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6155))
                                        call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6032), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6032)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6155))
                                        call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6107) == sub_84dc97dc[address(_6155)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6032), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6155).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6155))
                                staticcall address(_6155).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6740 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6740] = address(ext_call.return_data[0])
                                mem[_6740 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6155)
                                mem[32] = 4
                                sub_84dc97dc[address(_6155)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6155)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6155))
                                staticcall address(_6155).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6107) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6107) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6032)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6155))
                                        call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6032), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6032)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6155))
                                        call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6107) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6032), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6032)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6155))
                                    call address(_6155).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6032), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                _6004 = mem[96]
                idx = 0
                s = arg1
                while idx < _6004:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6066 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6142 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6190] = 0
                        mem[_6190 + 32] = 0
                        mem[0] = address(_6142)
                        mem[32] = 4
                        _6215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6215] = sub_84dc97dc[address(_6142)].field_0
                        mem[_6215 + 32] = sub_84dc97dc[address(_6142)].field_256
                        require ext_code.size(address(_6142))
                        if not sub_84dc97dc[address(_6142)].field_0:
                            staticcall address(_6142).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6142))
                            staticcall address(_6142).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6555 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6555] = address(ext_call.return_data[0])
                            mem[_6555 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6142)
                            mem[32] = 4
                            sub_84dc97dc[address(_6142)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6142)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6142))
                            staticcall address(_6142).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6066) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6066) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6066) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6142))
                                call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6142))
                                call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6142)].field_256:
                                staticcall address(_6142).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6066) == sub_84dc97dc[address(_6142)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6066) == sub_84dc97dc[address(_6142)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6142))
                                        call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6142))
                                        call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6066) == sub_84dc97dc[address(_6142)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6142).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6142))
                                staticcall address(_6142).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6643 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6643] = address(ext_call.return_data[0])
                                mem[_6643 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6142)
                                mem[32] = 4
                                sub_84dc97dc[address(_6142)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6142)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6142))
                                staticcall address(_6142).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6066) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6066) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6142))
                                        call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6142))
                                        call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6066) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6142))
                                    call address(_6142).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6034 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6113 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6156 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6216] = 0
                        mem[_6216 + 32] = 0
                        mem[0] = address(_6156)
                        mem[32] = 4
                        _6234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6234] = sub_84dc97dc[address(_6156)].field_0
                        mem[_6234 + 32] = sub_84dc97dc[address(_6156)].field_256
                        require ext_code.size(address(_6156))
                        if not sub_84dc97dc[address(_6156)].field_0:
                            staticcall address(_6156).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6156))
                            staticcall address(_6156).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6648 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6648] = address(ext_call.return_data[0])
                            mem[_6648 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6156)
                            mem[32] = 4
                            sub_84dc97dc[address(_6156)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6156)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6156))
                            staticcall address(_6156).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6113) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6113) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6034), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6113) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6034)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6156))
                                call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6034), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6034)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6156))
                                call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6156)].field_256:
                                staticcall address(_6156).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6113) == sub_84dc97dc[address(_6156)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6113) == sub_84dc97dc[address(_6156)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6034)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6156))
                                        call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6034), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6034)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6156))
                                        call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6113) == sub_84dc97dc[address(_6156)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6034), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6156).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6156))
                                staticcall address(_6156).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6753 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6753] = address(ext_call.return_data[0])
                                mem[_6753 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6156)
                                mem[32] = 4
                                sub_84dc97dc[address(_6156)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6156)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6156))
                                staticcall address(_6156).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6113) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6113) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6034)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6156))
                                        call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6034), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6034)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6156))
                                        call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6113) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6034), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6034)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6156))
                                    call address(_6156).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6034), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
        else:
            mem[64] = _2114 + ceil32(return_data.size) + 101
            mem[_2114 + 100] = return_data.size
            mem[_2114 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not return_data.size:
                _6005 = mem[96]
                idx = 0
                s = arg1
                while idx < _6005:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6071 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6145 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6193] = 0
                        mem[_6193 + 32] = 0
                        mem[0] = address(_6145)
                        mem[32] = 4
                        _6218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6218] = sub_84dc97dc[address(_6145)].field_0
                        mem[_6218 + 32] = sub_84dc97dc[address(_6145)].field_256
                        require ext_code.size(address(_6145))
                        if not sub_84dc97dc[address(_6145)].field_0:
                            staticcall address(_6145).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6145))
                            staticcall address(_6145).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6562 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6562] = address(ext_call.return_data[0])
                            mem[_6562 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6145)
                            mem[32] = 4
                            sub_84dc97dc[address(_6145)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6145)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6145))
                            staticcall address(_6145).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6071) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6071) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6071) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6145))
                                call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6145))
                                call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6145)].field_256:
                                staticcall address(_6145).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6071) == sub_84dc97dc[address(_6145)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6071) == sub_84dc97dc[address(_6145)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6145))
                                        call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6145))
                                        call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6071) == sub_84dc97dc[address(_6145)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6145).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6145))
                                staticcall address(_6145).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6656 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6656] = address(ext_call.return_data[0])
                                mem[_6656 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6145)
                                mem[32] = 4
                                sub_84dc97dc[address(_6145)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6145)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6145))
                                staticcall address(_6145).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6071) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6071) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6145))
                                        call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6145))
                                        call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6071) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6145))
                                    call address(_6145).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6036 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6119 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6157 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6219] = 0
                        mem[_6219 + 32] = 0
                        mem[0] = address(_6157)
                        mem[32] = 4
                        _6236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6236] = sub_84dc97dc[address(_6157)].field_0
                        mem[_6236 + 32] = sub_84dc97dc[address(_6157)].field_256
                        require ext_code.size(address(_6157))
                        if not sub_84dc97dc[address(_6157)].field_0:
                            staticcall address(_6157).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6157))
                            staticcall address(_6157).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6661 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6661] = address(ext_call.return_data[0])
                            mem[_6661 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6157)
                            mem[32] = 4
                            sub_84dc97dc[address(_6157)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6157)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6157))
                            staticcall address(_6157).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6119) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6119) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6036), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6119) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6036)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6157))
                                call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6036), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6036)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6157))
                                call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6157)].field_256:
                                staticcall address(_6157).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6119) == sub_84dc97dc[address(_6157)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6119) == sub_84dc97dc[address(_6157)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6036)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6157))
                                        call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6036), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6036)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6157))
                                        call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6119) == sub_84dc97dc[address(_6157)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6036), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6157).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6157))
                                staticcall address(_6157).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6766 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6766] = address(ext_call.return_data[0])
                                mem[_6766 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6157)
                                mem[32] = 4
                                sub_84dc97dc[address(_6157)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6157)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6157))
                                staticcall address(_6157).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6119) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6119) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6036)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6157))
                                        call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6036), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6036)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6157))
                                        call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6119) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6036), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6036)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6157))
                                    call address(_6157).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6036), 128, 0, mem[mem[64] + 164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                    continue 
            else:
                require return_data.size >= 32
                if not mem[_2114 + 132]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                _6006 = mem[96]
                idx = 0
                s = arg1
                while idx < _6006:
                    if idx == mem[96] - 1:
                        require idx < mem[(32 * arg2.length) + 128]
                        _6076 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6148 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6196] = 0
                        mem[_6196 + 32] = 0
                        mem[0] = address(_6148)
                        mem[32] = 4
                        _6221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6221] = sub_84dc97dc[address(_6148)].field_0
                        mem[_6221 + 32] = sub_84dc97dc[address(_6148)].field_256
                        require ext_code.size(address(_6148))
                        if not sub_84dc97dc[address(_6148)].field_0:
                            staticcall address(_6148).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6148))
                            staticcall address(_6148).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6569 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6569] = address(ext_call.return_data[0])
                            mem[_6569 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6148)
                            mem[32] = 4
                            sub_84dc97dc[address(_6148)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6148)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6148))
                            staticcall address(_6148).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6076) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6076) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6076) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6148))
                                call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6148))
                                call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6148)].field_256:
                                staticcall address(_6148).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6076) == sub_84dc97dc[address(_6148)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6076) == sub_84dc97dc[address(_6148)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6148))
                                        call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6148))
                                        call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6076) == sub_84dc97dc[address(_6148)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6148).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6148))
                                staticcall address(_6148).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6669 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6669] = address(ext_call.return_data[0])
                                mem[_6669 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6148)
                                mem[32] = 4
                                sub_84dc97dc[address(_6148)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6148)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6148))
                                staticcall address(_6148).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6076) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6076) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6148))
                                        call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(this.address), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = this.address
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6148))
                                        call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6076) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = this.address
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6148))
                                    call address(_6148).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0, mem[mem[64] + 164]
                    else:
                        require idx + 1 < mem[96]
                        _6038 = mem[(32 * idx + 1) + 128]
                        require idx < mem[(32 * arg2.length) + 128]
                        _6125 = mem[(32 * idx) + (32 * arg2.length) + 160]
                        require idx + 1 < mem[(32 * arg2.length) + 128]
                        require idx < mem[96]
                        _6158 = mem[(32 * idx) + 128]
                        if mem[(32 * idx) + (32 * arg2.length) + 172 len 20] == mem[(32 * idx + 1) + (32 * arg2.length) + 172 len 20]:
                            revert with 0, 'Invalid token pair'
                        _6222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6222] = 0
                        mem[_6222 + 32] = 0
                        mem[0] = address(_6158)
                        mem[32] = 4
                        _6238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6238] = sub_84dc97dc[address(_6158)].field_0
                        mem[_6238 + 32] = sub_84dc97dc[address(_6158)].field_256
                        require ext_code.size(address(_6158))
                        if not sub_84dc97dc[address(_6158)].field_0:
                            staticcall address(_6158).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(_6158))
                            staticcall address(_6158).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _6674 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6674] = address(ext_call.return_data[0])
                            mem[_6674 + 32] = address(ext_call.return_data[0])
                            mem[0] = address(_6158)
                            mem[32] = 4
                            sub_84dc97dc[address(_6158)].field_0 = address(ext_call.return_data[0])
                            sub_84dc97dc[address(_6158)].field_256 = address(ext_call.return_data[0])
                            require ext_code.size(address(_6158))
                            staticcall address(_6158).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if s <= 0:
                                revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                            if address(_6125) == address(ext_call.return_data[0]):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6125) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6038), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
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
                            mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if address(_6125) == address(ext_call.return_data[0]):
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 68] = address(_6038)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6158))
                                call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6038), 128, 0, mem[mem[64] + 164]
                            else:
                                mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(_6038)
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_6158))
                                call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
                        else:
                            if sub_84dc97dc[address(_6158)].field_256:
                                staticcall address(_6158).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6125) == sub_84dc97dc[address(_6158)].field_0:
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6125) == sub_84dc97dc[address(_6158)].field_0:
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6038)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6158))
                                        call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6038), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6038)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6158))
                                        call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6125) == sub_84dc97dc[address(_6158)].field_0:
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6038), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
                            else:
                                staticcall address(_6158).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(_6158))
                                staticcall address(_6158).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _6779 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6779] = address(ext_call.return_data[0])
                                mem[_6779 + 32] = address(ext_call.return_data[0])
                                mem[0] = address(_6158)
                                mem[32] = 4
                                sub_84dc97dc[address(_6158)].field_0 = address(ext_call.return_data[0])
                                sub_84dc97dc[address(_6158)].field_256 = address(ext_call.return_data[0])
                                require ext_code.size(address(_6158))
                                staticcall address(_6158).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if s <= 0:
                                    revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                                if address(_6125) == address(ext_call.return_data[0]):
                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                        revert with 0, 'INSUFFICIENT_LIQUIDITY'
                                    require (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    if address(_6125) == address(ext_call.return_data[0]):
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 68] = address(_6038)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6158))
                                        call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), address(_6038), 128, 0, mem[mem[64] + 164]
                                    else:
                                        mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                        mem[mem[64] + 36] = 0
                                        mem[mem[64] + 68] = address(_6038)
                                        mem[mem[64] + 100] = 128
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_6158))
                                        call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 997 * s * Mask(112, 0, ext_call.return_data[32]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[0])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
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
                                mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if address(_6125) == address(ext_call.return_data[0]):
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 36] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), address(_6038), 128, 0, mem[mem[64] + 164]
                                else:
                                    mem[mem[64] + 4] = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = address(_6038)
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6158))
                                    call address(_6158).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 997 * s * Mask(112, 0, ext_call.return_data[0]) / (997 * s) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(_6038), 128, 0, mem[mem[64] + 164]
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
