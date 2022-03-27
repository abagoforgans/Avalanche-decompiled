contract main {




// =====================  Runtime code  =====================


const balanceWAVAX = ext_call.return_data[0]

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
array of struct sub_24cc0766;

function sub_24cc0766(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_24cc0766.length
    return sub_24cc0766[arg1].field_0
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
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

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor1.field_160):
        Mask(96, 0, stor1.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        Mask(96, 0, stor1.field_160) = 1
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

function process() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Caller is not an EOA'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    if eth.balance(this.address) > 0:
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
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
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
        require mem[260 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[260 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260] <= 4294967296 and mem[260 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[260 len 4], ext_call.return_data[0 len 28] + 260]) + 32 <= return_data.size
    else:
        mem[260] = return_data.size
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261] <= 4294967296 and mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 261 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 261]) + 32 <= return_data.size
    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0x9a8baedf with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0x9e048952 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf8ebc5ff: ext_call.return_data[0], ext_call.return_data[0], msg.sender
    stor0 = 1
}



}
