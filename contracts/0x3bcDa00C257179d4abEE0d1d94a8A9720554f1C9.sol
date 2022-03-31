contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3)
#  - zapOut(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor101;
uint32 stor102;
address stor102;
uint256 stor102;
mapping of uint8 stor103;
mapping of address routePair;
array of address tokens;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;

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

function isLP(address arg1) {
    require calldata.size - 4 >= 32
    return not bool(stor103[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRoutePairAddress(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    routePair[address(arg1)] = arg2
}

function setNotLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[address(arg1)] = 1
    if not stor103[address(arg1)]:
        tokens.length++
        stor7FB4[stor105.length] = arg1
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require arg1 < tokens.length
    stor103[stor105[arg1]] = 0
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
        revert with 0, 'dOwnable: caller is not the owne'
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
        revert with 0, 'dOwnable: caller is not the owne'
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
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
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
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not owner:
        revert with 0, 'ZapETH: owner must be set'
    stor101 = arg1
    address(stor102) = arg2
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[0xc778417e063141139fce010982780140aa0cd5000000000000000000000000] = 1
    if not stor103[0xc778417e063141139fce010982780140aa0cd5000000000000000000000000]:
        tokens.length++
        stor7FB4[stor105.length] = 0xc778417e063141139fce010982780140aa0cd5
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[0xe734779ca7a5eca71bf87af3938b60b22f628cd3] = 1
    if not stor103[0xe734779ca7a5eca71bf87af3938b60b22f628cd3]:
        tokens.length++
        stor7FB4[stor105.length] = 0xe734779ca7a5eca71bf87af3938b60b22f628cd3
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[stor101] = 1
    if not stor103[stor101]:
        tokens.length++
        stor7FB4[stor105.length] = stor101
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    stor103[0xe734779ca7a5eca71bf87af3938b60b22f628cd3] = 1
    if not stor103[0xe734779ca7a5eca71bf87af3938b60b22f628cd3]:
        tokens.length++
        stor7FB4[stor105.length] = 0xe734779ca7a5eca71bf87af3938b60b22f628cd3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    while idx < tokens.length:
        mem[0] = 105
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
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        mem[0] = 105
        if 0x73000000000000000000000000c778417e063141139fce010982780140aa0cd5 == tokens[idx]:
            mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(tokens[idx])
            call tokens[idx].withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        mem[0] = tokens[idx]
        mem[32] = 104
        if not routePair[stor105[idx]]:
            _69 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 < mem[_69]:
                mem[_69 + 32] = tokens[idx]
                mem[0] = tokens[idx]
                if 1 < mem[_69]:
                    mem[_69 + 64] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[_69 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
                    mem[_69 + 100] = ext_call.return_data[0]
                    mem[_69 + 132] = 0
                    mem[_69 + 196] = owner
                    mem[_69 + 228] = block.timestamp
                    mem[_69 + 164] = 160
                    mem[_69 + 260] = mem[_69]
                    s = 0
                    while s < 32 * mem[_69]:
                        mem[s + _69 + 292] = mem[s + _69 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_69 + 260 len (32 * mem[_69]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_69 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _69 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    _115 = mem[_69 + 96 len 4], ext_call.return_data[0 len 28]
                    require mem[_69 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_69 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[_69 + mem[_69 + 96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[_69 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[_69 + mem[_69 + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    mem[_69 + ceil32(return_data.size) + 96] = mem[_69 + mem[_69 + 96 len 4], ext_call.return_data[0 len 28] + 96]
                    _121 = mem[_69 + _115 + 96]
                    s = 0
                    while s < 32 * _121:
                        mem[s + _69 + ceil32(return_data.size) + 128] = mem[s + _69 + _115 + 128]
                        s = s + 32
                        continue 
                    mem[64] = (32 * _121) + _69 + ceil32(return_data.size) + 128
                    if mem[_69 + ceil32(return_data.size) + 96] - 1 < mem[_69 + ceil32(return_data.size) + 96]:
                        idx = idx + 1
                        continue 
        else:
            _71 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 < mem[_71]:
                mem[_71 + 32] = tokens[idx]
                mem[0] = tokens[idx]
                mem[32] = 104
                if 1 < mem[_71]:
                    mem[_71 + 64] = routePair[stor105[idx]]
                    mem[0] = tokens[idx]
                    if 2 < mem[_71]:
                        mem[_71 + 96] = 0xc778417e063141139fce010982780140aa0cd5
                        mem[_71 + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                        mem[_71 + 132] = ext_call.return_data[0]
                        mem[_71 + 164] = 0
                        mem[_71 + 228] = owner
                        mem[_71 + 260] = block.timestamp
                        mem[_71 + 196] = 160
                        mem[_71 + 292] = mem[_71]
                        s = 0
                        while s < 32 * mem[_71]:
                            mem[s + _71 + 324] = mem[s + _71 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(stor102))
                        call address(stor102).swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_71 + 292 len (32 * mem[_71]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_71 + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _71 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        _117 = mem[_71 + 128 len 4], ext_call.return_data[0 len 28]
                        require mem[_71 + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[_71 + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[_71 + mem[_71 + 128 len 4], ext_call.return_data[0 len 28] + 128] <= 4294967296 and mem[_71 + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[_71 + mem[_71 + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 32 <= return_data.size
                        mem[_71 + ceil32(return_data.size) + 128] = mem[_71 + mem[_71 + 128 len 4], ext_call.return_data[0 len 28] + 128]
                        _122 = mem[_71 + _117 + 128]
                        s = 0
                        while s < 32 * _122:
                            mem[s + _71 + ceil32(return_data.size) + 160] = mem[s + _71 + _117 + 160]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _122) + _71 + ceil32(return_data.size) + 160
                        if mem[_71 + ceil32(return_data.size) + 128] - 1 < mem[_71 + ceil32(return_data.size) + 128]:
                            idx = idx + 1
                            continue 
        revert
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function zapIn(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor103[address(arg1)]:
        if not routePair[address(arg1)]:
            mem[160] = arg1
            mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[196] = 0
            mem[260] = msg.sender
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(address(stor102))
            call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
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
            require ext_code.size(address(stor102))
            call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
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
    mem[32] = 104
    if 0x73000000000000000000000000c778417e063141139fce010982780140aa0cd5 == address(ext_call.return_data[0]):
        if 0x73000000000000000000000000c778417e063141139fce010982780140aa0cd5 == address(ext_call.return_data[0]):
            if not routePair[address(ext_call.return_data[0])]:
                mem[96] = 2
                mem[0] = address(ext_call.return_data[0])
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[160] = address(ext_call.return_data[0])
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = 0
                mem[260] = this.address
                mem[292] = block.timestamp
                mem[228] = 128
                mem[324] = 2
                mem[356 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _2582 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= 4294967296
                require mem[192 len 4], 0 + 32 <= return_data.size
                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                _2618 = mem[_2582 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_2582 + 192])] = mem[_2582 + 224 len floor32(mem[_2582 + 192])]
                mem[64] = (32 * _2618) + ceil32(return_data.size) + 224
                require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                _4996 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor102)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2618) + ceil32(return_data.size) + 346 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2618) + ceil32(return_data.size) + 494 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2618) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2618) + ceil32(return_data.size) + 452 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2618) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _2618) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2618) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2618) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _4996, 0, 0, msg.sender, block.timestamp
            else:
                mem[96] = 3
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 104
                mem[160] = routePair[address(ext_call.return_data[0])]
                mem[192] = address(ext_call.return_data[0])
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 128
                mem[356] = 3
                mem[388 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _2584 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= 4294967296
                require mem[224 len 4], 0 + 32 <= return_data.size
                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                _2619 = mem[_2584 + 224]
                mem[ceil32(return_data.size) + 256 len floor32(mem[_2584 + 224])] = mem[_2584 + 256 len floor32(mem[_2584 + 224])]
                mem[64] = (32 * _2619) + ceil32(return_data.size) + 256
                require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
                _4997 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor102)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2619) + ceil32(return_data.size) + 378 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2619) + ceil32(return_data.size) + 526 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2619) + ceil32(return_data.size) + 420 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2619) + ceil32(return_data.size) + 484 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2619) + ceil32(return_data.size) + 484 len 4]
                    require return_data.size
                    mem[(32 * _2619) + ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2619) + ceil32(return_data.size) + 452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2619) + ceil32(return_data.size) + ceil32(return_data.size) + 531 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _4997, 0, 0, msg.sender, block.timestamp
        else:
            if not routePair[address(ext_call.return_data[0])]:
                mem[96] = 2
                mem[0] = address(ext_call.return_data[0])
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[160] = address(ext_call.return_data[0])
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = 0
                mem[260] = this.address
                mem[292] = block.timestamp
                mem[228] = 128
                mem[324] = 2
                mem[356 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _2586 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= 4294967296
                require mem[192 len 4], 0 + 32 <= return_data.size
                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                _2620 = mem[_2586 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_2586 + 192])] = mem[_2586 + 224 len floor32(mem[_2586 + 192])]
                mem[64] = (32 * _2620) + ceil32(return_data.size) + 224
                require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                _4998 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor102)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2620) + ceil32(return_data.size) + 346 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2620) + ceil32(return_data.size) + 494 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2620) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2620) + ceil32(return_data.size) + 452 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2620) + ceil32(return_data.size) + 452 len 4]
                    require return_data.size
                    mem[(32 * _2620) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2620) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2620) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _4998, 0, 0, msg.sender, block.timestamp
            else:
                mem[96] = 3
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 104
                mem[160] = routePair[address(ext_call.return_data[0])]
                mem[192] = address(ext_call.return_data[0])
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 128
                mem[356] = 3
                mem[388 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _2588 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= 4294967296
                require mem[224 len 4], 0 + 32 <= return_data.size
                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                _2621 = mem[_2588 + 224]
                mem[ceil32(return_data.size) + 256 len floor32(mem[_2588 + 224])] = mem[_2588 + 256 len floor32(mem[_2588 + 224])]
                mem[64] = (32 * _2621) + ceil32(return_data.size) + 256
                require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
                _4999 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(stor102)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2621) + ceil32(return_data.size) + 378 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2621) + ceil32(return_data.size) + 526 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2621) + ceil32(return_data.size) + 420 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2621) + ceil32(return_data.size) + 484 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2621) + ceil32(return_data.size) + 484 len 4]
                    require return_data.size
                    mem[(32 * _2621) + ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _2621) + ceil32(return_data.size) + 452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2621) + ceil32(return_data.size) + ceil32(return_data.size) + 531 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(address(stor102))
                    call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _4999, 0, 0, msg.sender, block.timestamp
    else:
        if 0x73000000000000000000000000c778417e063141139fce010982780140aa0cd5 == address(ext_call.return_data[0]):
            if 0x73000000000000000000000000c778417e063141139fce010982780140aa0cd5 == address(ext_call.return_data[0]):
                if not routePair[address(ext_call.return_data[0])]:
                    mem[96] = 2
                    mem[0] = address(ext_call.return_data[0])
                    mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[196] = 0
                    mem[260] = this.address
                    mem[292] = block.timestamp
                    mem[228] = 128
                    mem[324] = 2
                    mem[356 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _2594 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= 4294967296
                    require mem[192 len 4], 0 + 32 <= return_data.size
                    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    _2624 = mem[_2594 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_2594 + 192])] = mem[_2594 + 224 len floor32(mem[_2594 + 192])]
                    mem[64] = (32 * _2624) + ceil32(return_data.size) + 224
                    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                    _5002 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2624) + ceil32(return_data.size) + 346 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2624) + ceil32(return_data.size) + 494 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2624) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2624) + ceil32(return_data.size) + 452 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2624) + ceil32(return_data.size) + 452 len 4]
                        require return_data.size
                        mem[(32 * _2624) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2624) + ceil32(return_data.size) + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2624) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5002, 0, 0, msg.sender, block.timestamp
                else:
                    mem[96] = 3
                    mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 104
                    mem[160] = routePair[address(ext_call.return_data[0])]
                    mem[192] = address(ext_call.return_data[0])
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 128
                    mem[356] = 3
                    mem[388 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _2596 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= 4294967296
                    require mem[224 len 4], 0 + 32 <= return_data.size
                    require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    _2625 = mem[_2596 + 224]
                    mem[ceil32(return_data.size) + 256 len floor32(mem[_2596 + 224])] = mem[_2596 + 256 len floor32(mem[_2596 + 224])]
                    mem[64] = (32 * _2625) + ceil32(return_data.size) + 256
                    require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
                    _5003 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2625) + ceil32(return_data.size) + 378 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2625) + ceil32(return_data.size) + 526 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2625) + ceil32(return_data.size) + 420 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2625) + ceil32(return_data.size) + 484 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2625) + ceil32(return_data.size) + 484 len 4]
                        require return_data.size
                        mem[(32 * _2625) + ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2625) + ceil32(return_data.size) + 452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2625) + ceil32(return_data.size) + ceil32(return_data.size) + 531 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5003, 0, 0, msg.sender, block.timestamp
            else:
                if not routePair[address(ext_call.return_data[0])]:
                    mem[96] = 2
                    mem[0] = address(ext_call.return_data[0])
                    mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[160] = address(ext_call.return_data[0])
                    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[196] = 0
                    mem[260] = this.address
                    mem[292] = block.timestamp
                    mem[228] = 128
                    mem[324] = 2
                    mem[356 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _2598 = mem[192 len 4], 0
                    require mem[192 len 4], 0 <= 4294967296
                    require mem[192 len 4], 0 + 32 <= return_data.size
                    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                    _2626 = mem[_2598 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_2598 + 192])] = mem[_2598 + 224 len floor32(mem[_2598 + 192])]
                    mem[64] = (32 * _2626) + ceil32(return_data.size) + 224
                    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                    _5004 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2626) + ceil32(return_data.size) + 346 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2626) + ceil32(return_data.size) + 494 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2626) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2626) + ceil32(return_data.size) + 452 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2626) + ceil32(return_data.size) + 452 len 4]
                        require return_data.size
                        mem[(32 * _2626) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2626) + ceil32(return_data.size) + 420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2626) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5004, 0, 0, msg.sender, block.timestamp
                else:
                    mem[96] = 3
                    mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 104
                    mem[160] = routePair[address(ext_call.return_data[0])]
                    mem[192] = address(ext_call.return_data[0])
                    mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp
                    mem[260] = 128
                    mem[356] = 3
                    mem[388 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value / 2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _2600 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= 4294967296
                    require mem[224 len 4], 0 + 32 <= return_data.size
                    require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    _2627 = mem[_2600 + 224]
                    mem[ceil32(return_data.size) + 256 len floor32(mem[_2600 + 224])] = mem[_2600 + 256 len floor32(mem[_2600 + 224])]
                    mem[64] = (32 * _2627) + ceil32(return_data.size) + 256
                    require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
                    _5005 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256], 0, 0, msg.sender, block.timestamp
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _2627) + ceil32(return_data.size) + 378 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _2627) + ceil32(return_data.size) + 526 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _2627) + ceil32(return_data.size) + 420 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _2627) + ceil32(return_data.size) + 484 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2627) + ceil32(return_data.size) + 484 len 4]
                        require return_data.size
                        mem[(32 * _2627) + ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _2627) + ceil32(return_data.size) + 452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2627) + ceil32(return_data.size) + ceil32(return_data.size) + 531 len 22]
                        if msg.value / 2 > msg.value:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(address(stor102))
                        call address(stor102).addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                           value msg.value - (msg.value / 2) wei
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), _5005, 0, 0, msg.sender, block.timestamp
        else:
            if not routePair[address(ext_call.return_data[0])]:
                mem[96] = 2
                mem[0] = address(ext_call.return_data[0])
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[160] = address(ext_call.return_data[0])
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = 0
                mem[260] = this.address
                mem[292] = block.timestamp
                mem[228] = 128
                mem[324] = 2
                mem[356 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _2590 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= 4294967296
                require mem[192 len 4], 0 + 32 <= return_data.size
                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                _2622 = mem[_2590 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_2590 + 192])] = mem[_2590 + 224 len floor32(mem[_2590 + 192])]
                mem[64] = (32 * _2622) + ceil32(return_data.size) + 224
                require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                _5000 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[32] = 104
                if not routePair[address(ext_call.return_data[0])]:
                    mem[(32 * _2622) + ceil32(return_data.size) + 224] = 2
                    mem[0] = address(ext_call.return_data[0])
                    mem[(32 * _2622) + ceil32(return_data.size) + 256] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[(32 * _2622) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
                    mem[(32 * _2622) + ceil32(return_data.size) + 320] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2622) + ceil32(return_data.size) + 324] = 0
                    mem[(32 * _2622) + ceil32(return_data.size) + 388] = this.address
                    mem[(32 * _2622) + ceil32(return_data.size) + 420] = block.timestamp
                    mem[(32 * _2622) + ceil32(return_data.size) + 356] = 128
                    mem[(32 * _2622) + ceil32(return_data.size) + 452] = 2
                    mem[(32 * _2622) + ceil32(return_data.size) + 484 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _2622) + ceil32(return_data.size) + 484 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2622) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2622) + (2 * ceil32(return_data.size)) + 320
                    require return_data.size >= 32
                    _7342 = mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0
                    require mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
                    require mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 + 320] <= 4294967296 and mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 + 320]) + 32 <= return_data.size
                    mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 320 len 4], 0 + 320]
                    _7434 = mem[(32 * _2622) + ceil32(return_data.size) + _7342 + 320]
                    mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _2622) + ceil32(return_data.size) + _7342 + 320])] = mem[(32 * _2622) + ceil32(return_data.size) + _7342 + 352 len floor32(mem[(32 * _2622) + ceil32(return_data.size) + _7342 + 320])]
                    mem[64] = (32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 352
                    require mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 320] - 1 < mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 320]
                    _9374 = mem[(32 * mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _2622) + (2 * ceil32(return_data.size)) + 352]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, mem[(32 * mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _2622) + (2 * ceil32(return_data.size)) + 352], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 474 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 622 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 516 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len 0] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len 4]
                            require return_data.size
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, _9374, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 474 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 622 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 516 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len 4]
                        require return_data.size
                        mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, _9374, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 639 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = 0, address(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args -1, mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 28], mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                            require return_data.size
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
                            mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 686] = 32
                                mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = 32
                                mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 682
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7434) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                    mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 686] = 32
                                    mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = 42
                                    mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 682
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 686] = address(ext_call.return_data[0])
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = address(ext_call.return_data[0])
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750] = _5000
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 782] = _9374
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 814] = 0
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 846] = 0
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 878] = msg.sender
                            mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 910] = block.timestamp
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _7434) + (32 * _2622) + (4 * ceil32(return_data.size)) + 686 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(32 * _2622) + ceil32(return_data.size) + 224] = 3
                    mem[(32 * _2622) + ceil32(return_data.size) + 256] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 104
                    mem[(32 * _2622) + ceil32(return_data.size) + 288] = routePair[address(ext_call.return_data[0])]
                    mem[(32 * _2622) + ceil32(return_data.size) + 320] = address(ext_call.return_data[0])
                    mem[(32 * _2622) + ceil32(return_data.size) + 352] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2622) + ceil32(return_data.size) + 356] = 0
                    mem[(32 * _2622) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _2622) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _2622) + ceil32(return_data.size) + 388] = 128
                    mem[(32 * _2622) + ceil32(return_data.size) + 484] = 3
                    mem[(32 * _2622) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(32 * _2622) + ceil32(return_data.size) + 516 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2622) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2622) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _7344 = mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0
                    require mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 <= 4294967296
                    require mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 + 352] <= 4294967296 and mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 + (32 * mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 + 352]) + 32 <= return_data.size
                    mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _2622) + ceil32(return_data.size) + mem[(32 * _2622) + ceil32(return_data.size) + 352 len 4], 0 + 352]
                    _7435 = mem[(32 * _2622) + ceil32(return_data.size) + _7344 + 352]
                    mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _2622) + ceil32(return_data.size) + _7344 + 352])] = mem[(32 * _2622) + ceil32(return_data.size) + _7344 + 384 len floor32(mem[(32 * _2622) + ceil32(return_data.size) + _7344 + 352])]
                    require mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352] - 1 < mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352]
                    _9375 = mem[(32 * mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352] - 1) + (32 * _2622) + (2 * ceil32(return_data.size)) + 384]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, mem[(32 * mem[(32 * _2622) + (2 * ceil32(return_data.size)) + 352] - 1) + (32 * _2622) + (2 * ceil32(return_data.size)) + 384], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 506 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 654 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 612 len 0] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 612 len 4]
                            require return_data.size
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len 22]
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, _9375, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 506 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 654 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 548 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 612 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 612 len 4]
                        require return_data.size
                        mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + 580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5000, _9375, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 671 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 64] = 0, address(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 805 len 4] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args -1, mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 28], mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len 4]
                            require return_data.size
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = return_data.size
                            mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 714] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = 32
                                mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750] = 32
                                mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 782] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 714
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7435) + (32 * _2622) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745]:
                                    mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 714] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = 32
                                    mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750] = 42
                                    mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 782 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 714
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718] = address(ext_call.return_data[0])
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 750] = address(ext_call.return_data[0])
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 782] = _5000
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 814] = _9375
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 846] = 0
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 878] = 0
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 910] = msg.sender
                            mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 942] = block.timestamp
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _7435) + (32 * _2622) + (4 * ceil32(return_data.size)) + 718 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
            else:
                mem[96] = 3
                mem[128] = 0xc778417e063141139fce010982780140aa0cd5
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 104
                mem[160] = routePair[address(ext_call.return_data[0])]
                mem[192] = address(ext_call.return_data[0])
                mem[224] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp
                mem[260] = 128
                mem[356] = 3
                mem[388 len 0] = None
                require ext_code.size(address(stor102))
                call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 3, mem[388 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _2592 = mem[224 len 4], 0
                require mem[224 len 4], 0 <= 4294967296
                require mem[224 len 4], 0 + 32 <= return_data.size
                require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                _2623 = mem[_2592 + 224]
                mem[ceil32(return_data.size) + 256 len floor32(mem[_2592 + 224])] = mem[_2592 + 256 len floor32(mem[_2592 + 224])]
                mem[64] = (32 * _2623) + ceil32(return_data.size) + 256
                require mem[ceil32(return_data.size) + 224] - 1 < mem[ceil32(return_data.size) + 224]
                _5001 = mem[(32 * mem[ceil32(return_data.size) + 224] - 1) + ceil32(return_data.size) + 256]
                if msg.value / 2 > msg.value:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[32] = 104
                if not routePair[address(ext_call.return_data[0])]:
                    mem[(32 * _2623) + ceil32(return_data.size) + 256] = 2
                    mem[0] = address(ext_call.return_data[0])
                    mem[(32 * _2623) + ceil32(return_data.size) + 288] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[(32 * _2623) + ceil32(return_data.size) + 320] = address(ext_call.return_data[0])
                    mem[(32 * _2623) + ceil32(return_data.size) + 352] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2623) + ceil32(return_data.size) + 356] = 0
                    mem[(32 * _2623) + ceil32(return_data.size) + 420] = this.address
                    mem[(32 * _2623) + ceil32(return_data.size) + 452] = block.timestamp
                    mem[(32 * _2623) + ceil32(return_data.size) + 388] = 128
                    mem[(32 * _2623) + ceil32(return_data.size) + 484] = 2
                    mem[(32 * _2623) + ceil32(return_data.size) + 516 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _2623) + ceil32(return_data.size) + 516 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2623) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2623) + (2 * ceil32(return_data.size)) + 352
                    require return_data.size >= 32
                    _7346 = mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0
                    require mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 <= 4294967296
                    require mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 + 352] <= 4294967296 and mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 + (32 * mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 + 352]) + 32 <= return_data.size
                    mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 352 len 4], 0 + 352]
                    _7436 = mem[(32 * _2623) + ceil32(return_data.size) + _7346 + 352]
                    mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _2623) + ceil32(return_data.size) + _7346 + 352])] = mem[(32 * _2623) + ceil32(return_data.size) + _7346 + 384 len floor32(mem[(32 * _2623) + ceil32(return_data.size) + _7346 + 352])]
                    require mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 352] - 1 < mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 352]
                    _9376 = mem[(32 * mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 352] - 1) + (32 * _2623) + (2 * ceil32(return_data.size)) + 384]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, mem[(32 * mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 352] - 1) + (32 * _2623) + (2 * ceil32(return_data.size)) + 384], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 506 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 654 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 548 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len 0] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len 4]
                            require return_data.size
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len 22]
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, _9376, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 506 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 654 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 548 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len 4]
                        require return_data.size
                        mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, _9376, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 671 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len 64] = 0, address(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 805 len 4] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args -1, mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 28], mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len 4]
                            require return_data.size
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = return_data.size
                            mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 714] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 718] = 32
                                mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = 32
                                mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 714
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7436) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745]:
                                    mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 714] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 718] = 32
                                    mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = 42
                                    mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 714
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 718] = address(ext_call.return_data[0])
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = address(ext_call.return_data[0])
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782] = _5001
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 814] = _9376
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 846] = 0
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 878] = 0
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 910] = msg.sender
                            mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 942] = block.timestamp
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _7436) + (32 * _2623) + (4 * ceil32(return_data.size)) + 718 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
                else:
                    mem[(32 * _2623) + ceil32(return_data.size) + 256] = 3
                    mem[(32 * _2623) + ceil32(return_data.size) + 288] = 0xc778417e063141139fce010982780140aa0cd5
                    mem[0] = address(ext_call.return_data[0])
                    mem[32] = 104
                    mem[(32 * _2623) + ceil32(return_data.size) + 320] = routePair[address(ext_call.return_data[0])]
                    mem[(32 * _2623) + ceil32(return_data.size) + 352] = address(ext_call.return_data[0])
                    mem[(32 * _2623) + ceil32(return_data.size) + 384] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2623) + ceil32(return_data.size) + 388] = 0
                    mem[(32 * _2623) + ceil32(return_data.size) + 452] = this.address
                    mem[(32 * _2623) + ceil32(return_data.size) + 484] = block.timestamp
                    mem[(32 * _2623) + ceil32(return_data.size) + 420] = 128
                    mem[(32 * _2623) + ceil32(return_data.size) + 516] = 3
                    mem[(32 * _2623) + ceil32(return_data.size) + 548 len 0] = None
                    require ext_code.size(address(stor102))
                    call address(stor102).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp, 3, mem[(32 * _2623) + ceil32(return_data.size) + 548 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _2623) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _2623) + (2 * ceil32(return_data.size)) + 384
                    require return_data.size >= 32
                    _7348 = mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0
                    require mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 <= 4294967296
                    require mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 + 32 <= return_data.size
                    require mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 + 384] <= 4294967296 and mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 + (32 * mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 + 384]) + 32 <= return_data.size
                    mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _2623) + ceil32(return_data.size) + mem[(32 * _2623) + ceil32(return_data.size) + 384 len 4], 0 + 384]
                    _7437 = mem[(32 * _2623) + ceil32(return_data.size) + _7348 + 384]
                    mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _2623) + ceil32(return_data.size) + _7348 + 384])] = mem[(32 * _2623) + ceil32(return_data.size) + _7348 + 416 len floor32(mem[(32 * _2623) + ceil32(return_data.size) + _7348 + 384])]
                    require mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384] - 1 < mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384]
                    _9377 = mem[(32 * mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384] - 1) + (32 * _2623) + (2 * ceil32(return_data.size)) + 416]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(stor102)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, mem[(32 * mem[(32 * _2623) + (2 * ceil32(return_data.size)) + 384] - 1) + (32 * _2623) + (2 * ceil32(return_data.size)) + 416], 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 538 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 686 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 644 len 0] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 644 len 4]
                            require return_data.size
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 22]
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, _9377, 0, 0, msg.sender, block.timestamp
                    else:
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 538 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 686 len 26]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 580 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 644 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                           funct uint32(stor102)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor102), uint32(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 644 len 4]
                        require return_data.size
                        mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + 612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 22]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(stor102)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _5001, _9377, 0, 0, msg.sender, block.timestamp
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(stor102)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            54,
                                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 703 len 10]
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xab416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 26]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 64] = 0, address(stor102), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 837 len 4] = 0
                            call address(ext_call.return_data[0]) with:
                               funct uint32(stor102)
                                 gas gas_remaining wei
                                args -1, mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 28], mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len 4]
                            require return_data.size
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = return_data.size
                            mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 746] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = 32
                                mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782] = 32
                                mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 814] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 746
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _7437) + (32 * _2623) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 777]:
                                    mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 746] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = 32
                                    mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782] = 42
                                    mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 814 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                    revert with memory
                                      from (32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 746
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750] = address(ext_call.return_data[0])
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 782] = address(ext_call.return_data[0])
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 814] = _5001
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 846] = _9377
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 878] = 0
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 910] = 0
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 942] = msg.sender
                            mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 974] = block.timestamp
                            require ext_code.size(address(stor102))
                            call address(stor102).addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                                 gas gas_remaining wei
                                args mem[(32 * _7437) + (32 * _2623) + (4 * ceil32(return_data.size)) + 750 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
