contract main {




// =====================  Runtime code  =====================


address owner;
address uniswapV2RouterAddress;
address targetTokenAddress;
address sub_a2bafc1aAddress;
mapping of uint8 stor5;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function targetToken() {
    return targetTokenAddress
}

function owner() {
    return owner
}

function sub_a2bafc1a(?) {
    return sub_a2bafc1aAddress
}

function _fallback() payable {
    revert
}

function sub_1683e001(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_a2bafc1aAddress = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    targetTokenAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    uniswapV2RouterAddress = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
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

function addWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function removeWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_ea755812(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
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

function sub_4ebbfeeb(?) {
    require calldata.size - 4 >= 32
    require stor5[msg.sender]
    require eth.balance(this.address)
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = targetTokenAddress
    mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[292] = owner
    mem[324] = block.timestamp
    mem[260] = 128
    mem[356] = 3
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg1, Array(len=3, data=mem[388 len 96]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
}

function swap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor5[msg.sender]
    require eth.balance(this.address)
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[260] = owner
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_3cec780c(?) {
    require calldata.size - 4 >= 64
    require stor5[msg.sender]
    require eth.balance(this.address)
    targetTokenAddress = arg2
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[260] = owner
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=mem[356 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_69f029d4(?) {
    require calldata.size - 4 >= 64
    require stor5[msg.sender]
    require eth.balance(this.address)
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[260] = arg1
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356] = ext_call.return_data[12 len 20]
    mem[388] = targetTokenAddress
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg2, Array(len=2, data=ext_call.return_data[12 len 20], targetTokenAddress), address(arg1), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function sub_dcf50262(?) {
    require calldata.size - 4 >= 32
    require stor5[msg.sender]
    require eth.balance(this.address)
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[260] = msg.sender
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356] = ext_call.return_data[12 len 20]
    mem[388] = targetTokenAddress
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args arg1, Array(len=2, data=ext_call.return_data[12 len 20], targetTokenAddress), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_c4ef3b10(?) {
    require calldata.size - 4 >= 32
    require stor5[msg.sender]
    require ext_code.size(sub_a2bafc1aAddress)
    staticcall sub_a2bafc1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a2bafc1aAddress)
    call sub_a2bafc1aAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = arg1
    mem[292] = owner
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1, Array(len=2, data=mem[388 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sub_7e5d1ec0(?) {
    require calldata.size - 4 >= 64
    require stor5[msg.sender]
    require ext_code.size(sub_a2bafc1aAddress)
    staticcall sub_a2bafc1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    targetTokenAddress = arg2
    require ext_code.size(sub_a2bafc1aAddress)
    call sub_a2bafc1aAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = arg1
    mem[292] = owner
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1, Array(len=2, data=mem[388 len 64]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sub_df94afb4(?) {
    require calldata.size - 4 >= 32
    require stor5[msg.sender]
    require ext_code.size(sub_a2bafc1aAddress)
    staticcall sub_a2bafc1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a2bafc1aAddress)
    call sub_a2bafc1aAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = targetTokenAddress
    mem[192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = ext_call.return_data[0]
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388] = sub_a2bafc1aAddress
    mem[420] = targetTokenAddress
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], Array(len=2, data=sub_a2bafc1aAddress, targetTokenAddress), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
}

function sub_8b82c616(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 5
    require stor5[msg.sender]
    require eth.balance(this.address)
    mem[96] = 2
    mem[64] = 192
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = targetTokenAddress
    idx = arg2
    while idx:
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 68] = owner
        mem[mem[64] + 100] = block.timestamp
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + mem[64] + 164] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg1, 128, owner, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
        _35 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _36 = mem[_35]
        require mem[_35] <= 4294967296
        require mem[_35] + 32 <= return_data.size
        require mem[_35 + mem[_35]] <= 4294967296 and mem[_35] + (32 * mem[_35 + mem[_35]]) + 32 <= return_data.size
        mem[_35 + ceil32(return_data.size)] = mem[_35 + mem[_35]]
        _40 = mem[_35 + _36]
        s = 0
        while s < 32 * _40:
            mem[s + _35 + ceil32(return_data.size) + 32] = mem[s + _35 + _36 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _40) + _35 + ceil32(return_data.size) + 32
        idx = idx - 1
        continue 
}

function sub_c61fb0c6(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 5
    require stor5[msg.sender]
    require eth.balance(this.address)
    mem[96] = 3
    mem[64] = 224
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = sub_a2bafc1aAddress
    mem[192] = targetTokenAddress
    idx = arg2
    while idx:
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 68] = owner
        mem[mem[64] + 100] = block.timestamp
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + mem[64] + 164] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg1, 128, owner, block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
        _36 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _37 = mem[_36]
        require mem[_36] <= 4294967296
        require mem[_36] + 32 <= return_data.size
        require mem[_36 + mem[_36]] <= 4294967296 and mem[_36] + (32 * mem[_36 + mem[_36]]) + 32 <= return_data.size
        mem[_36 + ceil32(return_data.size)] = mem[_36 + mem[_36]]
        _41 = mem[_36 + _37]
        s = 0
        while s < 32 * _41:
            mem[s + _36 + ceil32(return_data.size) + 32] = mem[s + _36 + _37 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _41) + _36 + ceil32(return_data.size) + 32
        idx = idx - 1
        continue 
}

function sub_ced6a710(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 5
    require stor5[msg.sender]
    require eth.balance(this.address)
    mem[96] = 2
    mem[64] = 192
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = targetTokenAddress
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 68] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 100] = block.timestamp
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = mem[96]
        s = 0
        while s < 32 * mem[96]:
            mem[s + mem[64] + 164] = mem[s + 128]
            s = s + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapETHForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args cd[36], 128, address(cd[((32 * idx) + cd[4] + 36)]), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
        if not ext_call.success:
        _35 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _36 = mem[_35]
        require mem[_35] <= 4294967296
        require mem[_35] + 32 <= return_data.size
        require mem[_35 + mem[_35]] <= 4294967296 and mem[_35] + (32 * mem[_35 + mem[_35]]) + 32 <= return_data.size
        mem[_35 + ceil32(return_data.size)] = mem[_35 + mem[_35]]
        _40 = mem[_35 + _36]
        s = 0
        while s < 32 * _40:
            mem[s + _35 + ceil32(return_data.size) + 32] = mem[s + _35 + _36 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _40) + _35 + ceil32(return_data.size) + 32
        s = floor32(_40) + 1
        continue 
}

function sub_59ba1a9d(?) {
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = 5
    require stor5[msg.sender]
    require ext_code.size(sub_a2bafc1aAddress)
    staticcall sub_a2bafc1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a2bafc1aAddress)
    call sub_a2bafc1aAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128] = sub_a2bafc1aAddress
    mem[160] = targetTokenAddress
    s = ext_call.return_data[0]
    idx = arg2
    while idx:
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = s
        mem[mem[64] + 100] = owner
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        t = 0
        while t < 32 * mem[96]:
            mem[t + mem[64] + 196] = mem[t + 128]
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, s, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
        _46 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_46]
        require mem[_46] <= 4294967296
        require mem[_46] + 32 <= return_data.size
        require mem[_46 + mem[_46]] <= 4294967296 and mem[_46] + (32 * mem[_46 + mem[_46]]) + 32 <= return_data.size
        mem[_46 + ceil32(return_data.size)] = mem[_46 + mem[_46]]
        _51 = mem[_46 + _47]
        s = 0
        while s < 32 * _51:
            mem[s + _46 + ceil32(return_data.size) + 32] = mem[s + _46 + _47 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _51) + _46 + ceil32(return_data.size) + 32
        mem[(32 * _51) + _46 + ceil32(return_data.size) + 36] = this.address
        require ext_code.size(sub_a2bafc1aAddress)
        staticcall sub_a2bafc1aAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _51) + _46 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        idx = idx - 1
        continue 
}

function sub_4f3022cd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 5
    require stor5[msg.sender]
    require ext_code.size(sub_a2bafc1aAddress)
    staticcall sub_a2bafc1aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a2bafc1aAddress)
    call sub_a2bafc1aAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[64] = 192
    mem[128] = sub_a2bafc1aAddress
    mem[160] = targetTokenAddress
    idx = 0
    s = ext_call.return_data[0]
    while idx < ('cd', 4).length:
        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = s
        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 132] = block.timestamp
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        t = 0
        while t < 32 * mem[96]:
            mem[t + mem[64] + 196] = mem[t + 128]
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], s, 160, address(cd[((32 * idx) + cd[4] + 36)]), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
        _46 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_46]
        require mem[_46] <= 4294967296
        require mem[_46] + 32 <= return_data.size
        require mem[_46 + mem[_46]] <= 4294967296 and mem[_46] + (32 * mem[_46 + mem[_46]]) + 32 <= return_data.size
        mem[_46 + ceil32(return_data.size)] = mem[_46 + mem[_46]]
        _51 = mem[_46 + _47]
        s = 0
        while s < 32 * _51:
            mem[s + _46 + ceil32(return_data.size) + 32] = mem[s + _46 + _47 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _51) + _46 + ceil32(return_data.size) + 32
        mem[(32 * _51) + _46 + ceil32(return_data.size) + 36] = this.address
        require ext_code.size(sub_a2bafc1aAddress)
        staticcall sub_a2bafc1aAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * _51) + _46 + ceil32(return_data.size) + 32] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
}



}
