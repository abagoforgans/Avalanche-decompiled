contract main {




// =====================  Runtime code  =====================


const balanceCYCLE = ext_call.return_data[0]

const balanceWAVAX = ext_call.return_data[0]

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5


uint256 stor0;
uint8 paused; offset 160
uint128 stor1; offset 160
address owner;
array of struct sub_24cc0766;
uint256 dailyEmission;
uint256 sub_4c689868;

function sub_24cc0766(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_24cc0766.length
    return sub_24cc0766[arg1].field_0
}

function sub_4c689868(?) {
    return sub_4c689868
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function dailyEmission() {
    return dailyEmission
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_233750e1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dailyEmission = arg1
    emit 0xbd437c62: arg1
}

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        stor1 = 0
        emit Unpaused(msg.sender);
    else:
        stor1 = 1
        emit Paused(msg.sender);
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

function clearRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0]
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function process() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Caller is not an EOA'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    if eth.balance(this.address) <= 0:
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
        staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[264] = ext_call.return_data[0]
                mem[296] = 0
                mem[360] = this.address
                mem[392] = block.timestamp + 120
                mem[328] = 160
                mem[424] = sub_24cc0766.length
                if not sub_24cc0766.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 260
                    require return_data.size >= 32
                    _1994 = mem[260 len 4], ext_call.return_data[0 len 28]
                    require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                    mem[ceil32(return_data.size) + 292 len floor32(mem[_1994 + 260])] = mem[_1994 + 292 len floor32(mem[_1994 + 260])]
                else:
                    mem[0] = 2
                    mem[456] = address(sub_24cc0766.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_24cc0766.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_24cc0766[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 260
                    require return_data.size >= 32
                    _3135 = mem[260 len 4], ext_call.return_data[0 len 28]
                    require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                    mem[ceil32(return_data.size) + 292 len floor32(mem[_3135 + 260])] = mem[_3135 + 292 len floor32(mem[_3135 + 260])]
                sub_4c689868 = block.timestamp
                require 1 < mem[ceil32(return_data.size) + 260]
                if mem[ceil32(return_data.size) + 324] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 324]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 324]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + 324], msg.sender
            else:
                mem[260] = return_data.size
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + 361] = this.address
                    mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                    mem[ceil32(return_data.size) + 329] = 160
                    mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                    if not sub_24cc0766.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _1877 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1877 + ceil32(return_data.size) + 261])] = mem[_1877 + ceil32(return_data.size) + 293 len floor32(mem[_1877 + ceil32(return_data.size) + 261])]
                    else:
                        mem[0] = 2
                        mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                            mem[idx + 32] = sub_24cc0766[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _3137 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3137 + ceil32(return_data.size) + 261])] = mem[_3137 + ceil32(return_data.size) + 293 len floor32(mem[_3137 + ceil32(return_data.size) + 261])]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + 361] = this.address
                    mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                    mem[ceil32(return_data.size) + 329] = 160
                    mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                    if not sub_24cc0766.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _1997 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1997 + ceil32(return_data.size) + 261])] = mem[_1997 + ceil32(return_data.size) + 293 len floor32(mem[_1997 + ceil32(return_data.size) + 261])]
                    else:
                        mem[0] = 2
                        mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                            mem[idx + 32] = sub_24cc0766[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _3139 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3139 + ceil32(return_data.size) + 261])] = mem[_3139 + ceil32(return_data.size) + 293 len floor32(mem[_3139 + ceil32(return_data.size) + 261])]
                sub_4c689868 = block.timestamp
                require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
        else:
            if sub_4c689868 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if dailyEmission:
                require dailyEmission
                if (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / dailyEmission != block.timestamp - sub_4c689868:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600 < ext_call.return_data[0]:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2000 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2000 + 260])] = mem[_2000 + 292 len floor32(mem[_2000 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3143 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3143 + 260])] = mem[_3143 + 292 len floor32(mem[_3143 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324] < (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1885 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1885 + ceil32(return_data.size) + 261])] = mem[_1885 + ceil32(return_data.size) + 293 len floor32(mem[_1885 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3145 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3145 + ceil32(return_data.size) + 261])] = mem[_3145 + ceil32(return_data.size) + 293 len floor32(mem[_3145 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2003 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2003 + ceil32(return_data.size) + 261])] = mem[_2003 + ceil32(return_data.size) + 293 len floor32(mem[_2003 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3147 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3147 + ceil32(return_data.size) + 261])] = mem[_3147 + ceil32(return_data.size) + 293 len floor32(mem[_3147 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2006 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2006 + 260])] = mem[_2006 + 292 len floor32(mem[_2006 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3151 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3151 + 260])] = mem[_3151 + 292 len floor32(mem[_3151 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + 324] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1893 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1893 + ceil32(return_data.size) + 261])] = mem[_1893 + ceil32(return_data.size) + 293 len floor32(mem[_1893 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3153 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3153 + ceil32(return_data.size) + 261])] = mem[_3153 + ceil32(return_data.size) + 293 len floor32(mem[_3153 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2009 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2009 + ceil32(return_data.size) + 261])] = mem[_2009 + ceil32(return_data.size) + 293 len floor32(mem[_2009 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3155 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3155 + ceil32(return_data.size) + 261])] = mem[_3155 + ceil32(return_data.size) + 293 len floor32(mem[_3155 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
            else:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < ext_call.return_data[0]:
                    mem[228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[352 len 4] = 0
                    mem[324 len 0] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2012 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2012 + 260])] = mem[_2012 + 292 len floor32(mem[_2012 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3159 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3159 + 260])] = mem[_3159 + 292 len floor32(mem[_3159 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if mem[ceil32(return_data.size) + 324] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 324]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 324]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1901 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1901 + ceil32(return_data.size) + 261])] = mem[_1901 + ceil32(return_data.size) + 293 len floor32(mem[_1901 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3161 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3161 + ceil32(return_data.size) + 261])] = mem[_3161 + ceil32(return_data.size) + 293 len floor32(mem[_3161 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2015 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2015 + ceil32(return_data.size) + 261])] = mem[_2015 + ceil32(return_data.size) + 293 len floor32(mem[_2015 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3163 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3163 + ceil32(return_data.size) + 261])] = mem[_3163 + ceil32(return_data.size) + 293 len floor32(mem[_3163 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
                else:
                    mem[132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[164] = 2 * ext_call.return_data[0]
                    mem[96] = 68
                    mem[132 len 28] = 0xe54ca86531e17ef3616d22ca28b0d458
                    mem[128 len 4] = approve(address rg1, uint256 rg2)
                    mem[196] = 32
                    mem[228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    mem[352 len 4] = 0
                    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2018 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2018 + 260])] = mem[_2018 + 292 len floor32(mem[_2018 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3167 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3167 + 260])] = mem[_3167 + 292 len floor32(mem[_3167 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + 324] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1909 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1909 + ceil32(return_data.size) + 261])] = mem[_1909 + ceil32(return_data.size) + 293 len floor32(mem[_1909 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3169 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3169 + ceil32(return_data.size) + 261])] = mem[_3169 + ceil32(return_data.size) + 293 len floor32(mem[_3169 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2021 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2021 + ceil32(return_data.size) + 261])] = mem[_2021 + ceil32(return_data.size) + 293 len floor32(mem[_2021 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3171 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3171 + ceil32(return_data.size) + 261])] = mem[_3171 + ceil32(return_data.size) + 293 len floor32(mem[_3171 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
    else:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
        staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[352 len 4] = 0
            mem[324 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[264] = ext_call.return_data[0]
                mem[296] = 0
                mem[360] = this.address
                mem[392] = block.timestamp + 120
                mem[328] = 160
                mem[424] = sub_24cc0766.length
                if not sub_24cc0766.length:
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 260
                    require return_data.size >= 32
                    _2024 = mem[260 len 4], ext_call.return_data[0 len 28]
                    require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                    mem[ceil32(return_data.size) + 292 len floor32(mem[_2024 + 260])] = mem[_2024 + 292 len floor32(mem[_2024 + 260])]
                else:
                    mem[0] = 2
                    mem[456] = address(sub_24cc0766.field_0)
                    idx = 456
                    s = 0
                    while (32 * sub_24cc0766.length) + 456 > idx + 32:
                        mem[idx + 32] = sub_24cc0766[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 260
                    require return_data.size >= 32
                    _3175 = mem[260 len 4], ext_call.return_data[0 len 28]
                    require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                    mem[ceil32(return_data.size) + 292 len floor32(mem[_3175 + 260])] = mem[_3175 + 292 len floor32(mem[_3175 + 260])]
                sub_4c689868 = block.timestamp
                require 1 < mem[ceil32(return_data.size) + 260]
                if mem[ceil32(return_data.size) + 324] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 324]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 324]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + 324], msg.sender
            else:
                mem[260] = return_data.size
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + 361] = this.address
                    mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                    mem[ceil32(return_data.size) + 329] = 160
                    mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                    if not sub_24cc0766.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _1917 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1917 + ceil32(return_data.size) + 261])] = mem[_1917 + ceil32(return_data.size) + 293 len floor32(mem[_1917 + ceil32(return_data.size) + 261])]
                    else:
                        mem[0] = 2
                        mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                            mem[idx + 32] = sub_24cc0766[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _3177 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3177 + ceil32(return_data.size) + 261])] = mem[_3177 + ceil32(return_data.size) + 293 len floor32(mem[_3177 + ceil32(return_data.size) + 261])]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 297] = 0
                    mem[ceil32(return_data.size) + 361] = this.address
                    mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                    mem[ceil32(return_data.size) + 329] = 160
                    mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                    if not sub_24cc0766.length:
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _2027 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2027 + ceil32(return_data.size) + 261])] = mem[_2027 + ceil32(return_data.size) + 293 len floor32(mem[_2027 + ceil32(return_data.size) + 261])]
                    else:
                        mem[0] = 2
                        mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                            mem[idx + 32] = sub_24cc0766[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                        require return_data.size >= 32
                        _3179 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3179 + ceil32(return_data.size) + 261])] = mem[_3179 + ceil32(return_data.size) + 293 len floor32(mem[_3179 + ceil32(return_data.size) + 261])]
                sub_4c689868 = block.timestamp
                require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
        else:
            if sub_4c689868 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not dailyEmission:
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if 0 < ext_call.return_data[0]:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2042 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2042 + 260])] = mem[_2042 + 292 len floor32(mem[_2042 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3199 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3199 + 260])] = mem[_3199 + 292 len floor32(mem[_3199 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if mem[ceil32(return_data.size) + 324] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 324]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + 324]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1941 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1941 + ceil32(return_data.size) + 261])] = mem[_1941 + ceil32(return_data.size) + 293 len floor32(mem[_1941 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3201 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3201 + ceil32(return_data.size) + 261])] = mem[_3201 + ceil32(return_data.size) + 293 len floor32(mem[_3201 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2045 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2045 + ceil32(return_data.size) + 261])] = mem[_2045 + ceil32(return_data.size) + 293 len floor32(mem[_2045 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3203 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3203 + ceil32(return_data.size) + 261])] = mem[_3203 + ceil32(return_data.size) + 293 len floor32(mem[_3203 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[ceil32(return_data.size) + ceil32(return_data.size) + 325]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2048 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2048 + 260])] = mem[_2048 + 292 len floor32(mem[_2048 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3207 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3207 + 260])] = mem[_3207 + 292 len floor32(mem[_3207 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + 324] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1949 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1949 + ceil32(return_data.size) + 261])] = mem[_1949 + ceil32(return_data.size) + 293 len floor32(mem[_1949 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3209 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3209 + ceil32(return_data.size) + 261])] = mem[_3209 + ceil32(return_data.size) + 293 len floor32(mem[_3209 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2051 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2051 + ceil32(return_data.size) + 261])] = mem[_2051 + ceil32(return_data.size) + 293 len floor32(mem[_2051 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3211 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3211 + ceil32(return_data.size) + 261])] = mem[_3211 + ceil32(return_data.size) + 293 len floor32(mem[_3211 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
            else:
                require dailyEmission
                if (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / dailyEmission != block.timestamp - sub_4c689868:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xb6c89106 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600 < ext_call.return_data[0]:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2030 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2030 + 260])] = mem[_2030 + 292 len floor32(mem[_2030 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3183 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3183 + 260])] = mem[_3183 + 292 len floor32(mem[_3183 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324] < (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1925 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1925 + ceil32(return_data.size) + 261])] = mem[_1925 + ceil32(return_data.size) + 293 len floor32(mem[_1925 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3185 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3185 + ceil32(return_data.size) + 261])] = mem[_3185 + ceil32(return_data.size) + 293 len floor32(mem[_3185 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2033 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2033 + ceil32(return_data.size) + 261])] = mem[_2033 + ceil32(return_data.size) + 293 len floor32(mem[_2033 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3187 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3187 + ceil32(return_data.size) + 261])] = mem[_3187 + ceil32(return_data.size) + 293 len floor32(mem[_3187 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < (block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ((block.timestamp * dailyEmission) - (sub_4c689868 * dailyEmission) / 24 * 3600) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
                else:
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca, 0, 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), 0xe54ca86531e17ef3616d22ca:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[264] = ext_call.return_data[0]
                        mem[296] = 0
                        mem[360] = this.address
                        mem[392] = block.timestamp + 120
                        mem[328] = 160
                        mem[424] = sub_24cc0766.length
                        if not sub_24cc0766.length:
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _2036 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_2036 + 260])] = mem[_2036 + 292 len floor32(mem[_2036 + 260])]
                        else:
                            mem[0] = 2
                            mem[456] = address(sub_24cc0766.field_0)
                            idx = 456
                            s = 0
                            while (32 * sub_24cc0766.length) + 456 > idx + 32:
                                mem[idx + 32] = sub_24cc0766[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[456 len 32 * sub_24cc0766.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 260
                            require return_data.size >= 32
                            _3191 = mem[260 len 4], ext_call.return_data[0 len 28]
                            require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 260] = mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]
                            mem[ceil32(return_data.size) + 292 len floor32(mem[_3191 + 260])] = mem[_3191 + 292 len floor32(mem[_3191 + 260])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + 260]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + 324] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + 324])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + 324], msg.sender
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _1933 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_1933 + ceil32(return_data.size) + 261])] = mem[_1933 + ceil32(return_data.size) + 293 len floor32(mem[_1933 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3193 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3193 + ceil32(return_data.size) + 261])] = mem[_3193 + ceil32(return_data.size) + 293 len floor32(mem[_3193 + ceil32(return_data.size) + 261])]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 261] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                            mem[ceil32(return_data.size) + 297] = 0
                            mem[ceil32(return_data.size) + 361] = this.address
                            mem[ceil32(return_data.size) + 393] = block.timestamp + 120
                            mem[ceil32(return_data.size) + 329] = 160
                            mem[ceil32(return_data.size) + 425] = sub_24cc0766.length
                            if not sub_24cc0766.length:
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _2039 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_2039 + ceil32(return_data.size) + 261])] = mem[_2039 + ceil32(return_data.size) + 293 len floor32(mem[_2039 + ceil32(return_data.size) + 261])]
                            else:
                                mem[0] = 2
                                mem[ceil32(return_data.size) + 457] = address(sub_24cc0766.field_0)
                                idx = ceil32(return_data.size) + 457
                                s = 0
                                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 457 > idx + 32:
                                    mem[idx + 32] = sub_24cc0766[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_24cc0766.length, mem[ceil32(return_data.size) + 457 len 32 * sub_24cc0766.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
                                require return_data.size >= 32
                                _3195 = mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28]
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len floor32(mem[_3195 + ceil32(return_data.size) + 261])] = mem[_3195 + ceil32(return_data.size) + 293 len floor32(mem[_3195 + ceil32(return_data.size) + 261])]
                        sub_4c689868 = block.timestamp
                        require 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 261]
                        if ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.authorize(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                        call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.cycle(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0] + mem[ceil32(return_data.size) + ceil32(return_data.size) + 325], msg.sender
    stor0 = 1
}



}
