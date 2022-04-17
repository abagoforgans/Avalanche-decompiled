contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint32 sub_67970540;

function sub_67970540(?) {
    require calldata.size - 4 >= 32
    return address(sub_67970540[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg2)
    staticcall arg2.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    address(sub_67970540[address(arg1)]) = arg2
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

function recover(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    stor1++
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor1++
    if tx.origin == msg.sender:
        revert with 0, 'only contracts'
    require arg3.length >= 64
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x42294bfe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.lpToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.vaultAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = ext_call.return_data[12 len 20]
    mem[32] = 2
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(sub_67970540[ext_call.return_data[12 len 20]]), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_67970540[ext_call.return_data[12 len 20]]))
    call address(sub_67970540[ext_call.return_data[12 len 20]]).removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[96] = 2
    mem[128] = address(cd[(arg3 + 36)])
    mem[160] = address(ext_call.return_data[0])
    mem[228] = address(sub_67970540[ext_call.return_data[12 len 20]])
    mem[260] = 0
    mem[192] = 68
    mem[228 len 28] = Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]])
    mem[224 len 4] = approve(address rg1, uint256 rg2)
    mem[292 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]]), uint32(sub_67970540[ext_call.return_data[12 len 20]]), 0
    mem[384 len 4] = 0
    call address(cd[(arg3 + 36)]) with:
       funct Mask(32, 224, block.timestamp) >> 224
         gas gas_remaining wei
        args 0, mem[356 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, '!safeApprove'
    mem[292] = return_data.size
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if not return_data.size:
        mem[ceil32(return_data.size) + 329] = address(sub_67970540[ext_call.return_data[12 len 20]])
        mem[ceil32(return_data.size) + 361] = -1
        mem[ceil32(return_data.size) + 293] = 68
        mem[ceil32(return_data.size) + 329 len 28] = Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]])
        mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 393 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]]), uint32(sub_67970540[ext_call.return_data[12 len 20]]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 485 len 4] = test266151307()
        call address(cd[(arg3 + 36)]) with:
           funct uint32(sub_67970540[ext_call.return_data[12 len 20]])
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 393] = return_data.size
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        '!safeApprove',
                        mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not return_data.size:
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 394] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 430] = 0
            mem[(2 * ceil32(return_data.size)) + 494] = this.address
            mem[(2 * ceil32(return_data.size)) + 526] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 462] = 160
            mem[(2 * ceil32(return_data.size)) + 558] = 2
            mem[(2 * ceil32(return_data.size)) + 590 len 0] = None
            require ext_code.size(address(sub_67970540[ext_call.return_data[12 len 20]]))
            call address(sub_67970540[ext_call.return_data[12 len 20]]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2958 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _2996 = mem[(2 * ceil32(return_data.size)) + _2958 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2958 + 394])] = mem[(2 * ceil32(return_data.size)) + _2958 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2958 + 394])]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _2996) + (4 * ceil32(return_data.size)) + 526 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2996) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[(32 * _2996) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _2996) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 425]:
                revert with 0, 
                            '!safeApprove',
                            mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 394] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 430] = 0
            mem[(2 * ceil32(return_data.size)) + 494] = this.address
            mem[(2 * ceil32(return_data.size)) + 526] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 462] = 160
            mem[(2 * ceil32(return_data.size)) + 558] = 2
            mem[(2 * ceil32(return_data.size)) + 590 len 0] = None
            require ext_code.size(address(sub_67970540[ext_call.return_data[12 len 20]]))
            call address(sub_67970540[ext_call.return_data[12 len 20]]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2960 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _2997 = mem[(2 * ceil32(return_data.size)) + _2960 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2960 + 394])] = mem[(2 * ceil32(return_data.size)) + _2960 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2960 + 394])]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _2997) + (4 * ceil32(return_data.size)) + 526 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2997) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[(32 * _2997) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _2997) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
    else:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 329] = address(sub_67970540[ext_call.return_data[12 len 20]])
        mem[ceil32(return_data.size) + 361] = -1
        mem[ceil32(return_data.size) + 293] = 68
        mem[ceil32(return_data.size) + 329 len 28] = Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]])
        mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
        mem[ceil32(return_data.size) + 393 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, sub_67970540[ext_call.return_data[12 len 20]]), uint32(sub_67970540[ext_call.return_data[12 len 20]]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[ceil32(return_data.size) + 485 len 4] = test266151307()
        call address(cd[(arg3 + 36)]) with:
           funct uint32(sub_67970540[ext_call.return_data[12 len 20]])
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 457 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 393] = return_data.size
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        '!safeApprove',
                        mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not return_data.size:
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 394] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 430] = 0
            mem[(2 * ceil32(return_data.size)) + 494] = this.address
            mem[(2 * ceil32(return_data.size)) + 526] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 462] = 160
            mem[(2 * ceil32(return_data.size)) + 558] = 2
            mem[(2 * ceil32(return_data.size)) + 590 len 0] = None
            require ext_code.size(address(sub_67970540[ext_call.return_data[12 len 20]]))
            call address(sub_67970540[ext_call.return_data[12 len 20]]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2966 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _3000 = mem[(2 * ceil32(return_data.size)) + _2966 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2966 + 394])] = mem[(2 * ceil32(return_data.size)) + _2966 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2966 + 394])]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _3000) + (4 * ceil32(return_data.size)) + 526 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _3000) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[(32 * _3000) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _3000) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 425]:
                revert with 0, 
                            '!safeApprove',
                            mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require ext_code.size(address(cd[(arg3 + 36)]))
            staticcall address(cd[(arg3 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address, mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 394] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 430] = 0
            mem[(2 * ceil32(return_data.size)) + 494] = this.address
            mem[(2 * ceil32(return_data.size)) + 526] = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 462] = 160
            mem[(2 * ceil32(return_data.size)) + 558] = 2
            mem[(2 * ceil32(return_data.size)) + 590 len 0] = None
            require ext_code.size(address(sub_67970540[ext_call.return_data[12 len 20]]))
            call address(sub_67970540[ext_call.return_data[12 len 20]]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 394 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 394
            require return_data.size >= 32
            _2968 = mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 394] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 394 len 4], ext_call.return_data[0 len 28] + 394]
            _3001 = mem[(2 * ceil32(return_data.size)) + _2968 + 394]
            mem[(4 * ceil32(return_data.size)) + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2968 + 394])] = mem[(2 * ceil32(return_data.size)) + _2968 + 426 len floor32(mem[(2 * ceil32(return_data.size)) + _2968 + 394])]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient Coins received'
            mem[(32 * _3001) + (4 * ceil32(return_data.size)) + 526 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _3001) + (4 * ceil32(return_data.size)) + 590 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, '!safeTransfer'
            mem[(32 * _3001) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _3001) + (4 * ceil32(return_data.size)) + 558]:
                    revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
