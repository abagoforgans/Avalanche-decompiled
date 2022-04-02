contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3)
#  - initialize()
#  - zapIn(address arg1)
#
address owner;
mapping of uint8 stor101;
mapping of address routePair;
array of address tokens;

function covers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor101[address(arg1)])
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() {
    return owner
}

function routePair(address arg1) {
    require calldata.size - 4 >= 32
    return routePair[address(arg1)]
}

function _fallback() payable {
    revert
}

function isFlip(address arg1) {
    require calldata.size - 4 >= 32
    return not bool(stor101[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRoutePairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routePair[address(arg1)] = arg2
}

function setNotFlip(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = 1
    if not stor101[address(arg1)]:
        tokens.length++
        tokens[tokens.length] = arg1
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < tokens.length
    stor101[stor103[arg1]] = 0
    require tokens.length - 1 < tokens.length
    require arg1 < tokens.length
    tokens[arg1] = tokens[tokens.length]
    require tokens.length
    tokens[tokens.length] = 0
    tokens.length--
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < tokens.length:
        mem[0] = 103
        if not tokens[idx]:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokens[idx])
        staticcall tokens[idx].balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        mem[0] = tokens[idx]
        mem[32] = 102
        if not routePair[stor103[idx]]:
            _51 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_51]:
                mem[_51 + 32] = tokens[idx]
                if 1 < mem[_51]:
                    mem[_51 + 64] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[_51 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[_51 + 100] = ext_call.return_data[0]
                    mem[_51 + 132] = 0
                    mem[_51 + 196] = owner
                    mem[_51 + 228] = block.timestamp
                    mem[_51 + 164] = 160
                    mem[_51 + 260] = mem[_51]
                    s = 0
                    while s < 32 * mem[_51]:
                        mem[_51 + s + 292] = mem[_51 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_51 + 260 len (32 * mem[_51]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_51 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _51 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _93 = mem[_51 + 96 len 4], ext_call.return_data[0 len 28]
                    require mem[_51 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_51 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[_51 + 96 len 4], ext_call.return_data[0 len 28] + _51 + 96] <= 4294967296 and mem[_51 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_51 + 96 len 4], ext_call.return_data[0 len 28] + _51 + 96]) + 32 <= return_data.size
                    mem[_51 + ceil32(return_data.size) + 96] = mem[mem[_51 + 96 len 4], ext_call.return_data[0 len 28] + _51 + 96]
                    _99 = mem[_93 + _51 + 96]
                    s = 0
                    while s < 32 * _99:
                        mem[_51 + ceil32(return_data.size) + s + 128] = mem[_93 + _51 + s + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _99) + _51 + ceil32(return_data.size) + 128
                    if mem[_51 + ceil32(return_data.size) + 96] - 1 < mem[_51 + ceil32(return_data.size) + 96]:
                        idx = idx + 1
                        continue 
        else:
            _52 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 < mem[_52]:
                mem[_52 + 32] = tokens[idx]
                mem[0] = tokens[idx]
                mem[32] = 102
                if 1 < mem[_52]:
                    mem[_52 + 64] = routePair[stor103[idx]]
                    if 2 < mem[_52]:
                        mem[_52 + 96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                        mem[_52 + 128] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[_52 + 132] = ext_call.return_data[0]
                        mem[_52 + 164] = 0
                        mem[_52 + 228] = owner
                        mem[_52 + 260] = block.timestamp
                        mem[_52 + 196] = 160
                        mem[_52 + 292] = mem[_52]
                        s = 0
                        while s < 32 * mem[_52]:
                            mem[_52 + s + 324] = mem[_52 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_52 + 292 len (32 * mem[_52]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_52 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _52 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _95 = mem[_52 + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[_52 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[_52 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[_52 + 128 len 4], ext_call.return_data[0 len 28] + _52 + 128] <= 4294967296 and mem[_52 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_52 + 128 len 4], ext_call.return_data[0 len 28] + _52 + 128]) + 32 <= return_data.size
                        mem[_52 + ceil32(return_data.size) + 128] = mem[mem[_52 + 128 len 4], ext_call.return_data[0 len 28] + _52 + 128]
                        _100 = mem[_95 + _52 + 128]
                        s = 0
                        while s < 32 * _100:
                            mem[_52 + ceil32(return_data.size) + s + 160] = mem[_95 + _52 + s + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _100) + _52 + ceil32(return_data.size) + 160
                        if mem[_52 + ceil32(return_data.size) + 128] - 1 < mem[_52 + ceil32(return_data.size) + 128]:
                            idx = idx + 1
                            continue 
        revert
}

function zapOut(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg2
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not stor101[address(arg1)]:
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                else:
                    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 102
            if not routePair[address(arg1)]:
                mem[292] = 2
                mem[324] = arg1
                mem[356] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[388] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[392] = arg2
                mem[424] = 0
                mem[488] = msg.sender
                mem[520] = block.timestamp
                mem[456] = 160
                mem[552] = 2
                mem[584 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[584 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 388
                require return_data.size >= 32
                require mem[388 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[388 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[388 len 4], Mask(224, 32, arg2) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg2) >> 32 + 388]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 388] = mem[mem[388 len 4], Mask(224, 32, arg2) >> 32 + 388]
                if mem[ceil32(return_data.size) + 388] - 1 < mem[ceil32(return_data.size) + 388]:
            else:
                mem[292] = 3
                mem[324] = arg1
                mem[0] = arg1
                mem[32] = 102
                mem[356] = routePair[address(arg1)]
                mem[388] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[420] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[424] = arg2
                mem[456] = 0
                mem[520] = msg.sender
                mem[552] = block.timestamp
                mem[488] = 160
                mem[584] = 3
                mem[616 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[616 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 420
                require return_data.size >= 32
                require mem[420 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[420 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[420 len 4], Mask(224, 32, arg2) >> 32 + 420] <= 4294967296 and mem[420 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[420 len 4], Mask(224, 32, arg2) >> 32 + 420]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 420] = mem[mem[420 len 4], Mask(224, 32, arg2) >> 32 + 420]
                if mem[ceil32(return_data.size) + 420] - 1 < mem[ceil32(return_data.size) + 420]:
        else:
            require ext_code.size(arg1)
            staticcall arg1.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
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
            mem[328] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[360] = -1
            mem[292] = 68
            mem[324 len 4] = approve(address rg1, uint256 rg2)
            mem[392] = 32
            mem[424] = 'SafeERC20: low-level call failed'
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[548 len 4] = 0
            call arg1.0xb6c89106 with:
                 gas gas_remaining wei
                args -1, 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                if not stor101[address(arg1)]:
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 102
                if not routePair[address(arg1)]:
                    mem[456] = 2
                    mem[488] = arg1
                    mem[520] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[552] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[556] = arg2
                    mem[588] = 0
                    mem[652] = msg.sender
                    mem[684] = block.timestamp
                    mem[620] = 160
                    mem[716] = 2
                    mem[748 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[748 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 552
                    require return_data.size >= 32
                    require mem[552 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[552 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[552 len 4], Mask(224, 32, arg2) >> 32 + 552] <= 4294967296 and mem[552 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[552 len 4], Mask(224, 32, arg2) >> 32 + 552]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 552] = mem[mem[552 len 4], Mask(224, 32, arg2) >> 32 + 552]
                    if mem[ceil32(return_data.size) + 552] - 1 < mem[ceil32(return_data.size) + 552]:
                else:
                    mem[456] = 3
                    mem[488] = arg1
                    mem[0] = arg1
                    mem[32] = 102
                    mem[520] = routePair[address(arg1)]
                    mem[552] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[584] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[588] = arg2
                    mem[620] = 0
                    mem[684] = msg.sender
                    mem[716] = block.timestamp
                    mem[652] = 160
                    mem[748] = 3
                    mem[780 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[780 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 584
                    require return_data.size >= 32
                    require mem[584 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[584 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[584 len 4], Mask(224, 32, arg2) >> 32 + 584] <= 4294967296 and mem[584 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[584 len 4], Mask(224, 32, arg2) >> 32 + 584]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 584] = mem[mem[584 len 4], Mask(224, 32, arg2) >> 32 + 584]
                    if mem[ceil32(return_data.size) + 584] - 1 < mem[ceil32(return_data.size) + 584]:
            else:
                mem[456] = return_data.size
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                if not stor101[address(arg1)]:
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 102
                if not routePair[address(arg1)]:
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[ceil32(return_data.size) + 521] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg2
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                else:
                    mem[ceil32(return_data.size) + 457] = 3
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[0] = arg1
                    mem[32] = 102
                    mem[ceil32(return_data.size) + 521] = routePair[address(arg1)]
                    mem[ceil32(return_data.size) + 553] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 585] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 589] = arg2
                    mem[ceil32(return_data.size) + 621] = 0
                    mem[ceil32(return_data.size) + 685] = msg.sender
                    mem[ceil32(return_data.size) + 717] = block.timestamp
                    mem[ceil32(return_data.size) + 653] = 160
                    mem[ceil32(return_data.size) + 749] = 3
                    mem[ceil32(return_data.size) + 781 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[ceil32(return_data.size) + 781 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 585
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585] <= 4294967296 and mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 585]:
    else:
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not stor101[address(arg1)]:
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                else:
                    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
            mem[0] = arg1
            mem[32] = 102
            if not routePair[address(arg1)]:
                mem[ceil32(return_data.size) + 293] = 2
                mem[ceil32(return_data.size) + 325] = arg1
                mem[ceil32(return_data.size) + 357] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 393] = arg2
                mem[ceil32(return_data.size) + 425] = 0
                mem[ceil32(return_data.size) + 489] = msg.sender
                mem[ceil32(return_data.size) + 521] = block.timestamp
                mem[ceil32(return_data.size) + 457] = 160
                mem[ceil32(return_data.size) + 553] = 2
                mem[ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 389]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]:
            else:
                mem[ceil32(return_data.size) + 293] = 3
                mem[ceil32(return_data.size) + 325] = arg1
                mem[0] = arg1
                mem[32] = 102
                mem[ceil32(return_data.size) + 357] = routePair[address(arg1)]
                mem[ceil32(return_data.size) + 389] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[ceil32(return_data.size) + 421] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 425] = arg2
                mem[ceil32(return_data.size) + 457] = 0
                mem[ceil32(return_data.size) + 521] = msg.sender
                mem[ceil32(return_data.size) + 553] = block.timestamp
                mem[ceil32(return_data.size) + 489] = 160
                mem[ceil32(return_data.size) + 585] = 3
                mem[ceil32(return_data.size) + 617 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[ceil32(return_data.size) + 617 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 421
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 421] <= 4294967296 and mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 421]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] = mem[mem[ceil32(return_data.size) + 421 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 421]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 421]:
        else:
            require ext_code.size(arg1)
            staticcall arg1.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 415 len 10]
            mem[ceil32(return_data.size) + 329] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            mem[ceil32(return_data.size) + 361] = -1
            mem[ceil32(return_data.size) + 293] = 68
            mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
            mem[ceil32(return_data.size) + 393] = 32
            mem[ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call arg1.0xb6c89106 with:
                 gas gas_remaining wei
                args -1, 0, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg2
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                if not stor101[address(arg1)]:
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 102
                if not routePair[address(arg1)]:
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[ceil32(return_data.size) + 521] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg2
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 553]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                else:
                    mem[ceil32(return_data.size) + 457] = 3
                    mem[ceil32(return_data.size) + 489] = arg1
                    mem[0] = arg1
                    mem[32] = 102
                    mem[ceil32(return_data.size) + 521] = routePair[address(arg1)]
                    mem[ceil32(return_data.size) + 553] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[ceil32(return_data.size) + 585] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 589] = arg2
                    mem[ceil32(return_data.size) + 621] = 0
                    mem[ceil32(return_data.size) + 685] = msg.sender
                    mem[ceil32(return_data.size) + 717] = block.timestamp
                    mem[ceil32(return_data.size) + 653] = 160
                    mem[ceil32(return_data.size) + 749] = 3
                    mem[ceil32(return_data.size) + 781 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[ceil32(return_data.size) + 781 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 585
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585] <= 4294967296 and mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = mem[mem[ceil32(return_data.size) + 585 len 4], Mask(224, 32, arg2) >> 32 + ceil32(return_data.size) + 585]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 585]:
            else:
                mem[ceil32(return_data.size) + 457] = return_data.size
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if not stor101[address(arg1)]:
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                mem[0] = arg1
                mem[32] = 102
                if not routePair[address(arg1)]:
                    mem[(2 * ceil32(return_data.size)) + 458] = 2
                    mem[(2 * ceil32(return_data.size)) + 490] = arg1
                    mem[(2 * ceil32(return_data.size)) + 522] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = arg2
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = 2
                    mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 554
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 554]
                    if mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]:
                else:
                    mem[(2 * ceil32(return_data.size)) + 458] = 3
                    mem[(2 * ceil32(return_data.size)) + 490] = arg1
                    mem[0] = arg1
                    mem[32] = 102
                    mem[(2 * ceil32(return_data.size)) + 522] = routePair[address(arg1)]
                    mem[(2 * ceil32(return_data.size)) + 554] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(2 * ceil32(return_data.size)) + 586] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 590] = arg2
                    mem[(2 * ceil32(return_data.size)) + 622] = 0
                    mem[(2 * ceil32(return_data.size)) + 686] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 718] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 654] = 160
                    mem[(2 * ceil32(return_data.size)) + 750] = 3
                    mem[(2 * ceil32(return_data.size)) + 782 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, msg.sender, block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 782 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 586 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 586
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
                    require mem[mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 586] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 586]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 586] = mem[mem[(2 * ceil32(return_data.size)) + 586 len 4], Mask(224, 32, arg2) >> 32 + (2 * ceil32(return_data.size)) + 586]
                    if mem[(4 * ceil32(return_data.size)) + 586] - 1 < mem[(4 * ceil32(return_data.size)) + 586]:
    revert
}



}
