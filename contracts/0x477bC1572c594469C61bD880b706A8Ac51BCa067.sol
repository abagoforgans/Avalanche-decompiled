contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3)
#  - initialize()
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
        staticcall arg1.0x70a08231 with:
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
        staticcall tokens[idx].0x70a08231 with:
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
                    mem[_51 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
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
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                        mem[_52 + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
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
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                else:
                    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                mem[388] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[392] = arg2
                mem[424] = 0
                mem[488] = msg.sender
                mem[520] = block.timestamp
                mem[456] = 160
                mem[552] = 2
                mem[584 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                mem[420] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[424] = arg2
                mem[456] = 0
                mem[520] = msg.sender
                mem[552] = block.timestamp
                mem[488] = 160
                mem[584] = 3
                mem[616 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                    mem[552] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[556] = arg2
                    mem[588] = 0
                    mem[652] = msg.sender
                    mem[684] = block.timestamp
                    mem[620] = 160
                    mem[716] = 2
                    mem[748 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    mem[584] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[588] = arg2
                    mem[620] = 0
                    mem[684] = msg.sender
                    mem[716] = block.timestamp
                    mem[652] = 160
                    mem[748] = 3
                    mem[780 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                    mem[ceil32(return_data.size) + 553] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg2
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    mem[ceil32(return_data.size) + 585] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 589] = arg2
                    mem[ceil32(return_data.size) + 621] = 0
                    mem[ceil32(return_data.size) + 685] = msg.sender
                    mem[ceil32(return_data.size) + 717] = block.timestamp
                    mem[ceil32(return_data.size) + 653] = 160
                    mem[ceil32(return_data.size) + 749] = 3
                    mem[ceil32(return_data.size) + 781 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                else:
                    if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                mem[ceil32(return_data.size) + 389] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 393] = arg2
                mem[ceil32(return_data.size) + 425] = 0
                mem[ceil32(return_data.size) + 489] = msg.sender
                mem[ceil32(return_data.size) + 521] = block.timestamp
                mem[ceil32(return_data.size) + 457] = 160
                mem[ceil32(return_data.size) + 553] = 2
                mem[ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                mem[ceil32(return_data.size) + 421] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 425] = arg2
                mem[ceil32(return_data.size) + 457] = 0
                mem[ceil32(return_data.size) + 521] = msg.sender
                mem[ceil32(return_data.size) + 553] = block.timestamp
                mem[ceil32(return_data.size) + 489] = 160
                mem[ceil32(return_data.size) + 585] = 3
                mem[ceil32(return_data.size) + 617 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                    mem[ceil32(return_data.size) + 553] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = arg2
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    mem[ceil32(return_data.size) + 585] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 589] = arg2
                    mem[ceil32(return_data.size) + 621] = 0
                    mem[ceil32(return_data.size) + 685] = msg.sender
                    mem[ceil32(return_data.size) + 717] = block.timestamp
                    mem[ceil32(return_data.size) + 653] = 160
                    mem[ceil32(return_data.size) + 749] = 3
                    mem[ceil32(return_data.size) + 781 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        if address(ext_call.return_data[0]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, msg.sender, block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        else:
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
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
                    mem[(2 * ceil32(return_data.size)) + 554] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 558] = arg2
                    mem[(2 * ceil32(return_data.size)) + 590] = 0
                    mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 622] = 160
                    mem[(2 * ceil32(return_data.size)) + 718] = 2
                    mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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
                    mem[(2 * ceil32(return_data.size)) + 586] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 590] = arg2
                    mem[(2 * ceil32(return_data.size)) + 622] = 0
                    mem[(2 * ceil32(return_data.size)) + 686] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 718] = block.timestamp
                    mem[(2 * ceil32(return_data.size)) + 654] = 160
                    mem[(2 * ceil32(return_data.size)) + 750] = 3
                    mem[(2 * ceil32(return_data.size)) + 782 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
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

function zapIn(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor101[address(arg1)]:
        if not routePair[address(arg1)]:
            mem[160] = arg1
            mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[260] = msg.sender
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            if mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]:
        else:
            mem[192] = arg1
            mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[228] = 0
            mem[292] = msg.sender
            mem[324] = block.timestamp
            mem[260] = 128
            mem[356] = 3
            mem[388 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 3, mem[388 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], 0 <= 4294967296
            require mem[224 len 4], 0 + 32 <= return_data.size
            require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
            if mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]:
        revert
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
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[0] = address(ext_call.return_data[0])
    mem[32] = 102
    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not routePair[address(ext_call.return_data[0])]:
            mem[160] = 2
            mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[224] = address(ext_call.return_data[0])
            mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[260] = 0
            mem[324] = this.address
            mem[356] = block.timestamp
            mem[292] = 128
            mem[388] = 2
            mem[420 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            _2929 = mem[256 len 4], 0
            require mem[256 len 4], 0 <= 4294967296
            require mem[256 len 4], 0 + 32 <= return_data.size
            require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
            _2959 = mem[_2929 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_2929 + 256])] = mem[_2929 + 288 len floor32(mem[_2929 + 256])]
            mem[64] = (32 * _2959) + ceil32(return_data.size) + 288
            require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
            _5739 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288], 0, 0, msg.sender, block.timestamp
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                mem[(32 * _2959) + ceil32(return_data.size) + 410 len 10]
                if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2959) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * _2959) + ceil32(return_data.size) + 516 len 0] = 0
                call address(ext_call.return_data[0]).0xb6c89106 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2959) + ceil32(return_data.size) + 516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _2959) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _2959) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2959) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _5739, 0, 0, msg.sender, block.timestamp
        else:
            mem[160] = 3
            mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 102
            mem[224] = routePair[address(ext_call.return_data[0])]
            mem[256] = address(ext_call.return_data[0])
            mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[292] = 0
            mem[356] = this.address
            mem[388] = block.timestamp
            mem[324] = 128
            mem[420] = 3
            mem[452 len 0] = None
            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 3, mem[452 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _2931 = mem[288 len 4], 0
            require mem[288 len 4], 0 <= 4294967296
            require mem[288 len 4], 0 + 32 <= return_data.size
            require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
            _2960 = mem[_2931 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_2931 + 288])] = mem[_2931 + 320 len floor32(mem[_2931 + 288])]
            mem[64] = (32 * _2960) + ceil32(return_data.size) + 320
            require mem[ceil32(return_data.size) + 288] - 1 < mem[ceil32(return_data.size) + 288]
            _5740 = mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320], 0, 0, msg.sender, block.timestamp
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                mem[(32 * _2960) + ceil32(return_data.size) + 442 len 10]
                if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2960) + ceil32(return_data.size) + 484 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * _2960) + ceil32(return_data.size) + 548 len 0] = 0
                call address(ext_call.return_data[0]).0xb6c89106 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2960) + ceil32(return_data.size) + 548 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _2960) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _2960) + ceil32(return_data.size) + 516]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2960) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), _5740, 0, 0, msg.sender, block.timestamp
    else:
        if ext_call.return_data[12 len 20] == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                if not routePair[address(ext_call.return_data[0])]:
                    mem[160] = 2
                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[260] = 0
                    mem[324] = this.address
                    mem[356] = block.timestamp
                    mem[292] = 128
                    mem[388] = 2
                    mem[420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    _2937 = mem[256 len 4], 0
                    require mem[256 len 4], 0 <= 4294967296
                    require mem[256 len 4], 0 + 32 <= return_data.size
                    require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
                    _2963 = mem[_2937 + 256]
                    mem[ceil32(return_data.size) + 288 len floor32(mem[_2937 + 256])] = mem[_2937 + 288 len floor32(mem[_2937 + 256])]
                    mem[64] = (32 * _2963) + ceil32(return_data.size) + 288
                    require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
                    _5743 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                        mem[(32 * _2963) + ceil32(return_data.size) + 410 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2963) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2963) + ceil32(return_data.size) + 516 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2963) + ceil32(return_data.size) + 516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _2963) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _2963) + ceil32(return_data.size) + 484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2963) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5743, 0, 0, msg.sender, block.timestamp
                else:
                    mem[160] = 3
                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 102
                    mem[224] = routePair[address(ext_call.return_data[0])]
                    mem[256] = address(ext_call.return_data[0])
                    mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[292] = 0
                    mem[356] = this.address
                    mem[388] = block.timestamp
                    mem[324] = 128
                    mem[420] = 3
                    mem[452 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[452 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _2939 = mem[288 len 4], 0
                    require mem[288 len 4], 0 <= 4294967296
                    require mem[288 len 4], 0 + 32 <= return_data.size
                    require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
                    _2964 = mem[_2939 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_2939 + 288])] = mem[_2939 + 320 len floor32(mem[_2939 + 288])]
                    mem[64] = (32 * _2964) + ceil32(return_data.size) + 320
                    require mem[ceil32(return_data.size) + 288] - 1 < mem[ceil32(return_data.size) + 288]
                    _5744 = mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                        mem[(32 * _2964) + ceil32(return_data.size) + 442 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2964) + ceil32(return_data.size) + 484 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2964) + ceil32(return_data.size) + 548 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2964) + ceil32(return_data.size) + 548 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _2964) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _2964) + ceil32(return_data.size) + 516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2964) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5744, 0, 0, msg.sender, block.timestamp
            else:
                if not routePair[address(ext_call.return_data[0])]:
                    mem[160] = 2
                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[260] = 0
                    mem[324] = this.address
                    mem[356] = block.timestamp
                    mem[292] = 128
                    mem[388] = 2
                    mem[420 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 256
                    require return_data.size >= 32
                    _2941 = mem[256 len 4], 0
                    require mem[256 len 4], 0 <= 4294967296
                    require mem[256 len 4], 0 + 32 <= return_data.size
                    require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
                    _2965 = mem[_2941 + 256]
                    mem[ceil32(return_data.size) + 288 len floor32(mem[_2941 + 256])] = mem[_2941 + 288 len floor32(mem[_2941 + 256])]
                    mem[64] = (32 * _2965) + ceil32(return_data.size) + 288
                    require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
                    _5745 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                        mem[(32 * _2965) + ceil32(return_data.size) + 410 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2965) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _2965) + ceil32(return_data.size) + 516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _2965) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _2965) + ceil32(return_data.size) + 484]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2965) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5745, 0, 0, msg.sender, block.timestamp
                else:
                    mem[160] = 3
                    mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 102
                    mem[224] = routePair[address(ext_call.return_data[0])]
                    mem[256] = address(ext_call.return_data[0])
                    mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[292] = 0
                    mem[356] = this.address
                    mem[388] = block.timestamp
                    mem[324] = 128
                    mem[420] = 3
                    mem[452 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[452 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 288
                    require return_data.size >= 32
                    _2943 = mem[288 len 4], 0
                    require mem[288 len 4], 0 <= 4294967296
                    require mem[288 len 4], 0 + 32 <= return_data.size
                    require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
                    _2966 = mem[_2943 + 288]
                    mem[ceil32(return_data.size) + 320 len floor32(mem[_2943 + 288])] = mem[_2943 + 320 len floor32(mem[_2943 + 288])]
                    mem[64] = (32 * _2966) + ceil32(return_data.size) + 320
                    require mem[ceil32(return_data.size) + 288] - 1 < mem[ceil32(return_data.size) + 288]
                    _5746 = mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                        mem[(32 * _2966) + ceil32(return_data.size) + 442 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2966) + ceil32(return_data.size) + 484 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2966) + ceil32(return_data.size) + 548 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2966) + ceil32(return_data.size) + 548 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _2966) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _2966) + ceil32(return_data.size) + 516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2966) + ceil32(return_data.size) + ceil32(return_data.size) + 595 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5746, 0, 0, msg.sender, block.timestamp
        else:
            if not routePair[address(ext_call.return_data[0])]:
                mem[160] = 2
                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[224] = address(ext_call.return_data[0])
                mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[260] = 0
                mem[324] = this.address
                mem[356] = block.timestamp
                mem[292] = 128
                mem[388] = 2
                mem[420 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 256
                require return_data.size >= 32
                _2933 = mem[256 len 4], 0
                require mem[256 len 4], 0 <= 4294967296
                require mem[256 len 4], 0 + 32 <= return_data.size
                require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
                _2961 = mem[_2933 + 256]
                mem[ceil32(return_data.size) + 288 len floor32(mem[_2933 + 256])] = mem[_2933 + 288 len floor32(mem[_2933 + 256])]
                mem[64] = (32 * _2961) + ceil32(return_data.size) + 288
                require mem[ceil32(return_data.size) + 256] - 1 < mem[ceil32(return_data.size) + 256]
                _5741 = mem[(32 * mem[ceil32(return_data.size) + 256] - 1) + ceil32(return_data.size) + 288]
                mem[(32 * _2961) + ceil32(return_data.size) + 288] = 30
                mem[(32 * _2961) + ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 102
                if not routePair[address(ext_call.return_data[0])]:
                    mem[(32 * _2961) + ceil32(return_data.size) + 352] = 2
                    mem[(32 * _2961) + ceil32(return_data.size) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(32 * _2961) + ceil32(return_data.size) + 416] = address(ext_call.return_data[0])
                    mem[(32 * _2961) + ceil32(return_data.size) + 448] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2961) + ceil32(return_data.size) + 452] = 0
                    mem[(32 * _2961) + ceil32(return_data.size) + 516] = this.address
                    mem[(32 * _2961) + ceil32(return_data.size) + 548] = block.timestamp
                    mem[(32 * _2961) + ceil32(return_data.size) + 484] = 128
                    mem[(32 * _2961) + ceil32(return_data.size) + 580] = 2
                    mem[(32 * _2961) + ceil32(return_data.size) + 612 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _2961) + ceil32(return_data.size) + 612 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2961) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2961) + (2 * ceil32(return_data.size)) + 448
                    require return_data.size >= 32
                    _8527 = mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0
                    require mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 <= 4294967296
                    require mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 + 32 <= return_data.size
                    require mem[mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 + (32 * mem[mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
                    mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _2961) + ceil32(return_data.size) + 448 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 448]
                    _8603 = mem[_8527 + (32 * _2961) + ceil32(return_data.size) + 448]
                    mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_8527 + (32 * _2961) + ceil32(return_data.size) + 448])] = mem[_8527 + (32 * _2961) + ceil32(return_data.size) + 480 len floor32(mem[_8527 + (32 * _2961) + ceil32(return_data.size) + 448])]
                    mem[64] = (32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 480
                    require mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 448] - 1 < mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 448]
                    _11003 = mem[(32 * mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 448] - 1) + (32 * _2961) + (2 * ceil32(return_data.size)) + 480]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, mem[(32 * mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 448] - 1) + (32 * _2961) + (2 * ceil32(return_data.size)) + 480], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 602 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 644 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len 0] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 22]
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, _11003, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 602 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 644 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, _11003, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 767 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 901 len 4] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args -1, mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 28], mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = return_data.size
                            mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 814] = 32
                                mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = 32
                                mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 810
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8603) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841]:
                                    mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 814] = 32
                                    mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = 42
                                    mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878 len 42] = 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 810
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 814] = address(ext_call.return_data[0])
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = address(ext_call.return_data[0])
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878] = _5741
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 910] = _11003
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 942] = 0
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 974] = 0
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 1006] = msg.sender
                            mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 1038] = block.timestamp
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _8603) + (32 * _2961) + (4 * ceil32(return_data.size)) + 814 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(32 * _2961) + ceil32(return_data.size) + 352] = 3
                    mem[(32 * _2961) + ceil32(return_data.size) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 102
                    mem[(32 * _2961) + ceil32(return_data.size) + 416] = routePair[address(ext_call.return_data[0])]
                    mem[(32 * _2961) + ceil32(return_data.size) + 448] = address(ext_call.return_data[0])
                    mem[(32 * _2961) + ceil32(return_data.size) + 480] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2961) + ceil32(return_data.size) + 484] = 0
                    mem[(32 * _2961) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _2961) + ceil32(return_data.size) + 580] = block.timestamp
                    mem[(32 * _2961) + ceil32(return_data.size) + 516] = 128
                    mem[(32 * _2961) + ceil32(return_data.size) + 612] = 3
                    mem[(32 * _2961) + ceil32(return_data.size) + 644 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(32 * _2961) + ceil32(return_data.size) + 644 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2961) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2961) + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _8529 = mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0
                    require mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 <= 4294967296
                    require mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 480] <= 4294967296 and mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 + (32 * mem[mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 480]) + 32 <= return_data.size
                    mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480] = mem[mem[(32 * _2961) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2961) + ceil32(return_data.size) + 480]
                    _8604 = mem[_8529 + (32 * _2961) + ceil32(return_data.size) + 480]
                    mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[_8529 + (32 * _2961) + ceil32(return_data.size) + 480])] = mem[_8529 + (32 * _2961) + ceil32(return_data.size) + 512 len floor32(mem[_8529 + (32 * _2961) + ceil32(return_data.size) + 480])]
                    mem[64] = (32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480]
                    _11004 = mem[(32 * mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _2961) + (2 * ceil32(return_data.size)) + 512]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, mem[(32 * mem[(32 * _2961) + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _2961) + (2 * ceil32(return_data.size)) + 512], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 634 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 740 len 0] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 740 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 22]
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, _11004, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 634 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 676 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 740 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 740 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + 708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5741, _11004, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 799 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len 4] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args -1, mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len 28], mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = return_data.size
                            mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 842] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = 32
                                mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878] = 32
                                mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 910] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 842
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8604) + (32 * _2961) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873]:
                                    mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 842] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = 32
                                    mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878] = 42
                                    mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 910 len 42] = 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 842
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846] = address(ext_call.return_data[0])
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 878] = address(ext_call.return_data[0])
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 910] = _5741
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 942] = _11004
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 974] = 0
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 1006] = 0
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 1038] = msg.sender
                            mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 1070] = block.timestamp
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _8604) + (32 * _2961) + (4 * ceil32(return_data.size)) + 846 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[160] = 3
                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 102
                mem[224] = routePair[address(ext_call.return_data[0])]
                mem[256] = address(ext_call.return_data[0])
                mem[288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[292] = 0
                mem[356] = this.address
                mem[388] = block.timestamp
                mem[324] = 128
                mem[420] = 3
                mem[452 len 0] = None
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[452 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 288
                require return_data.size >= 32
                _2935 = mem[288 len 4], 0
                require mem[288 len 4], 0 <= 4294967296
                require mem[288 len 4], 0 + 32 <= return_data.size
                require mem[mem[288 len 4], 0 + 288] <= 4294967296 and mem[288 len 4], 0 + (32 * mem[mem[288 len 4], 0 + 288]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
                _2962 = mem[_2935 + 288]
                mem[ceil32(return_data.size) + 320 len floor32(mem[_2935 + 288])] = mem[_2935 + 320 len floor32(mem[_2935 + 288])]
                mem[64] = (32 * _2962) + ceil32(return_data.size) + 320
                require mem[ceil32(return_data.size) + 288] - 1 < mem[ceil32(return_data.size) + 288]
                _5742 = mem[(32 * mem[ceil32(return_data.size) + 288] - 1) + ceil32(return_data.size) + 320]
                mem[(32 * _2962) + ceil32(return_data.size) + 320] = 30
                mem[(32 * _2962) + ceil32(return_data.size) + 352] = 'SafeMath: subtraction overflow'
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 102
                if not routePair[address(ext_call.return_data[0])]:
                    mem[(32 * _2962) + ceil32(return_data.size) + 384] = 2
                    mem[(32 * _2962) + ceil32(return_data.size) + 416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(32 * _2962) + ceil32(return_data.size) + 448] = address(ext_call.return_data[0])
                    mem[(32 * _2962) + ceil32(return_data.size) + 480] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2962) + ceil32(return_data.size) + 484] = 0
                    mem[(32 * _2962) + ceil32(return_data.size) + 548] = this.address
                    mem[(32 * _2962) + ceil32(return_data.size) + 580] = block.timestamp
                    mem[(32 * _2962) + ceil32(return_data.size) + 516] = 128
                    mem[(32 * _2962) + ceil32(return_data.size) + 612] = 2
                    mem[(32 * _2962) + ceil32(return_data.size) + 644 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _2962) + ceil32(return_data.size) + 644 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2962) + ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2962) + (2 * ceil32(return_data.size)) + 480
                    require return_data.size >= 32
                    _8531 = mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0
                    require mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 <= 4294967296
                    require mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 + 32 <= return_data.size
                    require mem[mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 480] <= 4294967296 and mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 + (32 * mem[mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 480]) + 32 <= return_data.size
                    mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 480] = mem[mem[(32 * _2962) + ceil32(return_data.size) + 480 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 480]
                    _8605 = mem[_8531 + (32 * _2962) + ceil32(return_data.size) + 480]
                    mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512 len floor32(mem[_8531 + (32 * _2962) + ceil32(return_data.size) + 480])] = mem[_8531 + (32 * _2962) + ceil32(return_data.size) + 512 len floor32(mem[_8531 + (32 * _2962) + ceil32(return_data.size) + 480])]
                    mem[64] = (32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 512
                    require mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 480] - 1 < mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 480]
                    _11005 = mem[(32 * mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _2962) + (2 * ceil32(return_data.size)) + 512]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, mem[(32 * mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 480] - 1) + (32 * _2962) + (2 * ceil32(return_data.size)) + 512], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 634 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 676 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 22]
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, _11005, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 634 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 676 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, _11005, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 799 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 933 len 4] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args -1, mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len 28], mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = return_data.size
                            mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 842] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 846] = 32
                                mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = 32
                                mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 842
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8605) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873]:
                                    mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 842] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 846] = 32
                                    mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = 42
                                    mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910 len 42] = 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 842
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 846] = address(ext_call.return_data[0])
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = address(ext_call.return_data[0])
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910] = _5742
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 942] = _11005
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 974] = 0
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1006] = 0
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1038] = msg.sender
                            mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1070] = block.timestamp
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _8605) + (32 * _2962) + (4 * ceil32(return_data.size)) + 846 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(32 * _2962) + ceil32(return_data.size) + 384] = 3
                    mem[(32 * _2962) + ceil32(return_data.size) + 416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 102
                    mem[(32 * _2962) + ceil32(return_data.size) + 448] = routePair[address(ext_call.return_data[0])]
                    mem[(32 * _2962) + ceil32(return_data.size) + 480] = address(ext_call.return_data[0])
                    mem[(32 * _2962) + ceil32(return_data.size) + 512] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2962) + ceil32(return_data.size) + 516] = 0
                    mem[(32 * _2962) + ceil32(return_data.size) + 580] = this.address
                    mem[(32 * _2962) + ceil32(return_data.size) + 612] = block.timestamp
                    mem[(32 * _2962) + ceil32(return_data.size) + 548] = 128
                    mem[(32 * _2962) + ceil32(return_data.size) + 644] = 3
                    mem[(32 * _2962) + ceil32(return_data.size) + 676 len 0] = None
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(32 * _2962) + ceil32(return_data.size) + 676 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2962) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2962) + (2 * ceil32(return_data.size)) + 512
                    require return_data.size >= 32
                    _8533 = mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0
                    require mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 <= 4294967296
                    require mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 + 32 <= return_data.size
                    require mem[mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 512] <= 4294967296 and mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 + (32 * mem[mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 512]) + 32 <= return_data.size
                    mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512] = mem[mem[(32 * _2962) + ceil32(return_data.size) + 512 len 4], 0 + (32 * _2962) + ceil32(return_data.size) + 512]
                    _8606 = mem[_8533 + (32 * _2962) + ceil32(return_data.size) + 512]
                    mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[_8533 + (32 * _2962) + ceil32(return_data.size) + 512])] = mem[_8533 + (32 * _2962) + ceil32(return_data.size) + 544 len floor32(mem[_8533 + (32 * _2962) + ceil32(return_data.size) + 512])]
                    mem[64] = (32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 544
                    require mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512] - 1 < mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512]
                    _11006 = mem[(32 * mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512] - 1) + (32 * _2962) + (2 * ceil32(return_data.size)) + 544]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, mem[(32 * mem[(32 * _2962) + (2 * ceil32(return_data.size)) + 512] - 1) + (32 * _2962) + (2 * ceil32(return_data.size)) + 544], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 666 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 772 len 0] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 22]
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, _11006, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 666 len 10]
                        if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 708 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 772 len 0] = 0
                        call address(ext_call.return_data[0]).0xb6c89106 with:
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + 740]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5742, _11006, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 831 len 10]
                            if ext_code.hash(address(ext_call.return_data[0])) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len 64] = 0, 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 965 len 4] = 0
                            call address(ext_call.return_data[0]).0xb6c89106 with:
                                 gas gas_remaining wei
                                args -1, mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len 28], mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = return_data.size
                            mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = 32
                                mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910] = 32
                                mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 942] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 874
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[(32 * _8606) + (32 * _2962) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 905]:
                                    mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 874] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = 32
                                    mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910] = 42
                                    mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 942 len 42] = 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 874
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878] = address(ext_call.return_data[0])
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 910] = address(ext_call.return_data[0])
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 942] = _5742
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 974] = _11006
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1006] = 0
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1038] = 0
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1070] = msg.sender
                            mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 1102] = block.timestamp
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _8606) + (32 * _2962) + (4 * ceil32(return_data.size)) + 878 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
